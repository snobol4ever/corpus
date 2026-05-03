// parser_prolog.sc — PARSER-PR: Prolog frontend in Snocone.
//
// Reads a Prolog source program from stdin via INPUT, runs the
// `Compiland` PATTERN to build a Prolog IR tree on the shared stack via
// Shift/Reduce, then dumps each tree via TDump.  After whitespace
// normalization the dumped form is byte-identical to scrip's existing
// Prolog-frontend `--dump-ir` output — that's the PARSER-PR gate.
//
// Naming policy (per RULES.md "Snocone parser style — names track the
// existing frontend"):
//   token classifiers   — mirror src/frontend/prolog/prolog_lex.h TK_*
//                         (lowercased: tk_atom, tk_qatom, tk_var, tk_int,
//                         tk_string, tk_dot, tk_lparen, tk_rparen, tk_comma)
//   non-terminals       — mirror src/frontend/prolog/prolog_parse.c
//                         (clause, primary, args, arg)
//   IR node tags        — mirror src/frontend/prolog/prolog_lower.c::expr_dump
//                         (E_CHOICE, E_CLAUSE, E_VAR, E_ILIT, E_QLIT, E_FNC)
//   cross-PARSER spine  — Compiland, Push/Pop/Top, tree/Tree/TDump
//                         (the only invented names; shared across all six
//                          parser_<lang>.sc files)
//
// Style invariant (per RULES.md): no goto/labels in this file.  Use
// Snocone structured flow (`while ((Line = INPUT)) { ... }`).  The legacy
// goto-shape in parser_snobol4.sc / parser_snocone.sc / parser_icon.sc is
// grandfathered; new parsers do not copy it.
//
// Rung PARSER-PR-2 (CURRENT): facts (PR-0/PR-1) AND rules with a
// single goal in the body.
//   Bare fact:    foo.            → (STMT :subj (E_CHOICE foo/0 (E_CLAUSE foo/0)))
//   Compound fact: foo(a, b).     → (STMT :subj (E_CHOICE foo/2
//                                     (E_CLAUSE foo/2 (E_FNC a) (E_FNC b))))
//   Rule, atomic body:  foo :- bar.
//                       → (STMT :subj (E_CHOICE foo/0
//                            (E_CLAUSE foo/0 (E_FNC bar))))
//   Rule, compound body: foo(X) :- bar(X).
//                       → (STMT :subj (E_CHOICE foo/1
//                            (E_CLAUSE foo/1 (E_VAR _V0)
//                                            (E_FNC bar (E_VAR _V0)))))
//
//   The E_CHOICE/E_CLAUSE key uses HEAD ARITY ONLY (`foo/0` for
//   `foo :- bar.`, NOT the total clause-child count).  This matches
//   prolog_lower.c which keys on (functor, head-arity) and lowers the
//   body as additional E_CLAUSE children.
//
//   Args/goal-args supported: lowercase atoms (TK_ATOM), single-quoted
//                   atoms (TK_QATOM, lowered same as TK_ATOM), integers
//                   (TK_INT), double-quoted strings (TK_STRING — interned
//                   as atom, matching prolog_lower.c), variables (TK_VAR
//                   — slot-numbered _V0, _V1, ... per-clause; head and
//                   body share the same scope).
//
// Out-of-scope at PR-2 (deferred to later rungs):
//   - Conjunction / disjunction in body (`a, b` / `a ; b`):  PR-3.
//   - Nested compound args (`foo(bar(a)).` / `foo :- bar(baz(a)).`):
//     PR-1.5 / PR-3+.  At PR-2 the body GOAL can be compound with flat
//     args (`bar(X)`) — that is one level deep, the args are flat —
//     but compound-as-arg is still disallowed.
//   - Same-functor multi-clause E_CHOICE merging
//       foo(a). foo(b). → ONE E_CHOICE with TWO E_CLAUSE children.
//     prolog_lower.c does this in a post-pass keyed on (functor,arity).
//     PARSER-PR-N fixtures avoid same-functor cases (each clause uses a
//     distinct functor) so per-clause STMT trees are byte-equivalent.
//     The merging pass becomes its own rung when it surfaces as a real
//     gate failure on a corpus program.
//   - Anonymous variables `_`: prolog_lower.c assigns anon slots in a
//     reverse-walk pass (foo(_, _) yields _V1, _V0).  Fixtures avoid
//     pure-anon cases until that pass is implemented.
//   - Directives (`:- goal.`): PR-6.
//   - Operators (`is`, arithmetic): PR-5.
//
// Sibling LANG rungs: PR-7..PR-9.  The existing src/frontend/prolog/
// remains the read-only oracle.

//-----------------------------------------------------------------------
// Token classifiers — Prolog surface syntax.
//
// Naming: tk_* mirror the TK_* enum values in
// src/frontend/prolog/prolog_lex.h.
//-----------------------------------------------------------------------

ws_one = ANY(' ' tab);
ws_run = SPAN(' ' tab);
ws_opt = (SPAN(' ' tab) | epsilon);

// Lowercase-start identifier — TK_ATOM (unquoted form).
tk_atom_first = ANY(&LCASE);
tk_atom_rest  = SPAN(digits &UCASE &LCASE '_');
tk_atom       = (tk_atom_first (tk_atom_rest | epsilon));

// Single-quoted atom — TK_ATOM (quoted form).  prolog_lex.h treats
// 'foo' identically to foo for atom-classification.  Body in _qatom_body.
tk_qatom = ("'" BREAK("'") . _qatom_body "'");

// Uppercase-start or '_'-prefixed identifier — TK_VAR / TK_ANON.
// PR-1 collapses anon into var (no anon slot pass yet).
tk_var_first = ANY(&UCASE '_');
tk_var_rest  = SPAN(digits &UCASE &LCASE '_');
tk_var       = (tk_var_first (tk_var_rest | epsilon));

// Integer literal — TK_INT.
tk_int = SPAN(digits);

// Double-quoted string — TK_STRING.  Body in _str_body.
tk_string = ('"' BREAK('"') . _str_body '"');

// Punctuation — TK_DOT, TK_LPAREN, TK_RPAREN, TK_COMMA.
tk_dot    = '.';
tk_lparen = '(';
tk_rparen = ')';
tk_comma  = ',';

// Clause neck — TK_NECK (`:-`).  Per prolog_lex.h, this is the rule
// separator; same token also fronts directives at top of program but
// PR-2 only handles the rule form.
tk_neck   = ':-';

//-----------------------------------------------------------------------
// Per-clause variable scope.
//
// var_table maps source variable-name → slot index ("_V0", "_V1", ...).
// var_next is the next unassigned slot.  Both reset at clause start by
// reset_var_scope().  Same name within one clause yields the same slot;
// distinct names get fresh slots in first-occurrence order — matching
// prolog_lower.c's VarScope behavior on named (non-anonymous) vars.
//-----------------------------------------------------------------------

var_table = TABLE();
var_next  = 0;

function reset_var_scope() {
    var_table = TABLE();
    var_next  = 0;
    reset_var_scope = .dummy;
    nreturn;
}

// resolve_var(name) — return canonical "_V<slot>" for `name`, allocating
// a fresh slot on first occurrence within the current clause.
function resolve_var(name, slot) {
    slot = var_table[name];
    if (~DIFFER(slot)) {
        slot = var_next;
        var_table[name] = slot;
        var_next = var_next + 1;
    }
    resolve_var = '_V' slot;
    return;
}

//-----------------------------------------------------------------------
// Argument-list construction.
//
// Each arg's IR-tree is pushed onto the shared stack as we recognize it.
// At end of args, finish_compound(name) pops them back, builds the
// E_CLAUSE / E_CHOICE envelope, and pushes one STMT.  arg_count tracks
// the running count for the arity component of "name/N".
//-----------------------------------------------------------------------

arg_count = 0;

function reset_arg_count() {
    arg_count = 0;
    reset_arg_count = .dummy;
    nreturn;
}

// push_arg_atom(text) — args of form lowercase / "..." / '...' all lower
// to (E_FNC <text>) — a 0-arg compound — per prolog_lower.c.
function push_arg_atom(text) {
    Push(tree('E_FNC', text));
    arg_count = arg_count + 1;
    push_arg_atom = .dummy;
    nreturn;
}

function push_arg_int(text) {
    Push(tree('E_ILIT', text));
    arg_count = arg_count + 1;
    push_arg_int = .dummy;
    nreturn;
}

function push_arg_var(name) {
    Push(tree('E_VAR', resolve_var(name)));
    arg_count = arg_count + 1;
    push_arg_var = .dummy;
    nreturn;
}

//-----------------------------------------------------------------------
// Tree-building helpers — clause assembly.
//
// Two-phase build:
//   Phase 1 (head parsing): push N head-arg trees; capture head_name
//                           and head_arity (= arg_count snapshot).
//   Phase 2 (optional body): if `:-` is seen, parse one goal which
//                            pushes one tree; record body_present = 1.
//   Finalize: pop (head_arity + body_present) trees, build E_CLAUSE
//             with key "head_name/head_arity", wrap in :subj / E_CHOICE
//             / STMT.
//
// At PR-0/PR-1 (fact only) the body_present flag stays 0 and the
// behavior is identical to the previous build_fact_atom /
// build_fact_compound.  PR-2 adds the rule path.
//-----------------------------------------------------------------------

head_name    = '';
head_arity   = 0;
body_present = 0;

function snapshot_head(name) {
    head_name    = name;
    head_arity   = arg_count;
    body_present = 0;
    snapshot_head = .dummy;
    nreturn;
}

function mark_body() {
    body_present = 1;
    mark_body = .dummy;
    nreturn;
}

// build_clause — final clause assembly.  Pops head_arity head-arg trees
// and (if body_present) one body-goal tree, in reverse Push order.
// Constructs E_CLAUSE with head args first, body goal last; wraps in
// the :subj / E_CHOICE / STMT envelope.
//
// The E_CHOICE/E_CLAUSE key uses head_arity ONLY (e.g. "foo/0" for
// `foo :- bar.`), NOT the total clause-child count.  This matches
// prolog_lower.c which keys on (functor, head-arity) and lowers the
// body as additional E_CLAUSE children.
function build_clause(key, total, parts, i, body_goal, clause_node) {
    key = head_name '/' head_arity;
    total = head_arity + body_present;
    parts = ARRAY(total + 1);
    i = total;
    while (i > 0) {
        parts[i] = Pop();
        i = i - 1;
    }
    clause_node = Tree('E_CLAUSE', key, 0);
    i = 1;
    while (LE(i, total)) {
        Append(clause_node, parts[i]);
        i = i + 1;
    }
    Push(Tree('STMT', '', 1,
              Tree(':subj', '', 1,
                   Tree('E_CHOICE', key, 1, clause_node))));
    build_clause = .dummy;
    nreturn;
}

//-----------------------------------------------------------------------
// `arg` / `args` — argument grammar.  Mirrors prolog_parse.c parse_args
// at PR-2 scope (flat args only — no nested compound args yet, no
// operators).
//
//   arg  :=  TK_ATOM | TK_QATOM | TK_INT | TK_STRING | TK_VAR
//   args :=  arg (',' ws_opt arg)*
//
// Order matters in `arg`: tk_atom must come before tk_var-class checks
// because both can start at a letter; in this grammar tk_atom requires
// lowercase-first and tk_var requires uppercase-or-underscore-first, so
// the alternatives are disjoint at the first character — order is
// presentation only.  tk_int is digit-only.
//-----------------------------------------------------------------------

arg = ( tk_atom    . _arg_text   . *push_arg_atom(_arg_text)
      | tk_qatom                 . *push_arg_atom(_qatom_body)
      | tk_string                . *push_arg_atom(_str_body)
      | tk_int     . _arg_text   . *push_arg_int(_arg_text)
      | tk_var     . _arg_text   . *push_arg_var(_arg_text)
      );

args = ( arg ARBNO( ws_opt tk_comma ws_opt arg ) );

//-----------------------------------------------------------------------
// `goal` — one body goal, used in rule body position.
//
// At PR-2 scope, a goal is exactly the shape that `arg` would produce
// when given a compound or atom — except a goal may NOT be a bare
// integer or bare variable (those aren't callable).  The goal pushes
// exactly one IR tree onto the stack.
//
// Forms (tried in order — longer prefix first):
//   1. functor(args)  — compound goal with N flat args.
//   2. functor        — bare-atom goal (no args).
//
// The compound goal pushes a (E_FNC functor <arg-trees>) tree.  This
// is built via push_compound_goal() which pops the arg trees off the
// stack and assembles them into an E_FNC node.
//-----------------------------------------------------------------------

function push_compound_goal(name, n, fnc_node, args_arr, i) {
    n = arg_count;
    args_arr = ARRAY(n + 1);
    i = n;
    while (i > 0) {
        args_arr[i] = Pop();
        i = i - 1;
    }
    fnc_node = Tree('E_FNC', name, 0);
    i = 1;
    while (LE(i, n)) {
        Append(fnc_node, args_arr[i]);
        i = i + 1;
    }
    Push(fnc_node);
    push_compound_goal = .dummy;
    nreturn;
}

function push_atom_goal(name) {
    Push(tree('E_FNC', name));
    push_atom_goal = .dummy;
    nreturn;
}

// `goal` parses one body goal.  arg_count is reset before any args
// are pushed for the compound form, so the post-args push_compound_goal
// pops exactly the right number.  reset_arg_count fires after the
// functor-name capture to keep a single source of truth.
goal = ( tk_atom . _goal_name ws_opt tk_lparen
           epsilon . *reset_arg_count()
           ws_opt args ws_opt tk_rparen
           . *push_compound_goal(_goal_name)
       | tk_atom . _goal_name
           . *push_atom_goal(_goal_name)
       );

//-----------------------------------------------------------------------
// `head` — one head term in clause-head position.  Mirrors
// prolog_parse.c::parse_primary restricted to the head grammar.
//
// Three forms (tried in order — longer prefix first):
//   1. functor(args)  — N-ary compound head (N >= 1)
//   2. functor()      — explicit-empty-parens 0-arity head (lenient)
//   3. functor        — bare 0-arity head
//   4. "string"       — quoted-string head, interned as atom
//
// `epsilon . *reset_var_scope() . *reset_arg_count()` resets the
// per-clause state before any args are pushed.  `*snapshot_head(name)`
// captures the head functor name + arity (= arg_count at that moment)
// for build_clause to consume later.
//-----------------------------------------------------------------------

head = ( epsilon . *reset_var_scope() . *reset_arg_count()
         ( tk_atom . _head_text ws_opt tk_lparen ws_opt args ws_opt tk_rparen
             . *snapshot_head(_head_text)
         | tk_atom . _head_text ws_opt tk_lparen ws_opt tk_rparen
             . *snapshot_head(_head_text)
         | tk_atom . _head_text
             . *snapshot_head(_head_text)
         | tk_string
             . *snapshot_head(_str_body)
         )
       );

//-----------------------------------------------------------------------
// `clause` — one Prolog clause.  Two forms:
//   1. head '.'              — fact (PR-0/PR-1).
//   2. head ':-' goal '.'    — rule with single-goal body (PR-2).
//
// In both cases `*build_clause()` runs at the end to assemble the
// STMT envelope from the snapshotted head + (optional) body goal.
// Comments (`%` to end of line) and blank lines are skipped at the
// driver level, not here.
//-----------------------------------------------------------------------

clause = ( head ws_opt
           ( tk_neck ws_opt goal ws_opt . *mark_body()
           | epsilon
           )
           ws_opt tk_dot
           . *build_clause()
         );

//-----------------------------------------------------------------------
// Compiland — the canonical cross-PARSER spine.  See parser_snobol4.sc
// top-of-file note about the `*Command` indirection bug; we inline
// `clause` here for the same reason.
//-----------------------------------------------------------------------

Compiland = nPush()
            ARBNO( nInc() ws_opt clause ws_opt (ANY(nl) | epsilon) )
            reduce("'Parse'", 'nTop()')
            nPop();

//-----------------------------------------------------------------------
// Driver loop — accumulate full source into Src, run Compiland once,
// then TDump each STMT child.  No goto/labels (per RULES.md style
// invariant for new parser_<lang>.sc files).
//-----------------------------------------------------------------------

InitCounter();
InitStack();

// Accumulate full source into Src buffer.  Skip Prolog `%` comment lines
// at ingestion time so the Compiland pattern stays clean.
Src = '';
while ((Line = INPUT)) {
    if (~(Line ? (POS(0) ws_opt '%'))) {
        Src = Src Line nl;
    }
}

// Single Compiland match against the full source.
ok = (Src ? Compiland);

// Pop the Parse tree and emit one line per STMT child.  Empty programs
// (no clause heads ever pushed) are valid: TDump emits nothing, matching
// the existing frontend's empty `--dump-ir` output for inputs the oracle
// rejects (`X.`, `42.`).
if (ok) {
    ptree = Pop();
    if (DIFFER(ptree)) {
        i = 1;
        n_kids = n(ptree);
        while (LE(i, n_kids)) {
            TDump(c(ptree)[i]);
            i = i + 1;
        }
    }
}

_parser_pr_done = '';
