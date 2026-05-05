// parser_prolog.sc — PARSER-PR: Prolog pattern-based frontend in Snocone.
//
// ONE Compiland PATTERN matched once against the entire source; emits one
// IR tree per clause/directive via TDump.  Byte-identical (whitespace-
// normalized) to scrip's existing Prolog frontend --dump-ir output.
//
// Naming: non-terminals from ISO/IEC 13211-1 BNF; IR tags from ir.h E_*;
// whitespace: $'  ' = required, $' ' = optional (beauty.sno convention).
// Rungs: PR-0..PR-6 (atoms, facts, rules, conj, disj, lists, arith, directives).
//
// Pair-shape convention (canonical across all PARSER-* parsers):
//   - lowercase worker function: side-effect, sets self to .dummy, nreturns.
//   - Capitalized companion function: returns the pattern fragment that fires
//     the worker at match time (`epsilon . *worker()` or EVAL form for args).
//   - Grammar references the Capitalized companion only.
/*====================================================================================================================*/
E_FNC    = "'E_FNC'";   E_ILIT   = "'E_ILIT'";   E_UNIFY  = "'E_UNIFY'";
E_ADD    = "'E_ADD'";   E_SUB    = "'E_SUB'";
E_MUL    = "'E_MUL'";   E_DIV    = "'E_DIV'";
E_Parse  = "'Parse'";
/*====================================================================================================================*/
Block      = '/*' ARBNO(BREAK('*') ANY('*')) '/';
White      = (  SPAN(' ' tab) FENCE(  '%' BREAK(nl)
                                   |  Block
                                   |  epsilon
                                   )
             |  '%' BREAK(nl)
             |  Block
             );
Gray       = White | epsilon;
$' '       = Gray;
$'  '      = White;
/*====================================================================================================================*/
// Token classifiers — PATTERNS mirroring prolog_lex.h TK_* names.
Atom_first = ANY(&LCASE);
Atom_rest  = SPAN(digits &UCASE &LCASE '_');
Atom       = (Atom_first (Atom_rest | epsilon));
Qatom      = ("'" BREAK("'") . q_body "'");
Var_first  = ANY(&UCASE '_');
Var_rest   = SPAN(digits &UCASE &LCASE '_');
Var        = (Var_first (Var_rest | epsilon));
Int        = SPAN(digits);
Str        = ('"' BREAK('"') . s_body '"');
/*--------------------------------------------------------------------------------------------------------------------*/
$'('   =       '('  $' ';  $')'  = $' ' ')';
$'['   =       '['  $' ';  $']'  = $' ' ']';
$','   = $' '  ','  $' ';  $';'  = $' ' ';' $' ';
$'|'   = $' '  '|'  $' ';
$'.'   = $' '  '.';
$':-'  = $' '  ':-' $' ';  $'='  = $' ' '='  $' ';
$'+'   = $' '  '+'  $' ';  $'-'  = $' ' '-'  $' ';
$'*'   = $' '  '*'  $' ';  $'/'  = $' ' '/'  $' ';
$'is'  = $'  ' 'is' $'  ';
/*====================================================================================================================*/
trivia   = ARBNO(White | nl);
/*====================================================================================================================*/
// Per-clause variable scope.
var_table = TABLE();
var_next  = 0;
function reset_var_scope() {
    var_table = TABLE();
    var_next  = 0;
    reset_var_scope = .dummy;
    nreturn;
}
Reset_var_scope = epsilon . *reset_var_scope();
/*--------------------------------------------------------------------------------------------------------------------*/
// resolve_var — plain helper, called from push_var; never embedded in patterns.
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
/*--------------------------------------------------------------------------------------------------------------------*/
function push_var(varname, name) {
    name = $varname;
    if (IDENT(name, '_')) {
        Push(tree('E_VAR', '_ANON'));
        push_var = .dummy;
        nreturn;
    }
    Push(tree('E_VAR', resolve_var(name)));
    push_var = .dummy;
    nreturn;
}
function Push_var(varname) {
    Push_var = EVAL("epsilon . thx . *push_var('" varname "')");
    return;
}
/*--------------------------------------------------------------------------------------------------------------------*/
// assign_anon_slots — walk tree x replacing each (E_VAR _ANON) with fresh _Vk.
// Children visited in reverse order to mirror prolog_lower.c::assign_clause_anon_slots.
// Plain helper — never embedded in patterns; no companion needed.
function assign_anon_slots(x, i, kid) {
    if (~DIFFER(x)) { assign_anon_slots = .dummy; nreturn; }
    if (IDENT(t(x), 'E_VAR') IDENT(v(x), '_ANON')) {
        v(x) = '_V' var_next;
        var_next = var_next + 1;
    }
    i = n(x);
    while (i > 0) {
        kid = c(x)[i];
        assign_anon_slots(kid);
        i = i - 1;
    }
    assign_anon_slots = .dummy;
    nreturn;
}
/*--------------------------------------------------------------------------------------------------------------------*/
function push_atom_body(varname) {
    Push(tree('E_FNC', $varname));
    push_atom_body = .dummy;
    nreturn;
}
function Push_atom_body(varname) {
    Push_atom_body = EVAL("epsilon . thx . *push_atom_body('" varname "')");
    return;
}
/*--------------------------------------------------------------------------------------------------------------------*/
function push_nil() {
    Push(tree('E_FNC', '[]'));
    push_nil = .dummy;
    nreturn;
}
Push_nil = epsilon . *push_nil();
/*--------------------------------------------------------------------------------------------------------------------*/
function push_neg_int(varname) {
    Push(tree('E_ILIT', '-' $varname));
    push_neg_int = .dummy;
    nreturn;
}
function Push_neg_int(varname) {
    Push_neg_int = EVAL("epsilon . thx . *push_neg_int('" varname "')");
    return;
}
/*--------------------------------------------------------------------------------------------------------------------*/
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
Reduce_is = epsilon . *reduce_is();
/*--------------------------------------------------------------------------------------------------------------------*/
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
Reduce_list = epsilon . *reduce_list();
/*--------------------------------------------------------------------------------------------------------------------*/
function reduce_compound(varname, name, n, fnc_node, kids, i) {
    name = $varname;
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
function Reduce_compound(varname) {
    Reduce_compound = EVAL("epsilon . thx . *reduce_compound('" varname "')");
    return;
}
/*--------------------------------------------------------------------------------------------------------------------*/
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
Reduce_conj = epsilon . *reduce_conj();
/*--------------------------------------------------------------------------------------------------------------------*/
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
Reduce_disj = epsilon . *reduce_disj();
/*====================================================================================================================*/
head_name    = '';
head_arity   = 0;
body_present = 0;
function snapshot_head(varname) {
    head_name    = $varname;
    head_arity   = nTop();
    body_present = 0;
    snapshot_head = .dummy;
    nreturn;
}
function Snapshot_head(varname) {
    Snapshot_head = EVAL("epsilon . thx . *snapshot_head('" varname "')");
    return;
}
/*--------------------------------------------------------------------------------------------------------------------*/
function mark_body() {
    body_present = 1;
    mark_body = .dummy;
    nreturn;
}
Mark_body = epsilon . *mark_body();
/*--------------------------------------------------------------------------------------------------------------------*/
function build_clause(key, parts, i, body_tree, clause_node, bk, bn) {
    key = head_name '/' head_arity;
    body_tree = ;
    if (GT(body_present, 0)) body_tree = Pop();
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
        } else Append(clause_node, body_tree);
    }
    bk = head_arity;
    while (bk > 0) {
        assign_anon_slots(c(clause_node)[bk]);
        bk = bk - 1;
    }
    bn = n(clause_node);
    bk = head_arity + 1;
    while (LE(bk, bn)) {
        assign_anon_slots(c(clause_node)[bk]);
        bk = bk + 1;
    }
    Push(Tree('STMT', '', 1,
              Tree(':subj', '', 1,
                   Tree('E_CHOICE', key, 1, clause_node))));
    build_clause = .dummy;
    nreturn;
}
Build_clause = epsilon . *build_clause();
/*--------------------------------------------------------------------------------------------------------------------*/
function build_directive(body_tree) {
    body_tree = Pop();
    assign_anon_slots(body_tree);
    Push(Tree('STMT', '', 1,
              Tree(':subj', '', 1, body_tree)));
    build_directive = .dummy;
    nreturn;
}
Build_directive = epsilon . *build_directive();
/*====================================================================================================================*/
// Grammar — pure patterns.  Expression ladder (tightest -> loosest):
//   primary -> mul_expr -> add_expr -> is_expr -> unify_expr -> conj -> disj
// Tail-recursion (args/args_tail) avoids ARBNO around forward refs (FW-3).
args      = ( nInc() *unify_expr FENCE(*args_tail | epsilon) );
args_tail = ( $',' nInc() *unify_expr FENCE(*args_tail | epsilon) );
/*--------------------------------------------------------------------------------------------------------------------*/
list_elem = (   shift(Int,  'E_ILIT')
            |   shift(Atom, 'E_FNC')
            |   Qatom            Push_atom_body('q_body')
            |   Str              Push_atom_body('s_body')
            |   Var . le_text    Push_var('le_text')
            |   *list
            );
/*--------------------------------------------------------------------------------------------------------------------*/
list = (    $'['
            FENCE(
              $']'                    Push_nil
            | nPush()
                  nInc() list_elem
                  ARBNO( $',' nInc() list_elem )
                  FENCE( $'|' list_elem
                       | epsilon           Push_nil
                       )
                  $']'
                                       Reduce_list
              nPop()
            )
       );
/*--------------------------------------------------------------------------------------------------------------------*/
primary = (   Atom . p_name $'('
                  nPush() args $')'
                                      Reduce_compound('p_name')
              nPop()
          |   shift(Int,  'E_ILIT')
          |   shift(Atom, 'E_FNC')
          |   Qatom                   Push_atom_body('q_body')
          |   Str                     Push_atom_body('s_body')
          |   Var . p_text            Push_var('p_text')
          |   $'(' *unify_expr $')'
          |   *list
          |   $' ' '-' Int . p_negi    Push_neg_int('p_negi')
          );
/*--------------------------------------------------------------------------------------------------------------------*/
mul_expr  = (   primary
                ARBNO(
                    FENCE( $'*' primary reduce(E_MUL, 2)
                         | $'/' primary reduce(E_DIV, 2)
                         )
                )
            );
/*--------------------------------------------------------------------------------------------------------------------*/
add_expr  = (   mul_expr
                ARBNO(
                    FENCE( $'+' mul_expr reduce(E_ADD, 2)
                         | $'-' mul_expr reduce(E_SUB, 2)
                         )
                )
            );
/*--------------------------------------------------------------------------------------------------------------------*/
is_expr   = (   add_expr
                FENCE( $'is' add_expr    Reduce_is
                     | epsilon
                     )
            );
/*--------------------------------------------------------------------------------------------------------------------*/
unify_expr = (  is_expr
                FENCE( $'=' is_expr reduce(E_UNIFY, 2)
                     | epsilon
                     )
             );
/*--------------------------------------------------------------------------------------------------------------------*/
body_goal = unify_expr;
/*--------------------------------------------------------------------------------------------------------------------*/
conj = (    nPush()
                nInc() body_goal
                ARBNO( $',' nInc() body_goal )
                                   Reduce_conj
            nPop()
        );
/*--------------------------------------------------------------------------------------------------------------------*/
disj = (    nPush()
                nInc() conj
                ARBNO( $';' nInc() conj )
                                   Reduce_disj
            nPop()
        );
/*--------------------------------------------------------------------------------------------------------------------*/
body = disj;
/*--------------------------------------------------------------------------------------------------------------------*/
head = (    Reset_var_scope
            nPush()
            (   Atom . h_text $'(' args $')'    Snapshot_head('h_text')
            |   Atom . h_text $'(' $')'         Snapshot_head('h_text')
            |   Atom . h_text                   Snapshot_head('h_text')
            |   Str                             Snapshot_head('s_body')
            )
            nPop()
        );
/*--------------------------------------------------------------------------------------------------------------------*/
clause    = (   head
                ( $':-' body                   Mark_body
                | epsilon
                )
                $'.'
                                               Build_clause
            );
/*--------------------------------------------------------------------------------------------------------------------*/
directive = (   $':-'                          Reset_var_scope
                body $'.'
                                               Build_directive
            );
/*--------------------------------------------------------------------------------------------------------------------*/
top_form  = (directive | clause);
/*====================================================================================================================*/
Compiland = nPush()
            ARBNO( trivia nInc() top_form trivia )
            reduce(E_Parse, 'nTop()')
            nPop();
/*====================================================================================================================*/
InitCounter();
InitStack();
Src = '';
while ((Line = INPUT)) Src = Src Line nl ;
if (Src ? Compiland) {
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
/*====================================================================================================================*/
