// parser_snocone.sc — PARSER-SC: Snocone pattern-based frontend in Snocone.
//
// ONE Compiland PATTERN matched once against the entire source; emits one
// IR tree per statement via TDump.  Byte-identical (whitespace-normalized)
// to scrip's existing Snocone frontend --dump-ir output.
//
// Naming: non-terminals from Snocone grammar; IR tags from ir.h E_*;
// whitespace: $'  ' = required, $' ' = optional (beauty.sno convention).
// Pattern-builder companions (Capitalized) return deferred-action patterns at build time.
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
DQ       = ('"'  BREAK('"')  . strbody '"');
SQ_lit   = ("'"  BREAK("'")  . strbody "'");
String   = (*SQ_lit | *DQ);
Id       = (ANY(&UCASE &LCASE '_')
            FENCE(SPAN('.' digits &UCASE '_' &LCASE) | epsilon));
/*--------------------------------------------------------------------------------------------------------------------*/
// Operator tokens — beauty.sc $'x' style.  Open brackets: ws both sides (Snocone is whitespace-sensitive like SNOBOL4).  Close: ws before only.
$'('  = $' ' '(' $' ';  $')'  = $' ' ')';
$'{'  = $' ' '{' $' ';  $'}'  = $' ' '}';
$';'  = $' ' ';';
$'='  = $' ' '=' $' ';  $'?'  = $' ' '?' $' ';
$'|'  = $' ' '|' $' ';  $'+'  = $' ' '+' $' ';
$'-'  = $' ' '-' $' ';  $'*'  = $' ' '*' $' ';
$'/'  = $' ' '/' $' ';
/*--------------------------------------------------------------------------------------------------------------------*/
// Keyword guards — keyword not a prefix of a longer identifier.
kw_tail  = FENCE(SPAN(&UCASE &LCASE digits '_') | epsilon) . kw_rest IDENT(kw_rest);
kw_if    = ('if'    kw_tail);
kw_while = ('while' kw_tail);
kw_do    = ('do'    kw_tail);
kw_else  = ('else'  kw_tail);
/*====================================================================================================================*/
// Global label counter.
lbl_n = 0;
/*--------------------------------------------------------------------------------------------------------------------*/
// Semantic / tree-building helpers.
function new_label(prefix) {
    lbl_n = lbl_n + 1;
    new_label = '_' prefix '_' LPAD(lbl_n, 4, '0');
    return;
}
function save_cond() {
    saved_cond = Pop();
    save_cond = .dummy; nreturn;
}
function save_nbody(varname) {
    $varname = TopCounter();
    save_nbody = .dummy; nreturn;
}
function while_head_alloc() {
    while_ltop = new_label('Ltop');
    while_lend = new_label('Lend');
    while_head_alloc = .dummy; nreturn;
}
function do_head_alloc() {
    do_lcont = new_label('Lcont');
    do_lend  = new_label('Lend');
    do_head_alloc = .dummy; nreturn;
}
function decompose_stmt(top, lhs, rhs, s) {
    top = Pop();
    if (IDENT(t(top), 'E_ASSIGN')) {
        lhs = c(top)[1]; rhs = c(top)[2];
        s = Tree('STMT', '', 3,
                 Tree(':eq',   ''),
                 Tree(':subj', '', 1, lhs),
                 Tree(':repl', '', 1, rhs));
    } else s = Tree('STMT', '', 1, Tree(':subj', '', 1, top));
    Push(s);
    decompose_stmt = .dummy; nreturn;
}
function push_qlit(s) {
    s = tree('E_QLIT', strbody);
    Push(s);
    push_qlit = .dummy; nreturn;
}
function make_cond_stmt(cond_expr, goto_slot, label) {
    make_cond_stmt = Tree('STMT', '', 2,
                             Tree(':subj', '', 1, cond_expr),
                             tree(goto_slot, label));
    return;
}
function make_goto_stmt(label) {
    make_goto_stmt = Tree('STMT', '', 1, tree(':go', label));
    return;
}
function make_label_stmt(label) {
    make_label_stmt = Tree('STMT', '', 1, tree(':lbl', label));
    return;
}
function pop_body(n, arr, i) {
    arr = GT(n, 0) ARRAY('1:' n);
    i = n;
    while (GT(i, 0)) { arr[i] = Pop(); i = i - 1; }
    pop_body = arr; return;
}
function finalize_if(nthen_v, cond_v, body, Lend, n, ce, i) {
    n = $nthen_v; ce = $cond_v;
    body = pop_body(n);
    Lend = new_label('Lend');
    Push(make_cond_stmt(ce, ':goF', Lend));
    i = 1; while (LE(i, n)) { Push(body[i]); i = i + 1; }
    Push(make_label_stmt(Lend));
    i = 0; while (LT(i, n + 1)) { IncCounter(); i = i + 1; }
    finalize_if = .dummy; nreturn;
}
function finalize_if_else(nthen_v, nelse_v, cond_v,
                              tb, eb, Lelse, Lend, nt, ne, ce, i) {
    nt = $nthen_v; ne = $nelse_v; ce = $cond_v;
    eb = pop_body(ne); tb = pop_body(nt);
    Lelse = new_label('Lelse'); Lend = new_label('Lend');
    Push(make_cond_stmt(ce, ':goF', Lelse));
    i = 1; while (LE(i, nt)) { Push(tb[i]); i = i + 1; }
    Push(make_goto_stmt(Lend));
    Push(make_label_stmt(Lelse));
    i = 1; while (LE(i, ne)) { Push(eb[i]); i = i + 1; }
    Push(make_label_stmt(Lend));
    i = 0; while (LT(i, nt + ne + 3)) { IncCounter(); i = i + 1; }
    finalize_if_else = .dummy; nreturn;
}
function finalize_while(nbody_v, cond_v, body, Ltop, Lend, n, ce, i) {
    n = $nbody_v; ce = $cond_v;
    body = pop_body(n);
    Ltop = while_ltop; Lend = while_lend;
    Push(make_label_stmt(Ltop));
    Push(make_cond_stmt(ce, ':goF', Lend));
    i = 1; while (LE(i, n)) { Push(body[i]); i = i + 1; }
    Push(make_goto_stmt(Ltop));
    Push(make_label_stmt(Lend));
    i = 0; while (LT(i, n + 3)) { IncCounter(); i = i + 1; }
    finalize_while = .dummy; nreturn;
}
function finalize_do(nbody_v, cond_v, body, Ltop, Lend, n, ce, i) {
    n = $nbody_v; ce = $cond_v;
    body = pop_body(n);
    Ltop = new_label('Ltop'); Lend = do_lend;
    Push(make_label_stmt(Ltop));
    i = 1; while (LE(i, n)) { Push(body[i]); i = i + 1; }
    Push(make_cond_stmt(ce, ':goS', Ltop));
    Push(make_label_stmt(Lend));
    i = 0; while (LT(i, n + 2)) { IncCounter(); i = i + 1; }
    finalize_do = .dummy; nreturn;
}
/*====================================================================================================================*/
// Pattern-builder companions — called at BUILD TIME, return deferred-action patterns.
function Save_cond() {
    Save_cond = EVAL("epsilon . thx . *save_cond()");
    return;
}
function Save_nbody(var) {
    Save_nbody = EVAL("epsilon . thx . *save_nbody('" var "')");
    return;
}
function Decompose_stmt() {
    Decompose_stmt = EVAL("epsilon . thx . *decompose_stmt()");
    return;
}
function Push_qlit() {
    Push_qlit = EVAL("epsilon . thx . *push_qlit()");
    return;
}
function While_head_alloc() {
    While_head_alloc = EVAL("epsilon . thx . *while_head_alloc()");
    return;
}
function Do_head_alloc() {
    Do_head_alloc = EVAL("epsilon . thx . *do_head_alloc()");
    return;
}
function Finalize_if(nthen_v, cond_v) {
    Finalize_if = EVAL("epsilon . thx . *finalize_if('" nthen_v "', '" cond_v "')");
    return;
}
function Finalize_if_else(nthen_v, nelse_v, cond_v) {
    Finalize_if_else = EVAL("epsilon . thx . *finalize_if_else('"
                               nthen_v "', '" nelse_v "', '" cond_v "')");
    return;
}
function Finalize_while(nbody_v, cond_v) {
    Finalize_while = EVAL("epsilon . thx . *finalize_while('" nbody_v "', '" cond_v "')");
    return;
}
function Finalize_do(nbody_v, cond_v) {
    Finalize_do = EVAL("epsilon . thx . *finalize_do('" nbody_v "', '" cond_v "')");
    return;
}
function Body(var) {
    Body = nPush() ARBNO(stmt_cmd) Save_nbody(var) nPop();
    return;
}
/*====================================================================================================================*/
// Expression tower — Snocone operator precedence.
Expr17 = FENCE(
             *String Push_qlit()
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
stmt_body = ($' ' *Expr0 $' ' ($';' | epsilon) $' ' nl_opt Decompose_stmt());
stmt_cmd  = (nInc() stmt_body);
/*--------------------------------------------------------------------------------------------------------------------*/
if_cmd =
    ( nInc()
      $' ' *kw_if   $'(' *Expr0 Save_cond() $')' $' ' nl_opt
      $'{' nl_opt    Body('if_nthen')    $'}' $' ' nl_opt
      ( *kw_else $' ' nl_opt
        $'{' nl_opt  Body('if_nelse')    $'}' $' ' nl_opt
        Finalize_if_else('if_nthen', 'if_nelse', 'saved_cond')
      | Finalize_if('if_nthen', 'saved_cond')
      )
    );
while_cmd =
    ( nInc()
      $' ' *kw_while $'(' *Expr0 Save_cond()
                          While_head_alloc() $')' $' ' nl_opt
      $'{' nl_opt Body('wh_nbody') $'}' $' ' nl_opt
      Finalize_while('wh_nbody', 'saved_cond')
    );
do_cmd =
    ( nInc()
      $' ' *kw_do $' ' nl_opt Do_head_alloc()
      $'{' nl_opt Body('do_nbody') $'}' $' ' nl_opt
      *kw_while $'(' *Expr0 Save_cond() $')' ($';' | epsilon) $' ' nl_opt
      Finalize_do('do_nbody', 'saved_cond')
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
