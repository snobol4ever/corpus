// parser_prolog.sc — PARSER-PR: Prolog pattern-based frontend in Snocone.
//
// ONE Compiland PATTERN matched once against the entire source; emits one
// IR tree per clause/directive via TDump.  Byte-identical (whitespace-
// normalized) to scrip's existing Prolog frontend --dump-ir output.
//
// Naming: non-terminals from ISO/IEC 13211-1 BNF; IR tags from ir.h E_*;
// whitespace: $'  ' = required, $' ' = optional (beauty.sno convention).
// Rungs: PR-0..PR-6 (atoms, facts, rules, conj, disj, lists, arith, directives).
/*====================================================================================================================*/
E_FNC    = "'E_FNC'";   E_ILIT   = "'E_ILIT'";   E_UNIFY  = "'E_UNIFY'";
E_ADD    = "'E_ADD'";   E_SUB    = "'E_SUB'";
E_MUL    = "'E_MUL'";   E_DIV    = "'E_DIV'";
E_Parse  = "'Parse'";
/*====================================================================================================================*/
$'  '    = SPAN(' ' tab);
$' '     = ($'  ' | epsilon);
/*====================================================================================================================*/
// Token classifiers — PATTERNS mirroring prolog_lex.h TK_* names.
White      = SPAN(' ' tab);
Gray       = (*White | epsilon);
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
$'('   = *Gray '(' *Gray;   $')'  = *Gray ')' *Gray;
$'['   = *Gray '[' *Gray;   $']'  = *Gray ']' *Gray;
$','   = *Gray ',' *Gray;   $';'  = *Gray ';' *Gray;
$'|'   = *Gray '|' *Gray;
$'.'   = *Gray '.';
$':-'  = *Gray ':-' *Gray;  $'='  = *Gray '=' *Gray;
$'+'   = *Gray '+' *Gray;   $'-'  = *Gray '-' *Gray;
$'*'   = *Gray '*' *Gray;   $'/'  = *Gray '/' *Gray;
$'is'  = *White 'is' *White;
/*====================================================================================================================*/
comment  = ('%' BREAK(nl) (nl | RPOS(0)));
trivia   = ((SPAN(' ' tab nl) | epsilon) ARBNO(comment (SPAN(' ' tab nl) | epsilon)));
/*====================================================================================================================*/
// Per-clause variable scope.
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
// Assign_anon_slots — walk tree x replacing each (E_VAR _ANON) with fresh _Vk.
// Children visited in reverse order to mirror prolog_lower.c::assign_clause_anon_slots.
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
function Push_nil() {
    Push(tree('E_FNC', '[]'));
    Push_nil = .dummy;
    nreturn;
}
function Push_neg_int(digits) {
    Push(tree('E_ILIT', '-' digits));
    Push_neg_int = .dummy;
    nreturn;
}
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
/*====================================================================================================================*/
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
function Build_directive(body_tree) {
    body_tree = Pop();
    Assign_anon_slots(body_tree);
    Push(Tree('STMT', '', 1,
              Tree(':subj', '', 1, body_tree)));
    Build_directive = .dummy;
    nreturn;
}
/*====================================================================================================================*/
// Grammar — pure patterns.  Expression ladder (tightest -> loosest):
//   primary -> mul_expr -> add_expr -> is_expr -> unify_expr -> conj -> disj
// Tail-recursion (args/args_tail) avoids ARBNO around forward refs (FW-3).
args      = ( nInc() *unify_expr (*args_tail | epsilon) );
args_tail = ( $',' nInc() *unify_expr (*args_tail | epsilon) );
/*--------------------------------------------------------------------------------------------------------------------*/
list_elem = (   shift(Int,  'E_ILIT')
            |   shift(Atom, 'E_FNC')
            |   Qatom  epsilon . *Push_atom_body(q_body)
            |   Str    epsilon . *Push_atom_body(s_body)
            |   Var . le_text  epsilon . *Push_var(le_text)
            |   *list
            );
/*--------------------------------------------------------------------------------------------------------------------*/
list = (    $'['
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
/*--------------------------------------------------------------------------------------------------------------------*/
primary = (   Atom . p_name $'('
                  nPush() args $')'
                  epsilon . *Reduce_compound(p_name)
              nPop()
          |   shift(Int,  'E_ILIT')
          |   shift(Atom, 'E_FNC')
          |   Qatom  epsilon . *Push_atom_body(q_body)
          |   Str    epsilon . *Push_atom_body(s_body)
          |   Var . p_text   epsilon . *Push_var(p_text)
          |   $'(' *unify_expr $')'
          |   *list
          |   '-' Int . p_negi epsilon . *Push_neg_int(p_negi)
          );
/*--------------------------------------------------------------------------------------------------------------------*/
mul_expr  = (   primary
                ARBNO(
                    ( $'*' primary reduce(E_MUL, 2)
                    | $'/' primary reduce(E_DIV, 2)
                    )
                )
            );
/*--------------------------------------------------------------------------------------------------------------------*/
add_expr  = (   mul_expr
                ARBNO(
                    ( $'+' mul_expr reduce(E_ADD, 2)
                    | $'-' mul_expr reduce(E_SUB, 2)
                    )
                )
            );
/*--------------------------------------------------------------------------------------------------------------------*/
is_expr   = (   add_expr
                ( $'is' add_expr epsilon . *Reduce_is()
                | epsilon
                )
            );
/*--------------------------------------------------------------------------------------------------------------------*/
unify_expr = (  is_expr
                ( $'=' is_expr reduce(E_UNIFY, 2)
                | epsilon
                )
             );
/*--------------------------------------------------------------------------------------------------------------------*/
body_goal = unify_expr;
/*--------------------------------------------------------------------------------------------------------------------*/
conj = (    nPush()
                nInc() body_goal
                ARBNO( $',' nInc() body_goal )
                epsilon . *Reduce_conj()
            nPop()
        );
/*--------------------------------------------------------------------------------------------------------------------*/
disj = (    nPush()
                nInc() conj
                ARBNO( $';' nInc() conj )
                epsilon . *Reduce_disj()
            nPop()
        );
/*--------------------------------------------------------------------------------------------------------------------*/
body = disj;
/*--------------------------------------------------------------------------------------------------------------------*/
head = (    epsilon . *Reset_var_scope()
            nPush()
            (   Atom . h_text $'(' args $')' epsilon . *Snapshot_head(h_text)
            |   Atom . h_text $'(' $')'      epsilon . *Snapshot_head(h_text)
            |   Atom . h_text                epsilon . *Snapshot_head(h_text)
            |   Str                          epsilon . *Snapshot_head(s_body)
            )
            nPop()
        );
/*--------------------------------------------------------------------------------------------------------------------*/
clause    = (   head
                ( $':-' body epsilon . *Mark_body()
                | epsilon
                )
                $'.'
                epsilon . *Build_clause()
            );
/*--------------------------------------------------------------------------------------------------------------------*/
directive = (   $':-' epsilon . *Reset_var_scope()
                body $'.'
                epsilon . *Build_directive()
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
