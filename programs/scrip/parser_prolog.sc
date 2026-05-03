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
// Rung PARSER-PR-1 (CURRENT): bare-atom AND compound facts.
//   Bare:        foo.            → (STMT :subj (E_CHOICE foo/0 (E_CLAUSE foo/0)))
//   Compound:    foo(a, b).      → (STMT :subj (E_CHOICE foo/2
//                                     (E_CLAUSE foo/2 (E_FNC a) (E_FNC b))))
//   Args supported: lowercase atoms (TK_ATOM), single-quoted atoms
//                   (TK_QATOM, lowered same as TK_ATOM), integers
//                   (TK_INT), double-quoted strings (TK_STRING — interned
//                   as atom, matching prolog_lower.c), variables (TK_VAR
//                   — slot-numbered _V0, _V1, ... per-clause).
//
// Out-of-scope at PR-1 (deferred to later rungs):
//   - Nested compound args:  foo(bar(a)).  → PR-1.5 / PR-2.
//   - Same-functor multi-clause E_CHOICE merging:
//       foo(a). foo(b). → ONE E_CHOICE with TWO E_CLAUSE children.
//     prolog_lower.c does this in a post-pass keyed on (functor,arity).
//     PARSER-PR-1 fixtures avoid same-functor cases (each fact uses a
//     distinct functor) so per-clause STMT trees are byte-equivalent.
//     The merging pass becomes its own rung when it surfaces as a real
//     gate failure on a corpus program.
//   - Anonymous variables `_`: prolog_lower.c assigns anon slots in a
//     reverse-walk pass (foo(_, _) yields _V1, _V0).  PARSER-PR-1
//     fixtures avoid pure-anon cases until that pass is implemented.
//
// Sibling LANG rungs: PR-4..PR-6.  The existing src/frontend/prolog/
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
// Tree-building helpers — final clause assembly.
//
// build_fact_atom(name) — bare 0-arity fact.  PR-0 shape preserved.
// build_fact_compound(name) — N-ary fact, N = arg_count, with the N
//     arg-trees currently sitting on top of the stack (push_arg_*
//     having Pushed them in left-to-right order).
//-----------------------------------------------------------------------

function build_fact_atom(name, key) {
    key = name '/0';
    Push(Tree('STMT', '', 1,
              Tree(':subj', '', 1,
                   Tree('E_CHOICE', key, 1,
                        tree('E_CLAUSE', key)))));
    build_fact_atom = .dummy;
    nreturn;
}

// Build an E_CLAUSE node holding the N args currently on top of stack
// (in the order they were Pushed).  Then wrap in E_CHOICE / :subj / STMT.
function build_fact_compound(name, key, clause_node, args, i) {
    key = name '/' arg_count;
    // Pop the N args back; top of stack is the last-pushed (last) arg.
    args = ARRAY(arg_count);
    i = arg_count;
    while (i > 0) {
        args[i] = Pop();
        i = i - 1;
    }
    // Construct E_CLAUSE with the args as children, in original order.
    clause_node = Tree('E_CLAUSE', key, 0);
    i = 1;
    while (LE(i, arg_count)) {
        Append(clause_node, args[i]);
        i = i + 1;
    }
    Push(Tree('STMT', '', 1,
              Tree(':subj', '', 1,
                   Tree('E_CHOICE', key, 1, clause_node))));
    build_fact_compound = .dummy;
    nreturn;
}

//-----------------------------------------------------------------------
// `arg` / `args` — argument grammar.  Mirrors prolog_parse.c parse_args
// at PR-1 scope (flat args only — no nested compounds, no operators).
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
// `primary` — one head term in clause-head position.  Mirrors
// prolog_parse.c::parse_primary at PR-1 scope.
//
// Three forms (tried in order — longer prefix first):
//   1. functor(args)  — N-ary compound fact (N >= 1)
//   2. functor()      — explicit-empty-parens 0-arity (lenient — matches
//                       oracle, same shape as bare)
//   3. functor        — bare 0-arity fact
//   4. "string"       — quoted-string head, interned as atom
//
// Variables and integers cannot be clause heads (prolog_parse.c rejects
// them silently); they fall through and the whole clause fails to match,
// producing empty output that agrees with the oracle.
//
// `epsilon . *reset_var_scope() . *reset_arg_count()` resets the
// per-clause state before any args are pushed.
//-----------------------------------------------------------------------

primary = ( epsilon . *reset_var_scope() . *reset_arg_count()
            ( tk_atom . _head_name ws_opt tk_lparen ws_opt args ws_opt tk_rparen
                . *build_fact_compound(_head_name)
            | tk_atom . _head_name ws_opt tk_lparen ws_opt tk_rparen
                . *build_fact_atom(_head_name)
            | tk_atom . _head_name
                . *build_fact_atom(_head_name)
            | tk_string
                . *build_fact_atom(_str_body)
            )
          );

//-----------------------------------------------------------------------
// `clause` — one Prolog clause.  At PR-1: a primary followed by `.`.
// Comments (`%` to end of line) and blank lines are skipped at the
// driver level, not here.
//-----------------------------------------------------------------------

clause = ( primary ws_opt tk_dot );

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
