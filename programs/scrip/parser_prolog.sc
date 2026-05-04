// parser_prolog.sc — PARSER-PR: Prolog frontend in Snocone (rung PR-6).
//
// Reads the entire Prolog source, runs ONE Compiland PATTERN against it,
// and emits one IR tree per clause via TDump.  Output is byte-equal
// (after whitespace normalization) to the existing Prolog frontend's
// `--dump-ir`, which is the PARSER-PR gate.
//
// Style mandates (per RULES.md and pivot directives):
//   1. NO goto/labels — only structured Snocone control (`while`, `if/else`).
//   2. NO functions used for parsing — functions are only tree-builders or
//      semantics.  Parsing happens in patterns.
//   3. Shift/Reduce go through the OPSYN'd helpers `shift(p, t)` and
//      `reduce(t, n)` from semantic.sc (which are bound as `~` and `&`
//      operators; scrip's parser doesn't honour OPSYN in static infix
//      position so we use the function-call form, which is the same
//      OPSYN alias dispatched by name).
//   4. ONE Compiland pattern, matched ONCE against the entire source
//      buffer.  No per-line driver loop.
//   5. nPush/nInc/nTop/nPop count children for n-ary reductions.
//   6. Pattern-builder convention (beauty.sno style):
//        - Capital `PR_xxx`  — the BUILDER (compile-time pattern producer).
//        - Lowercase `xxx`   — the RUNTIME fn (called from the deferred
//          `*xxx(...)` action at match time).
//      Use sites in the grammar look like `epsilon . *Push_var(p_text)` not
//      `. *Push_var(p_text)`.  The PR_* block hides the `epsilon . *xxx`
//      boilerplate and gives the grammar a Reduce()-like reading.
//
// Naming policy (per .github/RULES.md):
//   tk_*       — tokens, mirror src/frontend/prolog/prolog_lex.h TK_*
//   ir tags    — mirror src/frontend/prolog/prolog_lower.c::expr_dump
//                  E_CHOICE, E_CLAUSE, E_VAR, E_ILIT, E_FNC, E_UNIFY,
//                  E_ADD, E_SUB, E_MUL, E_DIV.
//   spine      — Compiland, shift, reduce, nPush/nInc/nTop/nPop are the
//                only invented (cross-PARSER) names.
//
// Rungs landed:
//   PR-0..PR-2  — atoms, facts, rules with single-goal body.
//   PR-3        — body conjunction (`,`) / disjunction (`;`).
//   PR-4        — Prolog lists (`[H|T]`, `[a,b,c]`, nested).
//   PR-5        — arithmetic (+ - * /), `is`, unification (`=`), parens.
//                 Negative integer literals (-N folded into E_ILIT).
//                 Nested compound args come along for free (primary
//                 absorbs both arg and simple_goal).
//   PR-6        — top-level directives `:- Goal.` (no head, no
//                 E_CHOICE/E_CLAUSE wrap, body raw under :subj).

//=============================================================================
// Type-name strings.  shift() takes BARE name; reduce() takes QUOTED
// name (semantic.sc EVALs it, so it must already carry its own quotes).
//=============================================================================
sq       = "'";
s_FNC    = 'E_FNC';
s_ILIT   = 'E_ILIT';
r_Parse  = sq 'Parse'   sq;
r_UNIFY  = sq 'E_UNIFY' sq;
r_ADD    = sq 'E_ADD'   sq;
r_SUB    = sq 'E_SUB'   sq;
r_MUL    = sq 'E_MUL'   sq;
r_DIV    = sq 'E_DIV'   sq;
r_nTop   = 'nTop()';

//=============================================================================
// Token classifiers.  These are PATTERNS, not parsing functions.
// Names mirror src/frontend/prolog/prolog_lex.h TK_* (lowercased).
// Whitespace tokens follow beauty.sc convention:
//   White — required inter-token whitespace (SPAN(' ' tab))
//   Gray  — optional inter-token whitespace (*White | epsilon)
// Prolog has no continuation-line glue (unlike SNOBOL4), so White is
// simpler than beauty.sc's nl-`+`/-`.` form: just ' ' and tab.  Newlines
// and `%` comments are absorbed at the Compiland top level via `trivia`.
//=============================================================================
White = SPAN(' ' tab);
Gray  = *White | epsilon;

// Lowercase-start identifier — TK_ATOM (unquoted form).
Atom_first = ANY(&LCASE);
Atom_rest  = SPAN(digits &UCASE &LCASE '_');
Atom       = (Atom_first (Atom_rest | epsilon));

// Single-quoted atom — TK_ATOM (quoted form): same lowering as bare atom.
Qatom = ("'" BREAK("'") . q_body "'");

// Uppercase-start or '_'-prefixed identifier — TK_VAR.
Var_first = ANY(&UCASE '_');
Var_rest  = SPAN(digits &UCASE &LCASE '_');
Var       = (Var_first (Var_rest | epsilon));

// Integer literal — TK_INT.
Int = SPAN(digits);

// Double-quoted string — TK_STRING (interned as atom: same lowering as TK_ATOM).
Str = ('"' BREAK('"') . s_body '"');

// Punctuation and operator tokens — beauty.sc $'x' idiom.  Each token
// knows its own surrounding-whitespace policy and the grammar body
// references them directly with no inline ws.
$'('  = *Gray '('  *Gray;            // open paren: optional ws both sides
$')'  = *Gray ')'  *Gray;            // close paren: optional ws both sides
$'['  = *Gray '['  *Gray;            // open bracket: optional ws both sides
$']'  = *Gray ']'  *Gray;            // close bracket: optional ws both sides
$','  = *Gray ','  *Gray;            // separator: optional ws both sides
$';'  = *Gray ';'  *Gray;            // disj: optional ws both sides
$'|'  = *Gray '|'  *Gray;            // list-tail bar: optional ws both sides
$'.'  = *Gray '.';                   // clause terminator: ws before only
                                     //   (trivia handles inter-clause ws)
$':-' = *Gray ':-' *Gray;            // neck: optional ws both sides
$'='  = *Gray '='  *Gray;            // unify: optional ws both sides
$'+'  = *Gray '+'  *Gray;            // arith: optional ws both sides
$'-'  = *Gray '-'  *Gray;            // arith: optional ws both sides
$'*'  = *Gray '*'  *Gray;            // arith: optional ws both sides
$'/'  = *Gray '/'  *Gray;            // arith: optional ws both sides
$'is' = *White 'is' *White;          // alphabetic op: required ws both sides
                                     //   (word boundary vs `isfoo`)
//=============================================================================
// Comment skipper.  Prolog `%` to end-of-line.  Pattern, not function.
//=============================================================================
comment   = ('%' BREAK(nl) (nl | RPOS(0)));
trivia    = ((SPAN(' ' tab nl) | epsilon) ARBNO(comment (SPAN(' ' tab nl) | epsilon)));

//=============================================================================
// Per-clause variable scope.  Tree-building semantic — pure state.
//=============================================================================
var_table = TABLE();
var_next  = 0;

function Reset_var_scope() {
    var_table = TABLE();
    var_next  = 0;
    Reset_var_scope = .dummy;
    nreturn;
}

function Resolve_var(name, slot) {
    slot = var_table[name];
    if (~DIFFER(slot)) {
        slot = var_next;
        var_table[name] = slot;
        var_next = var_next + 1;
    }
    Resolve_var = '_V' slot;
    return;
}

//=============================================================================
// Tree-building semantics.  Pure tree-builders, called from inline
// `*func()` actions inside patterns.  Used only when shift/reduce
// cannot express the tree directly — variable slot resolution, string
// bodies, named-value compound nodes, and the clause envelope.
//=============================================================================
// Push_var — push (E_VAR _Vk) for named variables.  Bare `_` is special:
// each occurrence allocates its OWN fresh slot in a second pass that runs
// after the clause is fully parsed (mirrors prolog_lower.c::assign_clause_
// anon_slots).  At parse time we push the placeholder (E_VAR _ANON); the
// real slot is assigned by Assign_anon_slots in Build_clause / Build_
// directive once max named-var slot is known.
function Push_var(name) {
    if (IDENT(name, '_')) {
        Push(tree('E_VAR', '_ANON'));
        Push_var = .dummy;
        nreturn;
    }
    Push(tree('E_VAR', Resolve_var(name)));
    Push_var = .dummy;
    nreturn;
}

// Assign_anon_slots — walk tree x; replace each (E_VAR _ANON) node's value
// with a fresh _Vk slot starting at var_next.  Mirrors prolog_lower.c::
// assign_clause_anon_slots Pass-2 logic: that C code uses an explicit
// LIFO stack — push args[0..arity-1], pop from top — so children are
// visited in REVERSE order.  We replicate that by recursing into c[n],
// c[n-1], ..., c[1] (last-to-first) at every node.  Mutates v(x) in
// place; recurses into children.
function Assign_anon_slots(x, i, kid) {
    if (~DIFFER(x)) { Assign_anon_slots = .dummy; nreturn; }
    if (IDENT(t(x), 'E_VAR') IDENT(v(x), '_ANON')) {
        v(x) = '_V' var_next;
        var_next = var_next + 1;
    }
    i = n(x);
    while (i > 0) {
        kid = c(x)[i];
        Assign_anon_slots(kid);
        i = i - 1;
    }
    Assign_anon_slots = .dummy;
    nreturn;
}

function Push_atom_body(body) {
    Push(tree('E_FNC', body));
    Push_atom_body = .dummy;
    nreturn;
}

// push_nil — push the empty-list atom (E_FNC []) onto the stack.
// Used both for `[]` literal and as the implicit tail when a list
// has no `|` clause.
function Push_nil() {
    Push(tree('E_FNC', '[]'));
    Push_nil = .dummy;
    nreturn;
}

// push_neg_int — push (E_ILIT -<digits>) for unary-minus on an integer
// literal.  Matches prolog_lower.c which folds a leading `-` directly
// into the integer literal value rather than emitting a 1-arg E_FNC `-`.
function Push_neg_int(digits) {
    Push(tree('E_ILIT', '-' digits));
    Push_neg_int = .dummy;
    nreturn;
}

// reduce_is — pop two trees and build (E_FNC is L R).  `is` lowers
// to a named-functor compound (value = "is"), so Reduce() can't do it
// directly (Reduce forces empty value).  Two children, fixed.
function Reduce_is(rhs, lhs, fnc_node) {
    rhs = Pop();
    lhs = Pop();
    fnc_node = Tree('E_FNC', 'is', 0);
    Append(fnc_node, lhs);
    Append(fnc_node, rhs);
    Push(fnc_node);
    Reduce_is = .dummy;
    nreturn;
}

// reduce_list — top of stack is `tail`, then nTop() element trees
// below it (deepest = first element).  Build right-spined cons cells
// using functor `.` (the canonical Prolog list cell), each shape:
//     (E_FNC . <elem> <rest>)
// Walk elements from last-to-first, folding rest := (E_FNC . elem rest).
// Final `rest` replaces all consumed trees on the stack.
function Reduce_list(n, kids, i, tail, cons_node) {
    n    = nTop();
    tail = Pop();
    kids = ARRAY(n + 1);
    i = n;
    while (i > 0) {
        kids[i] = Pop();
        i = i - 1;
    }
    i = n;
    while (i > 0) {
        cons_node = Tree('E_FNC', '.', 0);
        Append(cons_node, kids[i]);
        Append(cons_node, tail);
        tail = cons_node;
        i = i - 1;
    }
    Push(tail);
    Reduce_list = .dummy;
    nreturn;
}

function Reduce_compound(name, n, fnc_node, kids, i) {
    n = nTop();
    kids = ARRAY(n + 1);
    i = n;
    while (i > 0) {
        kids[i] = Pop();
        i = i - 1;
    }
    fnc_node = Tree('E_FNC', name, 0);
    i = 1;
    while (LE(i, n)) {
        Append(fnc_node, kids[i]);
        i = i + 1;
    }
    Push(fnc_node);
    Reduce_compound = .dummy;
    nreturn;
}

function Reduce_conj(n, fnc_node, kids, i) {
    n = nTop();
    if (LE(n, 1)) { Reduce_conj = .dummy; nreturn; }
    kids = ARRAY(n + 1);
    i = n;
    while (i > 0) {
        kids[i] = Pop();
        i = i - 1;
    }
    fnc_node = Tree('E_FNC', ',', 0);
    i = 1;
    while (LE(i, n)) {
        Append(fnc_node, kids[i]);
        i = i + 1;
    }
    Push(fnc_node);
    Reduce_conj = .dummy;
    nreturn;
}

function Reduce_disj(n, fnc_node, kids, i) {
    n = nTop();
    if (LE(n, 1)) { Reduce_disj = .dummy; nreturn; }
    kids = ARRAY(n + 1);
    i = n;
    while (i > 0) {
        kids[i] = Pop();
        i = i - 1;
    }
    fnc_node = Tree('E_FNC', ';', 0);
    i = 1;
    while (LE(i, n)) {
        Append(fnc_node, kids[i]);
        i = i + 1;
    }
    Push(fnc_node);
    Reduce_disj = .dummy;
    nreturn;
}

//=============================================================================
// Clause envelope semantics.  build_clause runs once per clause and
// pops (head_args + body?) trees into the (STMT :subj (E_CHOICE k
// (E_CLAUSE k ...))) outer wrap.  The clause key uses head_arity only.
// Top-level (E_FNC ,) is flattened into separate E_CLAUSE children.
//=============================================================================
head_name    = '';
head_arity   = 0;
body_present = 0;

function Snapshot_head(name) {
    head_name    = name;
    head_arity   = nTop();
    body_present = 0;
    Snapshot_head = .dummy;
    nreturn;
}

function Mark_body() {
    body_present = 1;
    Mark_body = .dummy;
    nreturn;
}

function Build_clause(key, parts, i, body_tree, clause_node, bk, bn) {
    key = head_name '/' head_arity;
    body_tree = ;
    if (GT(body_present, 0)) {
        body_tree = Pop();
    }
    parts = ARRAY(head_arity + 1);
    i = head_arity;
    while (i > 0) {
        parts[i] = Pop();
        i = i - 1;
    }
    clause_node = Tree('E_CLAUSE', key, 0);
    i = 1;
    while (LE(i, head_arity)) {
        Append(clause_node, parts[i]);
        i = i + 1;
    }
    if (GT(body_present, 0)) {
        if (IDENT(t(body_tree), 'E_FNC') IDENT(v(body_tree), ',')) {
            bn = n(body_tree);
            bk = 1;
            while (LE(bk, bn)) {
                Append(clause_node, c(body_tree)[bk]);
                bk = bk + 1;
            }
        }
        else {
            Append(clause_node, body_tree);
        }
    }
    // Pass 2: assign fresh _Vk slots to each (E_VAR _ANON) placeholder.
    // Mirror prolog_lower.c::assign_clause_anon_slots which walks `head`
    // first, then each body[i] separately.  Inside each walk, args are
    // visited in reverse via stack pop — Assign_anon_slots handles that.
    // In our flattened layout, c(clause_node)[1..head_arity] are head
    // args; c(clause_node)[head_arity+1..n] are body elements.  Walking
    // head args in REVERSE order (bk=head_arity downto 1) replicates the
    // C macro PA_WALK_ASSIGN(cl->head) which would push then pop them
    // in reverse, then visit each body[i] individually in source order.
    bk = head_arity;
    while (bk > 0) {
        Assign_anon_slots(c(clause_node)[bk]);
        bk = bk - 1;
    }
    bn = n(clause_node);
    bk = head_arity + 1;
    while (LE(bk, bn)) {
        Assign_anon_slots(c(clause_node)[bk]);
        bk = bk + 1;
    }
    Push(Tree('STMT', '', 1,
              Tree(':subj', '', 1,
                   Tree('E_CHOICE', key, 1, clause_node))));
    Build_clause = .dummy;
    nreturn;
}

// build_directive — assemble a top-level `:- Goal.` form.  Pops one
// body tree and pushes (STMT :subj <body>).  No E_CHOICE / E_CLAUSE
// wrapper, no clause-key, no top-level `,` flattening — the body
// expression is wrapped raw under :subj.  This matches prolog_lower.c
// directive lowering exactly.
function Build_directive(body_tree) {
    body_tree = Pop();
    // Pass 2: assign fresh _Vk slots to each (E_VAR _ANON) placeholder in
    // body, picking up after named vars (var_next) — same as Build_clause.
    Assign_anon_slots(body_tree);
    Push(Tree('STMT', '', 1,
              Tree(':subj', '', 1, body_tree)));
    Build_directive = .dummy;
    nreturn;
}

//=============================================================================
// Grammar — pure patterns.  No parsing functions.  Leaves use shift().
// Kind-only n-ary parents use reduce() (OPSYN-bound `&`).  Named-value
// parents use *Reduce_compound / *Reduce_is / *Reduce_conj / *Reduce_disj
// / *Reduce_list — Reduce() forces empty value, so named functors need
// a tree-builder helper.
//
// Expression ladder (tightest first):
//   primary      atoms, vars, ints, parens, lists, compound calls
//   mul_expr     left-assoc * /
//   add_expr     left-assoc + -
//   is_expr      X is Expr  → (E_FNC is L R)        [single optional]
//   unify_expr   X = Expr   → (E_UNIFY L R)         [single optional]
//
// arg = unify_expr (top of expression ladder; same expr is used in
// compound args, list elements, and body-goal positions).  Body-level
// conj `,` and disj `;` are looser than the entire expression ladder
// and are matched at the body / conj / disj layers above.
//
// FW-3 trigger is `ARBNO(*Q)` — deferred reference as immediate ARBNO
// body.  Every Q used inside ARBNO below is a literal name reference
// (substituted at pattern-build time), so deferred calls inside Q fire
// normally.  list_elem stays as a literal alternation copy of primary's
// non-recursive forms because `list` is forward-referenced from primary
// via *list (mutual recursion).
//=============================================================================
// args — comma-separated arg list at the call/list-element level.
// Each arg is a full expression (unify_expr — top of ladder).
// Forward reference via *unify_expr — definition is below.
//
// Uses TAIL-RECURSION (args_tail) instead of ARBNO because the ARBNO
// body would need to contain *unify_expr (a deferred forward reference);
// `*Q` deferred refs inside ARBNO trigger FW-3 (deferred actions inside
// Q get suppressed, so multi-arg compounds silently produce empty
// output).  Tail-recursion via *args_tail is the parser_snocone-style
// pattern that the FW-3 doc shows works correctly (see Expr1 / Expr0).
args      = ( nInc() *unify_expr (*args_tail | epsilon) );
args_tail = ( $',' nInc() *unify_expr (*args_tail | epsilon) );

// list_elem — non-recursive primary alternatives + *list.  Used as the
// element pattern inside list brackets.  Mirrors the same atomic forms
// available in primary, expanded literally so that `list` doesn't have
// to reference primary by name (which would be a forward reference back
// to a thing that contains *list — works, but explicit copy keeps the
// FW-3 picture simple).
list_elem = (
        shift(Int, s_ILIT)
      | shift(Atom, s_FNC)
      | Qatom  epsilon . *Push_atom_body(q_body)
      | Str epsilon . *Push_atom_body(s_body)
      | Var . le_text epsilon . *Push_var(le_text)
      | *list
      );

// list — Prolog list syntax.
//   []                       → (E_FNC [])
//   [e1, e2, ..., eN]        → right-spined cons with `.` functor and
//                              terminal (E_FNC []).
//   [e1, ..., eN | tail]    → same right-spine, terminal replaced by `tail`.
list = (
        $'['
        ( $']' epsilon . *Push_nil()
        | nPush()
              nInc() list_elem
              ARBNO( $',' nInc() list_elem )
              ( $'|' list_elem
              | epsilon epsilon . *Push_nil()
              )
              $']'
              epsilon . *Reduce_list()
          nPop()
        )
      );

// primary — bottom of the expression ladder.  Order of alternatives:
//   1. Compound call `name(args)` — must precede bare-atom alt so the
//      `(` is consumed as part of the compound.
//   2. Int / Atom / Qatom / Str / Var leaves.
//   3. Parenthesized expression `( unify_expr )` — full ladder reset.
//   4. List (mutual recursion via *list).
//   5. Negative integer literal `-<digits>` — FALLBACK so binary `-`
//      between two primaries is preferred over folding `-N` into RHS.
primary = (
        Atom . p_name $'('
            nPush() args $')'
            epsilon . *Reduce_compound(p_name)
            nPop()
      | shift(Int, s_ILIT)
      | shift(Atom, s_FNC)
      | Qatom  epsilon . *Push_atom_body(q_body)
      | Str epsilon . *Push_atom_body(s_body)
      | Var . p_text epsilon . *Push_var(p_text)
      | $'(' *unify_expr $')'
      | *list
      | '-' Int . p_negi epsilon . *Push_neg_int(p_negi)
      );

// mul_expr — left-assoc */.  Each operator iteration reduces the top
// two stack trees into (E_MUL ...) or (E_DIV ...) immediately, so the
// stack ends with the final left-associative result.  Uses the OPSYN-
// bound reduce() for kind-only 2-ary nodes.
mul_expr = (
        primary
        ARBNO(
            ( $'*' primary reduce(r_MUL, 2)
            | $'/' primary reduce(r_DIV, 2)
            )
        )
      );

// add_expr — left-assoc +-.  Same shape as mul_expr.
add_expr = (
        mul_expr
        ARBNO(
            ( $'+' mul_expr reduce(r_ADD, 2)
            | $'-' mul_expr reduce(r_SUB, 2)
            )
        )
      );

// is_expr — `X is Expr` is non-associative; one optional `is` clause.
// `is` lowers to a NAMED-FUNCTOR compound (E_FNC is L R), so we use
// *Reduce_is (Reduce() forces empty value).
is_expr = (
        add_expr
        ( $'is' add_expr epsilon . *Reduce_is()
        | epsilon
        )
      );

// unify_expr — `X = Expr` is non-associative; one optional `=` clause.
// Builds kind-only (E_UNIFY L R) via the canonical reduce(r_UNIFY, 2).
unify_expr = (
        is_expr
        ( $'=' is_expr reduce(r_UNIFY, 2)
        | epsilon
        )
      );

// body_goal — one element of a body conjunction.  Body goals are
// expressions at unify precedence (= is body-level), so body_goal
// IS unify_expr.
body_goal = unify_expr;

// conj — N>=1 body_goals joined by `,`.
conj = (
        nPush()
            nInc() body_goal
            ARBNO( $',' nInc() body_goal )
            epsilon . *Reduce_conj()
        nPop()
      );

// disj — N>=1 conj branches joined by `;`.
disj = (
        nPush()
            nInc() conj
            ARBNO( $';' nInc() conj )
            epsilon . *Reduce_disj()
        nPop()
      );

// body — top-level body entry point.
body = disj;

// head — clause head term.  Head args counted via nPush/nInc/nTop/nPop;
// snapshot_head reads nTop() as the head arity.
head = (
        epsilon . *Reset_var_scope()
        nPush()
        (
            Atom . h_text $'(' args $')'
                epsilon . *Snapshot_head(h_text)
          | Atom . h_text $'(' $')'
                epsilon . *Snapshot_head(h_text)
          | Atom . h_text
                epsilon . *Snapshot_head(h_text)
          | Str
                epsilon . *Snapshot_head(s_body)
        )
        nPop()
      );

// clause — fact or rule.
clause = (
        head
        ( $':-' body epsilon . *Mark_body()
        | epsilon
        )
        $'.'
        epsilon . *Build_clause()
      );

// directive — top-level `:- Goal.` form.  Resets the per-clause var
// scope before parsing the body (matching prolog_lower.c which scopes
// vars per top-level form).  The body expression is wrapped raw under
// (STMT :subj ...) — no E_CHOICE / E_CLAUSE / clause-key envelope, no
// top-level `,` flattening.
directive = (
        $':-' epsilon . *Reset_var_scope()
        body $'.'
        epsilon . *Build_directive()
      );

// top_form — one top-level form: directive (`:- Goal.`) tried first
// because it starts with `:-`, then clause (which starts with a head
// token).  The first-token disjointness means order is presentation-
// only, but try directive first because `:-` is the more specific
// prefix.
top_form = (directive | clause);

// Compiland — the ONE PATTERN, matched ONCE against the entire source.
Compiland = nPush()
            ARBNO( trivia nInc() top_form trivia )
            reduce(r_Parse, r_nTop)
            nPop();

//=============================================================================
// Driver.  Read entire stdin into Src, run Compiland ONCE, dump each
// STMT child.  No goto.  No per-line parsing loop.
//=============================================================================
InitCounter();
InitStack();

Src = '';
while ((Line = INPUT)) {
    Src = Src Line nl;
}

ok = (Src ? Compiland);

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
