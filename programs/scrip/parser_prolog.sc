// parser_prolog.sc — PARSER-PR: Prolog frontend in Snocone (rung PR-5).
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

//-----------------------------------------------------------------------
// Type-name strings.  shift() takes BARE name; reduce() takes QUOTED
// name (semantic.sc EVALs it, so it must already carry its own quotes).
//-----------------------------------------------------------------------

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

//-----------------------------------------------------------------------
// Token classifiers.  These are PATTERNS, not parsing functions.
// Names mirror src/frontend/prolog/prolog_lex.h TK_* (lowercased).
//-----------------------------------------------------------------------

ws_one    = ANY(' ' tab);
ws_run    = SPAN(' ' tab);
ws_opt    = (SPAN(' ' tab) | epsilon);

// Lowercase-start identifier — TK_ATOM (unquoted form).
tk_atom_first = ANY(&LCASE);
tk_atom_rest  = SPAN(digits &UCASE &LCASE '_');
tk_atom       = (tk_atom_first (tk_atom_rest | epsilon));

// Single-quoted atom — TK_ATOM (quoted form): same lowering as bare atom.
tk_qatom = ("'" BREAK("'") . _qatom_body "'");

// Uppercase-start or '_'-prefixed identifier — TK_VAR.
tk_var_first = ANY(&UCASE '_');
tk_var_rest  = SPAN(digits &UCASE &LCASE '_');
tk_var       = (tk_var_first (tk_var_rest | epsilon));

// Integer literal — TK_INT.
tk_int = SPAN(digits);

// Double-quoted string — TK_STRING (interned as atom: same lowering as TK_ATOM).
tk_string = ('"' BREAK('"') . _str_body '"');

// Punctuation tokens — surrounded by ws_opt at use sites.
tk_dot      = '.';
tk_lparen   = '(';
tk_rparen   = ')';
tk_comma    = ',';
tk_semi     = ';';
tk_lbracket = '[';
tk_rbracket = ']';
tk_pipe     = '|';
tk_neck     = ':-';

// Arithmetic / unify operator tokens.  Surrounding whitespace is optional
// for symbolic ops; required around the alphabetic `is` so it's a word
// boundary (not a prefix of `isnumber`/`isfoo`).
op_eq     = (ws_opt '=' ws_opt);
op_pls    = (ws_opt '+' ws_opt);
op_mns    = (ws_opt '-' ws_opt);
op_mul    = (ws_opt '*' ws_opt);
op_div    = (ws_opt '/' ws_opt);
op_is     = (ws_run 'is' ws_run);

//-----------------------------------------------------------------------
// Comment skipper.  Prolog `%` to end-of-line.  Pattern, not function.
//-----------------------------------------------------------------------

comment   = ('%' BREAK(nl) (nl | RPOS(0)));
trivia    = ((SPAN(' ' tab nl) | epsilon) ARBNO(comment (SPAN(' ' tab nl) | epsilon)));

//-----------------------------------------------------------------------
// Per-clause variable scope.  Tree-building semantic — pure state.
//-----------------------------------------------------------------------

var_table = TABLE();
var_next  = 0;

function reset_var_scope() {
    var_table = TABLE();
    var_next  = 0;
    reset_var_scope = .dummy;
    nreturn;
}

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
// Tree-building semantics.  Pure tree-builders, called from inline
// `*func()` actions inside patterns.  Used only when shift/reduce
// cannot express the tree directly — variable slot resolution, string
// bodies, named-value compound nodes, and the clause envelope.
//-----------------------------------------------------------------------

function push_var(name) {
    Push(tree('E_VAR', resolve_var(name)));
    push_var = .dummy;
    nreturn;
}

function push_atom_body(body) {
    Push(tree('E_FNC', body));
    push_atom_body = .dummy;
    nreturn;
}

// push_nil — push the empty-list atom (E_FNC []) onto the stack.
// Used both for `[]` literal and as the implicit tail when a list
// has no `|` clause.
function push_nil() {
    Push(tree('E_FNC', '[]'));
    push_nil = .dummy;
    nreturn;
}

// push_neg_int — push (E_ILIT -<digits>) for unary-minus on an integer
// literal.  Matches prolog_lower.c which folds a leading `-` directly
// into the integer literal value rather than emitting a 1-arg E_FNC `-`.
function push_neg_int(digits) {
    Push(tree('E_ILIT', '-' digits));
    push_neg_int = .dummy;
    nreturn;
}

// reduce_is — pop two trees and build (E_FNC is L R).  `is` lowers
// to a named-functor compound (value = "is"), so Reduce() can't do it
// directly (Reduce forces empty value).  Two children, fixed.
function reduce_is(rhs, lhs, fnc_node) {
    rhs = Pop();
    lhs = Pop();
    fnc_node = Tree('E_FNC', 'is', 0);
    Append(fnc_node, lhs);
    Append(fnc_node, rhs);
    Push(fnc_node);
    reduce_is = .dummy;
    nreturn;
}

// reduce_list — top of stack is `tail`, then nTop() element trees
// below it (deepest = first element).  Build right-spined cons cells
// using functor `.` (the canonical Prolog list cell), each shape:
//     (E_FNC . <elem> <rest>)
// Walk elements from last-to-first, folding rest := (E_FNC . elem rest).
// Final `rest` replaces all consumed trees on the stack.
function reduce_list(n, kids, i, tail, cons_node) {
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
    reduce_list = .dummy;
    nreturn;
}

function reduce_compound(name, n, fnc_node, kids, i) {
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
    reduce_compound = .dummy;
    nreturn;
}

function reduce_conj(n, fnc_node, kids, i) {
    n = nTop();
    if (LE(n, 1)) { reduce_conj = .dummy; nreturn; }
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
    reduce_conj = .dummy;
    nreturn;
}

function reduce_disj(n, fnc_node, kids, i) {
    n = nTop();
    if (LE(n, 1)) { reduce_disj = .dummy; nreturn; }
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
    reduce_disj = .dummy;
    nreturn;
}

//-----------------------------------------------------------------------
// Clause envelope semantics.  build_clause runs once per clause and
// pops (head_args + body?) trees into the (STMT :subj (E_CHOICE k
// (E_CLAUSE k ...))) outer wrap.  The clause key uses head_arity only.
// Top-level (E_FNC ,) is flattened into separate E_CLAUSE children.
//-----------------------------------------------------------------------

head_name    = '';
head_arity   = 0;
body_present = 0;

function snapshot_head(name) {
    head_name    = name;
    head_arity   = nTop();
    body_present = 0;
    snapshot_head = .dummy;
    nreturn;
}

function mark_body() {
    body_present = 1;
    mark_body = .dummy;
    nreturn;
}

function build_clause(key, parts, i, body_tree, clause_node, bk, bn) {
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
    Push(Tree('STMT', '', 1,
              Tree(':subj', '', 1,
                   Tree('E_CHOICE', key, 1, clause_node))));
    build_clause = .dummy;
    nreturn;
}

//-----------------------------------------------------------------------
// Grammar — pure patterns.  No parsing functions.  Leaves use shift().
// Kind-only n-ary parents use reduce() (OPSYN-bound `&`).  Named-value
// parents use *reduce_compound / *reduce_is / *reduce_conj / *reduce_disj
// / *reduce_list — Reduce() forces empty value, so named functors need
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
//-----------------------------------------------------------------------

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
args_tail = ( ws_opt tk_comma ws_opt nInc() *unify_expr (*args_tail | epsilon) );

// list_elem — non-recursive primary alternatives + *list.  Used as the
// element pattern inside list brackets.  Mirrors the same atomic forms
// available in primary, expanded literally so that `list` doesn't have
// to reference primary by name (which would be a forward reference back
// to a thing that contains *list — works, but explicit copy keeps the
// FW-3 picture simple).
list_elem = (
        shift(tk_int, s_ILIT)
      | shift(tk_atom, s_FNC)
      | tk_qatom  . *push_atom_body(_qatom_body)
      | tk_string . *push_atom_body(_str_body)
      | tk_var . _le_text . *push_var(_le_text)
      | *list
      );

// list — Prolog list syntax.
//   []                       → (E_FNC [])
//   [e1, e2, ..., eN]        → right-spined cons with `.` functor and
//                              terminal (E_FNC []).
//   [e1, ..., eN | tail]    → same right-spine, terminal replaced by `tail`.
list = (
        tk_lbracket ws_opt
        ( tk_rbracket . *push_nil()
        | nPush()
              nInc() list_elem
              ARBNO( ws_opt tk_comma ws_opt nInc() list_elem )
              ( ws_opt tk_pipe ws_opt list_elem
              | epsilon . *push_nil()
              )
              ws_opt tk_rbracket
              . *reduce_list()
          nPop()
        )
      );

// primary — bottom of the expression ladder.  Order of alternatives:
//   1. Compound call `name(args)` — must precede bare-atom alt so the
//      `(` is consumed as part of the compound.
//   2. tk_int / tk_atom / tk_qatom / tk_string / tk_var leaves.
//   3. Parenthesized expression `( unify_expr )` — full ladder reset.
//   4. List (mutual recursion via *list).
//   5. Negative integer literal `-<digits>` — FALLBACK so binary `-`
//      between two primaries is preferred over folding `-N` into RHS.
primary = (
        tk_atom . _p_name ws_opt tk_lparen
            nPush() ws_opt args ws_opt tk_rparen
            . *reduce_compound(_p_name)
            nPop()
      | shift(tk_int, s_ILIT)
      | shift(tk_atom, s_FNC)
      | tk_qatom  . *push_atom_body(_qatom_body)
      | tk_string . *push_atom_body(_str_body)
      | tk_var . _p_text . *push_var(_p_text)
      | tk_lparen ws_opt *unify_expr ws_opt tk_rparen
      | *list
      | '-' tk_int . _p_negi . *push_neg_int(_p_negi)
      );

// mul_expr — left-assoc */.  Each operator iteration reduces the top
// two stack trees into (E_MUL ...) or (E_DIV ...) immediately, so the
// stack ends with the final left-associative result.  Uses the OPSYN-
// bound reduce() for kind-only 2-ary nodes.
mul_expr = (
        primary
        ARBNO(
            ( op_mul primary reduce(r_MUL, 2)
            | op_div primary reduce(r_DIV, 2)
            )
        )
      );

// add_expr — left-assoc +-.  Same shape as mul_expr.
add_expr = (
        mul_expr
        ARBNO(
            ( op_pls mul_expr reduce(r_ADD, 2)
            | op_mns mul_expr reduce(r_SUB, 2)
            )
        )
      );

// is_expr — `X is Expr` is non-associative; one optional `is` clause.
// `is` lowers to a NAMED-FUNCTOR compound (E_FNC is L R), so we use
// *reduce_is (Reduce() forces empty value).
is_expr = (
        add_expr
        ( op_is add_expr . *reduce_is()
        | epsilon
        )
      );

// unify_expr — `X = Expr` is non-associative; one optional `=` clause.
// Builds kind-only (E_UNIFY L R) via the canonical reduce(r_UNIFY, 2).
unify_expr = (
        is_expr
        ( op_eq is_expr reduce(r_UNIFY, 2)
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
            ARBNO( ws_opt tk_comma ws_opt nInc() body_goal )
            . *reduce_conj()
        nPop()
      );

// disj — N>=1 conj branches joined by `;`.
disj = (
        nPush()
            nInc() conj
            ARBNO( ws_opt tk_semi ws_opt nInc() conj )
            . *reduce_disj()
        nPop()
      );

// body — top-level body entry point.
body = disj;

// head — clause head term.  Head args counted via nPush/nInc/nTop/nPop;
// snapshot_head reads nTop() as the head arity.
head = (
        epsilon . *reset_var_scope()
        nPush()
        (
            tk_atom . _head_text ws_opt tk_lparen ws_opt args ws_opt tk_rparen
                . *snapshot_head(_head_text)
          | tk_atom . _head_text ws_opt tk_lparen ws_opt tk_rparen
                . *snapshot_head(_head_text)
          | tk_atom . _head_text
                . *snapshot_head(_head_text)
          | tk_string
                . *snapshot_head(_str_body)
        )
        nPop()
      );

// clause — fact or rule.
clause = (
        head ws_opt
        ( tk_neck ws_opt body ws_opt . *mark_body()
        | epsilon
        )
        ws_opt tk_dot
        . *build_clause()
      );

// Compiland — the ONE PATTERN, matched ONCE against the entire source.
Compiland = nPush()
            ARBNO( trivia nInc() clause trivia )
            reduce(r_Parse, r_nTop)
            nPop();

//-----------------------------------------------------------------------
// Driver.  Read entire stdin into Src, run Compiland ONCE, dump each
// STMT child.  No goto.  No per-line parsing loop.
//-----------------------------------------------------------------------

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
