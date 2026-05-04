// parser_snocone.sc — PARSER-SC: Snocone pattern-based frontend in Snocone.
//
// ONE Compiland PATTERN matched once against the entire source; emits one
// IR tree per statement via TDump.  Byte-identical (whitespace-normalized)
// to scrip's existing Snocone frontend --dump-ir output.
//
// Naming: non-terminals from Snocone grammar; IR tags from ir.h E_*;
// whitespace: $'  ' = required, $' ' = optional (beauty.sno convention).
// SC_xxx pattern-builders return deferred-action patterns at build time.
// Rung SC-3: if / if-else / while / do-while.  Gate: PASS=21 FAIL=0.
&FULLSCAN = 1;
/*====================================================================================================================*/
E_ASSIGN = "'E_ASSIGN'";  E_SCAN  = "'E_SCAN'";
E_ALT    = "'E_ALT'";     E_SEQ   = "'E_SEQ'";
E_ADD    = "'E_ADD'";     E_SUB   = "'E_SUB'";
E_MUL    = "'E_MUL'";     E_DIV   = "'E_DIV'";
E_QLIT   = "'E_QLIT'";    E_ILIT  = "'E_ILIT'";   E_VAR  = "'E_VAR'";
E_Parse  = "'Parse'";
r_nTop   = '*(GT(nTop(), 1) nTop())';
/*====================================================================================================================*/
Block    = '/*' ARBNO(BREAK('*') ANY('*')) '/';
White    = (  SPAN(' ' tab) FENCE(  '//' BREAK(nl)
                                 |  Block
                                 |  epsilon
                                 )
           |  '//' BREAK(nl)
           |  Block
           );
Gray     = White | epsilon;
$' '     = Gray;
$'  '    = White;
nl_opt   = (nl | epsilon);
/*--------------------------------------------------------------------------------------------------------------------*/
// Token classifiers — PATTERNS.
Integer  = SPAN(digits);
DQ       = ('"'  BREAK('"')  . sc_strbody '"');
SQ_lit   = ("'"  BREAK("'")  . sc_strbody "'");
String   = (*SQ_lit | *DQ);
Id       = (ANY(&UCASE &LCASE '_')
            FENCE(SPAN('.' digits &UCASE '_' &LCASE) | epsilon));
/*--------------------------------------------------------------------------------------------------------------------*/
// Operator tokens — beauty.sc $'x' style.
$'('  = $' '  '(' $' ';  $')'  = $' '  ')';
$'{'  = $' '  '{' $' ';  $'}'  = $' '  '}';
$';'  = $' '  ';';
$'='  = $' '  '=' $' ';  $'?'  = $' '  '?' $' ';
$'|'  = $' '  '|' $' ';  $'+'  = $' '  '+' $' ';
$'-'  = $' '  '-' $' ';  $'*'  = $' '  '*' $' ';
$'/'  = $' '  '/' $' ';
/*--------------------------------------------------------------------------------------------------------------------*/
// Keyword guards — keyword not a prefix of a longer identifier.
kw_tail  = FENCE(SPAN(&UCASE &LCASE digits '_') | epsilon) . kw_rest IDENT(kw_rest);
kw_if    = ('if'    kw_tail);
kw_while = ('while' kw_tail);
kw_do    = ('do'    kw_tail);
kw_else  = ('else'  kw_tail);
/*====================================================================================================================*/
// Global label counter.
sc_lbl_n = 0;
/*--------------------------------------------------------------------------------------------------------------------*/
// Semantic / tree-building helpers.
function sc_new_label(prefix) {
    sc_lbl_n = sc_lbl_n + 1;
    sc_new_label = '_' prefix '_' LPAD(sc_lbl_n, 4, '0');
    return;
}
function sc_save_cond() {
    sc_saved_cond = Pop();
    sc_save_cond = .dummy; nreturn;
}
function sc_save_nbody(varname) {
    $varname = TopCounter();
    sc_save_nbody = .dummy; nreturn;
}
function sc_while_head_alloc() {
    sc_while_ltop = sc_new_label('Ltop');
    sc_while_lend = sc_new_label('Lend');
    sc_while_head_alloc = .dummy; nreturn;
}
function sc_do_head_alloc() {
    sc_do_lcont = sc_new_label('Lcont');
    sc_do_lend  = sc_new_label('Lend');
    sc_do_head_alloc = .dummy; nreturn;
}
function sc_decompose_stmt(top, lhs, rhs, s) {
    top = Pop();
    if (IDENT(t(top), 'E_ASSIGN')) {
        lhs = c(top)[1]; rhs = c(top)[2];
        s = Tree('STMT', '', 3,
                 Tree(':eq',   ''),
                 Tree(':subj', '', 1, lhs),
                 Tree(':repl', '', 1, rhs));
    } else s = Tree('STMT', '', 1, Tree(':subj', '', 1, top));
    Push(s);
    sc_decompose_stmt = .dummy; nreturn;
}
function sc_push_qlit(s) {
    s = tree('E_QLIT', sc_strbody);
    Push(s);
    sc_push_qlit = .dummy; nreturn;
}
function sc_make_cond_stmt(cond_expr, goto_slot, label) {
    sc_make_cond_stmt = Tree('STMT', '', 2,
                             Tree(':subj', '', 1, cond_expr),
                             tree(goto_slot, label));
    return;
}
function sc_make_goto_stmt(label) {
    sc_make_goto_stmt = Tree('STMT', '', 1, tree(':go', label));
    return;
}
function sc_make_label_stmt(label) {
    sc_make_label_stmt = Tree('STMT', '', 1, tree(':lbl', label));
    return;
}
function sc_pop_body(n, arr, i) {
    arr = GT(n, 0) ARRAY('1:' n);
    i = n;
    while (GT(i, 0)) { arr[i] = Pop(); i = i - 1; }
    sc_pop_body = arr; return;
}
function sc_finalize_if(nthen_v, cond_v, body, Lend, n, ce, i) {
    n = $nthen_v; ce = $cond_v;
    body = sc_pop_body(n);
    Lend = sc_new_label('Lend');
    Push(sc_make_cond_stmt(ce, ':goF', Lend));
    i = 1; while (LE(i, n)) { Push(body[i]); i = i + 1; }
    Push(sc_make_label_stmt(Lend));
    i = 0; while (LT(i, n + 1)) { IncCounter(); i = i + 1; }
    sc_finalize_if = .dummy; nreturn;
}
function sc_finalize_if_else(nthen_v, nelse_v, cond_v,
                              tb, eb, Lelse, Lend, nt, ne, ce, i) {
    nt = $nthen_v; ne = $nelse_v; ce = $cond_v;
    eb = sc_pop_body(ne); tb = sc_pop_body(nt);
    Lelse = sc_new_label('Lelse'); Lend = sc_new_label('Lend');
    Push(sc_make_cond_stmt(ce, ':goF', Lelse));
    i = 1; while (LE(i, nt)) { Push(tb[i]); i = i + 1; }
    Push(sc_make_goto_stmt(Lend));
    Push(sc_make_label_stmt(Lelse));
    i = 1; while (LE(i, ne)) { Push(eb[i]); i = i + 1; }
    Push(sc_make_label_stmt(Lend));
    i = 0; while (LT(i, nt + ne + 3)) { IncCounter(); i = i + 1; }
    sc_finalize_if_else = .dummy; nreturn;
}
function sc_finalize_while(nbody_v, cond_v, body, Ltop, Lend, n, ce, i) {
    n = $nbody_v; ce = $cond_v;
    body = sc_pop_body(n);
    Ltop = sc_while_ltop; Lend = sc_while_lend;
    Push(sc_make_label_stmt(Ltop));
    Push(sc_make_cond_stmt(ce, ':goF', Lend));
    i = 1; while (LE(i, n)) { Push(body[i]); i = i + 1; }
    Push(sc_make_goto_stmt(Ltop));
    Push(sc_make_label_stmt(Lend));
    i = 0; while (LT(i, n + 3)) { IncCounter(); i = i + 1; }
    sc_finalize_while = .dummy; nreturn;
}
function sc_finalize_do(nbody_v, cond_v, body, Ltop, Lend, n, ce, i) {
    n = $nbody_v; ce = $cond_v;
    body = sc_pop_body(n);
    Ltop = sc_new_label('Ltop'); Lend = sc_do_lend;
    Push(sc_make_label_stmt(Ltop));
    i = 1; while (LE(i, n)) { Push(body[i]); i = i + 1; }
    Push(sc_make_cond_stmt(ce, ':goS', Ltop));
    Push(sc_make_label_stmt(Lend));
    i = 0; while (LT(i, n + 2)) { IncCounter(); i = i + 1; }
    sc_finalize_do = .dummy; nreturn;
}
/*====================================================================================================================*/
// SC_xxx pattern builders — called at BUILD TIME, return deferred-action patterns.
function SC_save_cond() {
    SC_save_cond = EVAL("epsilon . thx . *sc_save_cond()");
    return;
}
function SC_save_nbody(var) {
    SC_save_nbody = EVAL("epsilon . thx . *sc_save_nbody('" var "')");
    return;
}
function SC_decompose_stmt() {
    SC_decompose_stmt = EVAL("epsilon . thx . *sc_decompose_stmt()");
    return;
}
function SC_push_qlit() {
    SC_push_qlit = EVAL("epsilon . thx . *sc_push_qlit()");
    return;
}
function SC_while_head_alloc() {
    SC_while_head_alloc = EVAL("epsilon . thx . *sc_while_head_alloc()");
    return;
}
function SC_do_head_alloc() {
    SC_do_head_alloc = EVAL("epsilon . thx . *sc_do_head_alloc()");
    return;
}
function SC_finalize_if(nthen_v, cond_v) {
    SC_finalize_if = EVAL("epsilon . thx . *sc_finalize_if('" nthen_v "', '" cond_v "')");
    return;
}
function SC_finalize_if_else(nthen_v, nelse_v, cond_v) {
    SC_finalize_if_else = EVAL("epsilon . thx . *sc_finalize_if_else('"
                               nthen_v "', '" nelse_v "', '" cond_v "')");
    return;
}
function SC_finalize_while(nbody_v, cond_v) {
    SC_finalize_while = EVAL("epsilon . thx . *sc_finalize_while('" nbody_v "', '" cond_v "')");
    return;
}
function SC_finalize_do(nbody_v, cond_v) {
    SC_finalize_do = EVAL("epsilon . thx . *sc_finalize_do('" nbody_v "', '" cond_v "')");
    return;
}
function SC_body(var) {
    SC_body = nPush() ARBNO(stmt_cmd) SC_save_nbody(var) nPop();
    return;
}
/*====================================================================================================================*/
// Expression tower — Snocone operator precedence.
Expr17 = FENCE(
             *String SC_push_qlit()
           | *Integer ~ 'E_ILIT'
           | *Id      ~ 'E_VAR'
         );
Expr9  = *Expr17
         ( $'*' *Expr17 (E_MUL & 2) ($'*' *Expr17 (E_MUL & 2) | epsilon)
         | $'/' *Expr17 (E_DIV & 2) FENCE($'/' *Expr17 (E_DIV & 2) | epsilon)
         | epsilon );
Expr6  = *Expr9
         ( $'+' *Expr9 (E_ADD & 2) ($'+' *Expr9 (E_ADD & 2) | epsilon)
         | $'-' *Expr9 (E_SUB & 2) ($'-' *Expr9 (E_SUB & 2) | epsilon)
         | epsilon );
Expr4  = nPush() *X4 (E_SEQ & r_nTop) nPop();
X4     = nInc() *Expr6 ($'  ' *X4 | epsilon);
Expr3  = nPush() *X3 (E_ALT & r_nTop) nPop();
X3     = nInc() *Expr4 ($'|' *X3 | epsilon);
Expr1  = *Expr3 ($'?' *Expr1 (E_SCAN   & 2) | epsilon);
Expr0  = *Expr1 ($'=' *Expr0 (E_ASSIGN & 2) | epsilon);
/*====================================================================================================================*/
stmt_body = ($' ' *Expr0 $' ' ($';' | epsilon) $' ' nl_opt SC_decompose_stmt());
stmt_cmd  = (nInc() stmt_body);
/*--------------------------------------------------------------------------------------------------------------------*/
if_cmd =
    ( nInc()
      $' ' *kw_if   $'(' *Expr0 SC_save_cond() $')' $' ' nl_opt
      $'{' nl_opt    SC_body('sc_if_nthen')    $'}' $' ' nl_opt
      ( *kw_else $' ' nl_opt
        $'{' nl_opt  SC_body('sc_if_nelse')    $'}' $' ' nl_opt
        SC_finalize_if_else('sc_if_nthen', 'sc_if_nelse', 'sc_saved_cond')
      | SC_finalize_if('sc_if_nthen', 'sc_saved_cond')
      )
    );
while_cmd =
    ( nInc()
      $' ' *kw_while $'(' *Expr0 SC_save_cond()
                          SC_while_head_alloc() $')' $' ' nl_opt
      $'{' nl_opt SC_body('sc_wh_nbody') $'}' $' ' nl_opt
      SC_finalize_while('sc_wh_nbody', 'sc_saved_cond')
    );
do_cmd =
    ( nInc()
      $' ' *kw_do $' ' nl_opt SC_do_head_alloc()
      $'{' nl_opt SC_body('sc_do_nbody') $'}' $' ' nl_opt
      *kw_while $'(' *Expr0 SC_save_cond() $')' ($';' | epsilon) $' ' nl_opt
      SC_finalize_do('sc_do_nbody', 'sc_saved_cond')
    );
empty_cmd = ($' ' $';' $' ' nl_opt);
/*====================================================================================================================*/
Command   = ( if_cmd | while_cmd | do_cmd | empty_cmd | stmt_cmd );
Compiland = nPush()
            ARBNO(Command)
            (E_Parse & 'nTop()')
            nPop();
/*====================================================================================================================*/
InitCounter();
InitStack();
Src = '';
while (Line = INPUT) Src = Src Line nl ;
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
} else OUTPUT = 'Parse Error';
/*====================================================================================================================*/
