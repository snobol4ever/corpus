// parser_prolog.sc — PARSER-PR: Prolog frontend in Snocone (rung PR-3).
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
//                  E_CHOICE, E_CLAUSE, E_VAR, E_ILIT, E_FNC, ...
//   spine      — Compiland, shift, reduce, nPush/nInc/nTop/nPop are the
//                only invented (cross-PARSER) names.
//
// Rung PR-3: facts AND rules with conjunction (`,`) / disjunction (`;`)
// in the body.  See GOAL-PARSER-PROLOG.md for the IR shape table.

//-----------------------------------------------------------------------
// Type-name strings.  shift() takes BARE name; reduce() takes QUOTED
// name (semantic.sc EVALs it, so it must already carry its own quotes).
//-----------------------------------------------------------------------

sq       = "'";
s_FNC    = 'E_FNC';
s_ILIT   = 'E_ILIT';
r_Parse  = sq 'Parse'   sq;
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
tk_dot    = '.';
tk_lparen = '(';
tk_rparen = ')';
tk_comma  = ',';
tk_semi   = ';';
tk_neck   = ':-';

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
// N-ary reductions count via nPush/nInc/nTop/nPop.  Named-value parents
// use *reduce_compound/conj/disj as the only non-shift semantic actions.
//-----------------------------------------------------------------------

// arg — one argument in a compound term.
arg = (
        shift(tk_int, s_ILIT)
      | shift(tk_atom, s_FNC)
      | tk_qatom  . *push_atom_body(_qatom_body)
      | tk_string . *push_atom_body(_str_body)
      | tk_var . _arg_text . *push_var(_arg_text)
      );

// args — comma-separated arg list, n-ary counted.
args = ( nInc() arg ARBNO( ws_opt tk_comma ws_opt nInc() arg ) );

// simple_goal — bare atom (E_FNC name) leaf, OR compound (E_FNC name a1..aN).
simple_goal = (
        tk_atom . _goal_name ws_opt tk_lparen
            nPush() ws_opt args ws_opt tk_rparen
            . *reduce_compound(_goal_name)
            nPop()
      | shift(tk_atom, s_FNC)
      );

// conj — N>=1 simple_goals joined by `,`.
conj = (
        nPush()
            nInc() simple_goal
            ARBNO( ws_opt tk_comma ws_opt nInc() simple_goal )
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
