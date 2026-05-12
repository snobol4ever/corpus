&FULLSCAN = 1;
white       =   (  SPAN(' ' tab)
                |  '#'  BREAK(nl)
                |  '//' BREAK(nl)
                |  '/*' BREAKX('*') '*/'
                );
White       =   white ARBNO(white);
Gray        =   ARBNO(white);
$'  '       =   White;
$' '        =   Gray;
Id      = ANY(&UCASE &LCASE '_') (SPAN(&UCASE &LCASE digits '_' '.') | epsilon);
Integer = SPAN(digits);
Real    = SPAN(digits) '.' SPAN(digits);
KW_open = '&';
KW_body = ANY(&UCASE &LCASE '_') (SPAN(&UCASE &LCASE digits '_') | epsilon);
DQ_str  = '"' BREAK('"') . strbody '"';
SQ_str  = "'" BREAK("'") . strbody "'";
String  = *DQ_str | *SQ_str;
$'('        =       '('        $' ';  $')'        = $' ' ')';
$'['        =       '['        $' ';  $']'        = $' ' ']';
$'.'        = $' '  '.'        $' ';
$','        = $' '  ','        $' ';
$':='       = $' '  ':='       $' ';
$'?'        = $' '  '?'        $' ';
$'|'        = $' '  '|'        $' ';
$'+'        = $' '  '+'        $' ';  $'-'        = $' ' '-'  $' ';
$'*'        = $' '  '*'        $' ';  $'/'        = $' ' '/'  $' ';
$'^'        = $' '  '^'        $' ';  $'**'       = $' ' '**' $' ';
$'%'        = $' '  '%'        $' ';
$'~=='      = $' '  '~=='      $' ';  $'=='       = $' ' '=='  $' ';
$'<<='      = $' '  '<<='      $' ';  $'>>='      = $' ' '>>=' $' ';
$'<<'       = $' '  '<<'       $' ';  $'>>'       = $' ' '>>'  $' ';
$'<='       = $' '  '<='       $' ';  $'>='       = $' ' '>='  $' ';
$'<'        = $' '  '<'        $'  ';  $'>'       = $' ' '>'   $'  ';
$'<-arrow'  = $' '  '<-'       $' ';
$'~='       = $' '  '~='       $' ';  $'='        = $' ' '='   $' ';
$'||'       = $' '  '||'       $' ';  $'&'        = $' ' '&'   $' ';
$'function' = $' '  'function' $'  '; $'end'      = $' ' 'end';
$'record'   = $' '  'record'   $'  ';
$'if'       = $' '  'if'       $'  '; $'then'     = $' ' 'then' $' ';
$'else'     = $' '  'else'     $' ';
$'unless'   = $' '  'unless'   $'  ';
$'for'      = $' '  'for'      $'  ';
$'from'     = $' '  'from'     $'  ';
$'to'       = $' '  'to'       $'  ';
$'by'       = $' '  'by'       $'  ';
$'while'    = $' '  'while'    $'  '; $'do'       = $' ' 'do'   $' ';
$'until'    = $' '  'until'    $'  ';
$'repeat'   = $' '  'repeat'   $'  ';
$'return'   = $' '  'return'   $' ';
$'exit'     = $' '  'exit'     $' ';
$'fail'     = $' '  'fail'     $' ';
$'stop'     = $' '  'stop'     $' ';
$'next'     = $' '  'next'     $' ';
$'local'    = $' '  'local'    $'  ';
$'initial'  = $' '  'initial'  $'  ';
rb_case_kw  = $' '  'case'     $'  ';
$'of'       = $' '  'of'       $' ';
$'<-'       = $' '  '<-'       $' ';
$'?-'       = $' '  '?-'       $' ';
$';'        = $' '  ';'        $' ';
$'{'        = $' '  '{'        $' ';
$'}'        = $' '  '}'        $' ';
$':'        = $' '  ':'        $' ';
$'||:='     = $' '  '||:='     $' ';
$'+:='      = $' '  '+:='      $' ';
$'-:='      = $' '  '-:='      $' ';
$':=:'      = $' '  ':=:'      $' ';
$'+:'       = $' '  '+:'       $' ';
dot_capt    = $'  '  '.'        $' ';
dollar_capt = $'  '  '$'        $' ';
AST_VAR        = 'AST_VAR';
AST_ILIT       = 'AST_ILIT';
AST_QLIT       = 'AST_QLIT';
AST_FLIT       = 'AST_FLIT';
AST_KEYWORD    = 'AST_KEYWORD';
AST_ALT        = 'AST_ALT';
AST_FNC        = 'AST_FNC';
AST_ADD        = 'AST_ADD';
AST_SUB        = 'AST_SUB';
AST_MUL        = 'AST_MUL';
AST_DIV        = 'AST_DIV';
AST_MNS        = 'AST_MNS';
AST_CAT        = 'AST_CAT';
AST_POW        = 'AST_POW';
AST_NUL        = 'AST_NUL';
AST_IDX        = 'AST_IDX';
AST_ASSIGN     = 'AST_ASSIGN';
CMP_EQ       = 'CMP_EQ'; CMP_NE = 'CMP_NE';
CMP_LT       = 'CMP_LT'; CMP_LE = 'CMP_LE';
CMP_GT       = 'CMP_GT'; CMP_GE = 'CMP_GE';
CMP_SEQ      = 'CMP_SEQ'; CMP_SNE = 'CMP_SNE';
CMP_SLT      = 'CMP_SLT'; CMP_SLE = 'CMP_SLE';
CMP_SGT      = 'CMP_SGT'; CMP_SGE = 'CMP_SGE';
REMDR        = 'REMDR';
Parse        = 'Parse';
FUNC_DECL = 'FUNC_DECL';
REC_DECL  = 'REC_DECL';
PARAMS    = 'PARAMS';
FIELDS    = 'FIELDS';
LOCALS    = 'LOCALS';
BODY      = 'BODY';
ASSIGN    = 'ASSIGN';
ALT       = 'ALT';
MATCH     = 'MATCH';
IF        = 'IF';
IFELSE    = 'IFELSE';
WHILE     = 'WHILE';
UNLESS    = 'UNLESS';
UNTIL     = 'UNTIL';
REPEAT    = 'REPEAT';
RB_FOR    = 'RB_FOR';
CALL      = 'CALL';
RB_RETURN = 'RB_RETURN';
RB_RETURN_VAL = 'RB_RETURN_VAL';
RB_FAIL   = 'RB_FAIL';
RB_STOP   = 'RB_STOP';
RB_EXIT   = 'RB_EXIT';
RB_NEXT   = 'RB_NEXT';
RB_INITIAL = 'RB_INITIAL';
REPLACE   = 'REPLACE';
REPLN     = 'REPLN';
RB_CASE   = 'RB_CASE';
AST_CAPT_COND = 'AST_CAPT_COND_ASGN';
AST_CAPT_IMM  = 'AST_CAPT_IMMED_ASGN';
AST_INDIRECT  = 'AST_INDIRECT';
AST_ITERATE   = 'AST_ITERATE';
AST_CAPT_CURSOR = 'AST_CAPT_CURSOR';
EXCHG       = 'EXCHG';
ADDASSIGN   = 'ADDASSIGN';
SUBASSIGN   = 'SUBASSIGN';
CATASSIGN   = 'CATASSIGN';
AST_NOTPAT    = 'AST_NOTPAT';
AST_BANGPAT   = 'AST_BANGPAT';
AST_VALUEPAT  = 'AST_VALUEPAT';
COMPOUND    = 'COMPOUND';
AST_POS       = 'AST_POS';
nTop_count   = 'nTop()';
nTop_plus1   = 'nTop() + 1';
X_sub = nInc() *expr FENCE($',' *X_sub | epsilon);
/* ==================================================================================================================== */
function push_qlit() {
    push_qlit = .dummy;
    Push(tree(AST_QLIT, strbody));
    nreturn;
}
/* ==================================================================================================================== */
function Push_qlit() {
    Push_qlit = epsilon . *push_qlit();
    return;
}
/* ==================================================================================================================== */
function push_nul() {
    push_nul = .dummy;
    Push(tree(AST_NUL, ''));
    nreturn;
}
/* ==================================================================================================================== */
function Push_nul() {
    Push_nul = epsilon . *push_nul();
    return;
}
/* ==================================================================================================================== */
function decompose_call(nargs, kids, fname, call, i) {
    nargs = nTop();
    kids  = ARRAY('1:' nargs + 1);
    i = 0;
    while (i = LT(i, nargs + 1) i + 1) kids[i] = Pop();
    fname = REPLACE(v(kids[nargs + 1]), &LCASE, &UCASE);
    call  = tree(AST_FNC, fname);
    i = nargs;
    while (GE(i, 1)) { call = Append(call, kids[i]); i = i - 1; }
    Push(call);
    decompose_call = .dummy;
    nreturn;
}
/* ==================================================================================================================== */
function decompose_sub(nargs, base, kids, sub, i) {
    nargs = nTop();
    kids  = ARRAY('1:' nargs + 1);
    i = 0;
    while (i = LT(i, nargs + 1) i + 1) kids[i] = Pop();
    base = kids[nargs + 1];
    sub  = tree(AST_IDX, '');
    sub  = Append(sub, base);
    i = nargs;
    while (GE(i, 1)) { sub = Append(sub, kids[i]); i = i - 1; }
    Push(sub);
    decompose_sub = .dummy;
    nreturn;
}
/* ==================================================================================================================== */
function Decompose_sub() {
    Decompose_sub = epsilon . *decompose_sub();
    return;
}
/* ==================================================================================================================== */
function push_call_id() {
    push_call_id = .dummy;
    Push(tree(AST_VAR, REPLACE(rbCallName, &LCASE, &UCASE)));
    nreturn;
}
rbKwName = '';
/* ==================================================================================================================== */
function push_keyword() {
    push_keyword = .dummy;
    Push(tree(AST_KEYWORD, REPLACE(rbKwName, &LCASE, &UCASE)));
    nreturn;
}
/* ==================================================================================================================== */
function Decompose_call() {
    Decompose_call = epsilon . *decompose_call();
    return;
}
/* ==================================================================================================================== */
function Push_call_id() {
    Push_call_id = epsilon . *push_call_id();
    return;
}
/* ==================================================================================================================== */
function Push_keyword() {
    Push_keyword = epsilon . *push_keyword();
    return;
}
rbCursorName = '';
/* ==================================================================================================================== */
function push_cursor() {
    push_cursor = .dummy;
    Push(tree(AST_CAPT_CURSOR, REPLACE(rbCursorName, &LCASE, &UCASE)));
    nreturn;
}
/* ==================================================================================================================== */
function Push_cursor() {
    Push_cursor = epsilon . *push_cursor();
    return;
}
rbCallName = '';
nInc_then_nul = nInc() Push_nul();
X_args   = nInc() *alt_expr FENCE($',' FENCE(*X_args | *nInc_then_nul FENCE($',' *X_args | epsilon)) | epsilon);
call_or_id = FENCE(  (*Id . rbCallName) $'(' nPush() Push_call_id()
                     FENCE(*X_args | epsilon) $')' Decompose_call() nPop()
                   | shift(*Id, AST_VAR)
                  );
primary = FENCE(  *String  Push_qlit()
                | KW_open (*KW_body . rbKwName) Push_keyword()
                | '@' (*Id . rbCursorName) Push_cursor()
                | shift(*Real, AST_FLIT)
                | shift(*Integer, AST_ILIT)
                | *call_or_id
                | '(' *expr ')'
               );
postfix_expr = *primary
               FENCE(  $'[' *alt_expr $'+:' *alt_expr $']' reduce(AST_IDX, 2) reduce(AST_IDX, 2)
                         FENCE($'[' *alt_expr $'+:' *alt_expr $']' reduce(AST_IDX, 2) reduce(AST_IDX, 2) | epsilon)
                      | $'[' nPush() *X_sub $']' Decompose_sub() nPop()
                         FENCE($'[' nPush() *X_sub $']' Decompose_sub() nPop() | epsilon)
                      | *dot_capt    *primary reduce(AST_CAPT_COND, 2)
                         FENCE(*dot_capt    *primary reduce(AST_CAPT_COND, 2) | epsilon)
                      | *dollar_capt *primary reduce(AST_CAPT_IMM,  2)
                         FENCE(*dollar_capt *primary reduce(AST_CAPT_IMM,  2) | epsilon)
                      | epsilon
                     );
unary_expr = FENCE(  $'-'  *unary_expr reduce(AST_MNS, 1)
                   | '+'   *unary_expr reduce(AST_POS, 1)
                   | '~'   *unary_expr reduce(AST_NOTPAT, 1)
                   | '!'   *unary_expr reduce(AST_BANGPAT, 1)
                   | '/'   *unary_expr reduce(AST_VALUEPAT, 1)
                   | '\'   *unary_expr reduce(AST_NOTPAT, 1)
                   | '$'   *unary_expr reduce(AST_INDIRECT, 1)
                   | '.'   *unary_expr reduce(AST_CAPT_COND, 1)
                   | *postfix_expr
                  );
pow_expr = *unary_expr FENCE(  $'**' *pow_expr reduce(AST_POW, 2)
                              | $'^'  *pow_expr reduce(AST_POW, 2)
                              | epsilon
                             );
mul_expr = *pow_expr
           ( $'*' *pow_expr reduce(AST_MUL, 2) ($'*' *pow_expr reduce(AST_MUL, 2) | epsilon)
           | $'/' *pow_expr reduce(AST_DIV, 2) ($'/' *pow_expr reduce(AST_DIV, 2) | epsilon)
           | $'%' *pow_expr reduce(REMDR,  2) ($'%' *pow_expr reduce(REMDR,  2) | epsilon)
           | epsilon
           );
add_expr = *mul_expr
           ( $'+' *mul_expr reduce(AST_ADD, 2) ($'+' *mul_expr reduce(AST_ADD, 2) | epsilon)
           | $'-' *mul_expr reduce(AST_SUB, 2) ($'-' *mul_expr reduce(AST_SUB, 2) | epsilon)
           | epsilon
           );
cmp_expr = *add_expr FENCE(  $'~==' *add_expr reduce(CMP_SNE, 2)
                             | $'==' *add_expr reduce(CMP_SEQ, 2)
                             | $'<<=' *add_expr reduce(CMP_SLE, 2)
                             | $'>>=' *add_expr reduce(CMP_SGE, 2)
                             | $'<<'  *add_expr reduce(CMP_SLT, 2)
                             | $'>>'  *add_expr reduce(CMP_SGT, 2)
                             | $'<='  *add_expr reduce(CMP_LE,  2)
                             | $'>='  *add_expr reduce(CMP_GE,  2)
                             | $'~='  *add_expr reduce(CMP_NE,  2)
                             | $'='   *add_expr reduce(CMP_EQ,  2)
                             | $'<'   *add_expr reduce(CMP_LT,  2)
                             | $'>'   *add_expr reduce(CMP_GT,  2)
                             | epsilon
                            );
cat_expr = *cmp_expr
           ( $'||' *cmp_expr reduce(AST_CAT, 2) ($'||' *cmp_expr reduce(AST_CAT, 2) | epsilon)
           | $'&'  *cmp_expr reduce(AST_CAT, 2) ($'&'  *cmp_expr reduce(AST_CAT, 2) | epsilon)
           | epsilon
           );
X_alt = nInc() *cat_expr FENCE($'|' *X_alt | epsilon);
alt_expr = nPush() *X_alt reduce(ALT, nTop_count) nPop();
expr = *alt_expr FENCE(  $'||:=' *alt_expr reduce(CATASSIGN, 2)
                       | $'+:='  *alt_expr reduce(ADDASSIGN, 2)
                       | $'-:='  *alt_expr reduce(SUBASSIGN, 2)
                       | $':=:'  *alt_expr reduce(EXCHG, 2)
                       | $':='   *alt_expr reduce(ASSIGN, 2)
                       | epsilon
                      );
$'?-match'  = $' '  '?-'  $' ';
match_or_expr = *expr FENCE($'?-match' *alt_expr reduce(REPLN, 2)
                           | $'?' *alt_expr $'<-arrow' *alt_expr reduce(REPLACE, 3)
                           | $'?' *alt_expr reduce(MATCH, 2)
                           | epsilon);
opt_nl = (nl | epsilon);
stmt_body = *opt_nl FENCE(*compound_stmt | *case_stmt | *if_stmt | *while_stmt | *unless_stmt | *until_stmt | *repeat_stmt | *for_stmt | *return_stmt | *stop_stmt | *fail_stmt | *exit_stmt | *next_stmt | *match_or_expr);
if_stmt    = $'if'     *match_or_expr $'then' FENCE(*opt_nl *stmt_body $'else' *opt_nl *stmt_body reduce(IFELSE, 3) | *opt_nl *stmt_body reduce(IF, 2));
while_stmt = $'while'  *match_or_expr $'do'   *opt_nl *stmt_body reduce(WHILE,  2);
unless_stmt = $'unless' *match_or_expr $'then' *opt_nl *stmt_body reduce(UNLESS, 2);
until_stmt  = $'until'  *match_or_expr $'do'   *opt_nl *stmt_body reduce(UNTIL,  2);
repeat_stmt = $'repeat' *opt_nl *stmt_body reduce(REPEAT, 1);
for_body = $'do' BREAK(nl);
for_stmt = $'for' shift(*Id, AST_VAR) $'from' *match_or_expr $'to' *match_or_expr
           FENCE($'by' *match_or_expr reduce(RB_FOR, 4) | reduce(RB_FOR, 3))
           *for_body;
return_stmt = $'return' FENCE(*match_or_expr reduce(RB_RETURN_VAL, 1) | reduce(RB_RETURN, 0));
exit_stmt   = $'exit'   reduce(RB_EXIT, 0);
fail_stmt   = $'fail'   reduce(RB_FAIL, 0);
stop_stmt   = $'stop'   reduce(RB_STOP, 0);
next_stmt   = $'next'   reduce(RB_NEXT, 0);
compound_end       = $' ' '}';
compound_item      = nInc() *stmt_inline $';' $' ' nl;
compound_body_tail = FENCE(*compound_end | *compound_item *compound_body_tail);
compound_stmt = $' ' '{' $' ' nl nPush() *compound_body_tail reduce(COMPOUND, nTop_count) nPop();
CASE_CLAUSE   = 'CASE_CLAUSE';
CASE_DEFAULT  = 'CASE_DEFAULT';
stmt_inline = $' ' FENCE(*compound_stmt | *case_stmt | *if_stmt | *while_stmt | *unless_stmt | *until_stmt | *repeat_stmt | *for_stmt | *return_stmt | *stop_stmt | *fail_stmt | *exit_stmt | *next_stmt | *match_or_expr) $' ';
caseclause_guard   = nInc() *match_or_expr $':' *stmt_inline reduce(CASE_CLAUSE, 2);
rb_default_kw  = $' '  'default'   $' ';
caseclause_default = nInc() *rb_default_kw $':' *stmt_inline reduce(CASE_DEFAULT, 1);
caseclause         = FENCE(*caseclause_default | *caseclause_guard);
caselist_tail = FENCE($';' FENCE(*caseclause *caselist_tail | epsilon) | epsilon);
caselist      = *caseclause *caselist_tail;
case_stmt = *rb_case_kw nPush() nInc() *match_or_expr $'of' $'{' *caselist $'}' reduce(RB_CASE, nTop_count) nPop();
stmt = $' ' FENCE(*compound_stmt | *case_stmt | *if_stmt | *while_stmt | *unless_stmt | *until_stmt | *repeat_stmt | *for_stmt | *return_stmt | *stop_stmt | *fail_stmt | *exit_stmt | *next_stmt | *match_or_expr) $' ' FENCE(nl | epsilon);
func_end      = $'end' $' ' nl;
blank_line    = $' ' nl;
func_body_stmt = FENCE(*blank_line *func_body_stmt | *func_end | nInc() *stmt *func_body_stmt);
func_body     = nPush() *func_body_stmt reduce(BODY, nTop_count) nPop();
X_params  = nInc() shift(*Id, AST_VAR) FENCE($',' *X_params | epsilon);
opt_params = nPush() FENCE(*X_params | epsilon) reduce(PARAMS, nTop_count) nPop();
X_fields  = nInc() shift(*Id, AST_VAR) FENCE($',' *X_fields | epsilon);
opt_fields = nPush() FENCE(*X_fields | epsilon) reduce(FIELDS, nTop_count) nPop();
X_locals   = nInc() shift(*Id, AST_VAR) FENCE($',' *X_locals | epsilon);
opt_locals = nPush() FENCE($'local' *X_locals FENCE($';' | epsilon) $' ' nl | epsilon) reduce(LOCALS, nTop_count) nPop();
init_expr   = $' ' *match_or_expr $' ';
opt_initial = FENCE(nPush() $'initial' *init_expr $';' $' ' nl reduce(RB_INITIAL, 1) nPop() | reduce(RB_INITIAL, 0));
function_decl =
    $'function' shift(*Id, AST_VAR) $'(' *opt_params $')' $' ' nl
    *opt_locals
    *opt_initial
    *func_body
    reduce(FUNC_DECL, 5);
record_decl =
    $'record' shift(*Id, AST_VAR) $'(' *opt_fields $')' $' ' nl
    reduce(REC_DECL, 2);
func_cmd = nInc() *function_decl;
rec_cmd  = nInc() *record_decl;
blank    = $' ' nl;
Command  = *func_cmd | *rec_cmd | *blank;
Compiland = nPush() ARBNO(Command) reduce(Parse, nTop_count) nPop();
label_n = 0;
/* ==================================================================================================================== */
function new_label() {
    label_n = label_n + 1;
    new_label = 'rb_' label_n;
    return;
}
/* ==================================================================================================================== */
function emit_subj(s) {
    TDump(Tree('STMT', '', 1, Tree(':subj', '', 1, s)));
    return;
}
/* ==================================================================================================================== */
function emit_go(tgt) {
    TDump(Tree('STMT', '', 1, Tree(':go', tgt)));
    return;
}
/* ==================================================================================================================== */
function emit_lbl(lbl) {
    TDump(Tree('STMT', '', 1, Tree(':lbl', lbl)));
    return;
}
/* ==================================================================================================================== */
function emit_assign(lhs, rhs) {
    TDump(Tree('STMT', '', 3,
               Tree(':eq',   ''),
               Tree(':subj', '', 1, lhs),
               Tree(':repl', '', 1, rhs)));
    return;
}
/* ==================================================================================================================== */
function emit_match(lhs, rhs) {
    TDump(Tree('STMT', '', 2,
               Tree(':subj', '', 1, lhs),
               Tree(':pat',  '', 1, rhs)));
    return;
}
/* ==================================================================================================================== */
function emit_subj_goSF(s, sLbl, fLbl) {
    TDump(Tree('STMT', '', 3,
               Tree(':subj', '', 1, s),
               Tree(':goS', sLbl),
               Tree(':goF', fLbl)));
    return;
}
/* ==================================================================================================================== */
function emit_subj_goS(s, lbl) {
    TDump(Tree('STMT', '', 2,
               Tree(':subj', '', 1, s),
               Tree(':goS', lbl)));
    return;
}
/* ==================================================================================================================== */
function emit_replace(s, p, r) {
    TDump(Tree('STMT', '', 3,
               Tree(':subj', '', 1, s),
               Tree(':pat',  '', 1, p),
               Tree(':repl', '', 1, r)));
    return;
}
/* ==================================================================================================================== */
function lower_case(x, lEnd, lNext, lMatch, tempVar, tempExpr, tmpN, i, cl, ck) {
    lEnd    = new_label();
    tmpN    = label_n;
    tempVar = 'rb_case_' tmpN;
    tempExpr = tree(AST_VAR, tempVar);
    TDump(Tree('STMT', '', 1,
               Tree(':subj', '', 1,
                    Tree(AST_ASSIGN, '', 2, tempExpr, lower_atom(c(x)[1])))));
    i = 1;
    lNext = '';
    while (i = LT(i, n(x)) i + 1) {
        cl = c(x)[i];
        ck = t(cl);
        if (DIFFER(lNext)) { emit_lbl(lNext); lNext = ''; }
        if (IDENT(ck, 'CASE_DEFAULT')) {
            lower_stmt(c(cl)[1]);
            emit_go(lEnd);
        } else {
            lMatch = new_label();
            lNext  = new_label();
            emit_subj_goSF(Tree(AST_FNC, 'IDENT', 2, tempExpr, lower_atom(c(cl)[1])), lMatch, lNext);
            emit_lbl(lMatch);
            lower_stmt(c(cl)[2]);
            emit_go(lEnd);
        }
    }
    if (DIFFER(lNext)) emit_lbl(lNext);
    emit_lbl(lEnd);
    return;
}
/* ==================================================================================================================== */
function lower_atom(x, k, acc, i, idxN, idxBase, idxI) {
    k = t(x);
    if (IDENT(k, 'AST_VAR'))       lower_atom = tree(AST_VAR, REPLACE(v(x), &LCASE, &UCASE));
    else if (IDENT(k, 'AST_ILIT')) lower_atom = x;
    else if (IDENT(k, 'AST_QLIT')) lower_atom = x;
    else if (IDENT(k, 'AST_FLIT')) lower_atom = x;
    else if (IDENT(k, 'AST_KEYWORD')) lower_atom = tree(AST_KEYWORD, REPLACE(v(x), &LCASE, &UCASE));
    else if (IDENT(k, 'AST_FNC')) {
        acc = tree(AST_FNC, v(x));
        i = 0;
        while (i = LT(i, n(x)) i + 1) acc = Append(acc, lower_atom(c(x)[i]));
        lower_atom = acc;
    }
    else if (IDENT(k, 'AST_MNS')) {
        lower_atom = Tree(AST_MNS, '', 1, lower_atom(c(x)[1]));
    }
    else if (IDENT(k, 'AST_POS')) lower_atom = lower_atom(c(x)[1]);
    else if (IDENT(k, 'AST_ADD')) lower_atom = Tree(AST_ADD, '', 2, lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    else if (IDENT(k, 'AST_SUB')) lower_atom = Tree(AST_SUB, '', 2, lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    else if (IDENT(k, 'AST_MUL')) lower_atom = Tree(AST_MUL, '', 2, lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    else if (IDENT(k, 'AST_DIV')) lower_atom = Tree(AST_DIV, '', 2, lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    else if (IDENT(k, 'AST_CAT')) lower_atom = Tree(AST_CAT, '', 2, lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    else if (IDENT(k, 'CMP_EQ')) lower_atom = Tree(AST_FNC, 'EQ',     2, lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    else if (IDENT(k, 'CMP_NE')) lower_atom = Tree(AST_FNC, 'NE',     2, lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    else if (IDENT(k, 'CMP_LT')) lower_atom = Tree(AST_FNC, 'LT',     2, lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    else if (IDENT(k, 'CMP_LE')) lower_atom = Tree(AST_FNC, 'LE',     2, lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    else if (IDENT(k, 'CMP_GT')) lower_atom = Tree(AST_FNC, 'GT',     2, lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    else if (IDENT(k, 'CMP_GE')) lower_atom = Tree(AST_FNC, 'GE',     2, lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    else if (IDENT(k, 'CMP_SEQ')) lower_atom = Tree(AST_FNC, 'IDENT',  2, lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    else if (IDENT(k, 'CMP_SNE')) lower_atom = Tree(AST_FNC, 'DIFFER', 2, lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    else if (IDENT(k, 'CMP_SLT')) lower_atom = Tree(AST_FNC, 'LLT',   2, lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    else if (IDENT(k, 'CMP_SLE')) lower_atom = Tree(AST_FNC, 'LLE',   2, lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    else if (IDENT(k, 'CMP_SGT')) lower_atom = Tree(AST_FNC, 'LGT',   2, lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    else if (IDENT(k, 'CMP_SGE')) lower_atom = Tree(AST_FNC, 'LGE',   2, lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    else if (IDENT(k, 'AST_POW'))   lower_atom = Tree(AST_POW, '',      2, lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    else if (IDENT(k, 'REMDR'))   lower_atom = Tree(AST_FNC, 'REMDR', 2, lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    else if (IDENT(k, 'AST_IDX')) {
        idxN = n(x);
        idxBase = lower_atom(c(x)[1]);
        if (EQ(idxN, 2)) lower_atom = Tree(AST_IDX, '', 2, idxBase, lower_atom(c(x)[2]));
        else {
            lower_atom = Tree(AST_IDX, '', 1, idxBase);
            idxI = 2;
            while (GE(idxI, 0) LT(idxI, idxN + 1)) {
                lower_atom = Append(lower_atom, lower_atom(c(x)[idxI]));
                idxI = idxI + 1;
            }
        }
    }
    else if (IDENT(k, 'AST_CAPT_COND_ASGN')) {
        if (EQ(n(x), 1)) lower_atom = Tree(AST_CAPT_COND, '', 2, tree(AST_NUL, ''), lower_atom(c(x)[1]));
        else lower_atom = Tree(AST_CAPT_COND, '', 2, lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    }
    else if (IDENT(k, 'AST_CAPT_IMMED_ASGN'))
        lower_atom = Tree(AST_CAPT_IMM,  '', 2, lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    else if (IDENT(k, 'AST_NOTPAT'))  lower_atom = Tree(AST_FNC, 'DIFFER',  1, lower_atom(c(x)[1]));
    else if (IDENT(k, 'AST_BANGPAT')) lower_atom = Tree(AST_ITERATE, '',     1, lower_atom(c(x)[1]));
    else if (IDENT(k, 'AST_VALUEPAT')) lower_atom = Tree(AST_FNC, 'IDENT',  1, lower_atom(c(x)[1]));
    else if (IDENT(k, 'AST_INDIRECT')) lower_atom = Tree(AST_INDIRECT, '',   1, lower_atom(c(x)[1]));
    else if (IDENT(k, 'AST_CAPT_CURSOR')) lower_atom = x;
    else if (IDENT(k, 'ALT')) {
        if (EQ(n(x), 1)) lower_atom = lower_atom(c(x)[1]);
        else {
            acc = tree(AST_ALT, '', 0, NULL);
            i = 0;
            while (i = LT(i, n(x)) i + 1) acc = Append(acc, lower_atom(c(x)[i]));
            lower_atom = acc;
        }
    }
    else if (IDENT(k, 'ADDASSIGN'))
        lower_atom = Tree(AST_ASSIGN, '', 2, lower_atom(c(x)[1]), Tree(AST_ADD, '', 2, lower_atom(c(x)[1]), lower_atom(c(x)[2])));
    else if (IDENT(k, 'SUBASSIGN'))
        lower_atom = Tree(AST_ASSIGN, '', 2, lower_atom(c(x)[1]), Tree(AST_SUB, '', 2, lower_atom(c(x)[1]), lower_atom(c(x)[2])));
    else if (IDENT(k, 'CATASSIGN'))
        lower_atom = Tree(AST_ASSIGN, '', 2, lower_atom(c(x)[1]), Tree(AST_CAT, '', 2, lower_atom(c(x)[1]), lower_atom(c(x)[2])));
    else if (IDENT(k, 'EXCHG'))
        lower_atom = Tree(AST_FNC, 'EXCHG', 2, lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    else lower_atom = x;
    return;
}
/* ==================================================================================================================== */
function lower_stmt(x, k, lblS, lblF, lblM, forVar, forStep) {
    k = t(x);
    if (IDENT(k, 'ASSIGN'))          emit_assign(lower_atom(c(x)[1]), lower_atom(c(x)[2]));
    else if (IDENT(k, 'ADDASSIGN'))  emit_assign(lower_atom(c(x)[1]), Tree(AST_ADD, '', 2, lower_atom(c(x)[1]), lower_atom(c(x)[2])));
    else if (IDENT(k, 'SUBASSIGN'))  emit_assign(lower_atom(c(x)[1]), Tree(AST_SUB, '', 2, lower_atom(c(x)[1]), lower_atom(c(x)[2])));
    else if (IDENT(k, 'CATASSIGN'))  emit_assign(lower_atom(c(x)[1]), Tree(AST_CAT, '', 2, lower_atom(c(x)[1]), lower_atom(c(x)[2])));
    else if (IDENT(k, 'EXCHG'))      TDump(Tree('STMT', '', 1, Tree(':subj', '', 1, Tree(AST_FNC, 'EXCHG', 2, lower_atom(c(x)[1]), lower_atom(c(x)[2])))));
    else if (IDENT(k, 'MATCH'))      { emit_match(lower_atom(c(x)[1]), lower_atom(c(x)[2])); }
    else if (IDENT(k, 'REPLACE'))    emit_replace(lower_atom(c(x)[1]), lower_atom(c(x)[2]), lower_atom(c(x)[3]));
    else if (IDENT(k, 'REPLN'))      emit_replace(lower_atom(c(x)[1]), lower_atom(c(x)[2]), tree(AST_NUL, ''));
    else if (IDENT(k, 'RB_RETURN'))  emit_go('RETURN');
    else if (IDENT(k, 'RB_RETURN_VAL')) {
        emit_assign(tree(AST_VAR, curFname), lower_atom(c(x)[1]));
        emit_go('RETURN');
    }
    else if (IDENT(k, 'RB_FAIL'))    emit_go('FRETURN');
    else if (IDENT(k, 'RB_STOP'))    TDump(Tree('STMT', '', 1, Tree(':end', '')));
    else if (IDENT(k, 'RB_EXIT'))    TDump(Tree('STMT', '', 1, Tree(':end', '')));
    else if (IDENT(k, 'RB_NEXT'))    { }
    else if (IDENT(k, 'IF')) {
        lblS = new_label();
        lblF = new_label();
        lblM = new_label();
        emit_subj_goSF(tree('AST_NUL', ''), lblS, lblF);
        emit_lbl(lblS);
        lower_stmt(c(x)[1]);
        emit_go(lblM);
        emit_lbl(lblF);
        lower_stmt(c(x)[2]);
        emit_lbl(lblM);
    }
    else if (IDENT(k, 'WHILE')) {
        lblS = new_label();
        lblM = new_label();
        lblF = new_label();
        emit_lbl(lblS);
        emit_subj_goSF(tree('AST_NUL', ''), lblM, lblF);
        emit_lbl(lblM);
        lower_stmt(c(x)[1]);
        emit_go(lblS);
        emit_lbl(lblF);
    }
    else if (IDENT(k, 'UNLESS')) {
        lblF = new_label();
        lblS = new_label();
        emit_subj_goSF(tree('AST_NUL', ''), lblS, lblF);
        emit_lbl(lblF);
        lower_stmt(c(x)[1]);
        emit_lbl(lblS);
    }
    else if (IDENT(k, 'UNTIL')) {
        lblS = new_label();
        lblF = new_label();
        lblM = new_label();
        emit_lbl(lblS);
        emit_subj_goSF(tree('AST_NUL', ''), lblM, lblF);
        emit_lbl(lblF);
        lower_stmt(c(x)[1]);
        emit_go(lblS);
        emit_lbl(lblM);
    }
    else if (IDENT(k, 'REPEAT')) {
        lblS = new_label();
        lblM = new_label();
        emit_lbl(lblS);
        emit_go(lblS);
        emit_lbl(lblM);
    }
    else if (IDENT(k, 'IFELSE')) {
        lblS = new_label();
        lblF = new_label();
        lblM = new_label();
        emit_subj_goSF(tree('AST_NUL', ''), lblS, lblF);
        emit_lbl(lblS);
        lower_stmt(c(x)[1]);
        emit_go(lblM);
        emit_lbl(lblF);
        lower_stmt(c(x)[2]);
        emit_lbl(lblM);
    }
    else if (IDENT(k, 'RB_FOR')) {
        forVar  = lower_atom(c(x)[1]);
        forStep = (EQ(n(x), 4) lower_atom(c(x)[4]), Tree(AST_ILIT, '1'));
        lblS = new_label();
        lblM = new_label();
        TDump(Tree('STMT', '', 1, Tree(':subj', '', 1, Tree(AST_ASSIGN, '', 2, forVar, lower_atom(c(x)[2])))));
        emit_lbl(lblS);
        emit_subj_goS(Tree(AST_FNC, 'GT', 2, forVar, lower_atom(c(x)[3])), lblM);
        TDump(Tree('STMT', '', 1, Tree(':subj', '', 1, Tree(AST_ASSIGN, '', 2, forVar, Tree(AST_ADD, '', 2, forVar, forStep)))));
        emit_go(lblS);
        emit_lbl(lblM);
    }
    else if (IDENT(k, 'RB_CASE'))       lower_case(x);
    else if (IDENT(k, 'COMPOUND')) {
        i = 0;
        while (i = LT(i, n(x)) i + 1) lower_stmt(c(x)[i]);
    }
    else                            emit_subj(lower_atom(x));
    return;
}
curFname = '';
/* ==================================================================================================================== */
function lower_function_decl(x, nm, pm, lc, init, bd, fname, pstr, lstr, i, lbl) {
    nm    = c(x)[1];
    pm    = c(x)[2];
    lc    = c(x)[3];
    init  = c(x)[4];
    bd    = c(x)[5];
    fname = REPLACE(v(nm), &LCASE, &UCASE);
    curFname = fname;
    pstr  = '';
    i = 0;
    while (i = LT(i, n(pm)) i + 1)
        pstr = pstr (GT(i, 1) ',', '') REPLACE(v(c(pm)[i]), &LCASE, &UCASE);
    lstr  = '';
    i = 0;
    while (i = LT(i, n(lc)) i + 1)
        lstr = lstr (GT(i, 1) ',', '') REPLACE(v(c(lc)[i]), &LCASE, &UCASE);
    emit_subj(Tree('AST_FNC', 'DEFINE', 1, tree(AST_QLIT, fname '(' pstr ')' (DIFFER(lstr) '/' lstr, ''))));
    lbl = new_label();
    emit_go(lbl);
    emit_lbl(fname);
    if (DIFFER(n(init), 0)) {
        lblS = new_label();
        initVar = 'rb_init_' fname;
        TDump(Tree('STMT', '', 2,
                   Tree(':subj', '', 1, tree(AST_VAR, initVar)),
                   Tree(':goS', lblS)));
        lower_stmt(c(init)[1]);
        emit_subj(Tree('AST_ASSIGN', '', 2, tree(AST_VAR, initVar), tree(AST_ILIT, '1')));
        emit_lbl(lblS);
    }
    i = 0;
    while (i = LT(i, n(bd)) i + 1)
        lower_stmt(c(bd)[i]);
    emit_go('RETURN');
    emit_lbl(lbl);
    return;
}
/* ==================================================================================================================== */
function lower_record_decl(x, nm, fd, fname, fstr, i) {
    nm    = c(x)[1];
    fd    = c(x)[2];
    fname = REPLACE(v(nm), &LCASE, &UCASE);
    fstr  = '';
    i = 0;
    while (i = LT(i, n(fd)) i + 1)
        fstr = fstr (GT(i, 1) ',', '') REPLACE(v(c(fd)[i]), &LCASE, &UCASE);
    emit_subj(Tree('AST_FNC', 'DATA', 1, tree(AST_QLIT, fname '(' fstr ')')));
    return;
}
/* ==================================================================================================================== */
function lower_decl(x, k) {
    k = t(x);
    if (IDENT(k, 'FUNC_DECL')) lower_function_decl(x);
    else if (IDENT(k, 'REC_DECL'))  lower_record_decl(x);
    return;
}
InitCounter();
InitStack();
Src = '';
while (Line = INPUT) Src = Src Line nl;
if (Src ? Compiland) {
    parseRoot = Pop();
    if (DIFFER(parseRoot)) {
        i = 0;
        while (i = LT(i, n(parseRoot)) i + 1) lower_decl(c(parseRoot)[i]);
        emit_subj(tree('AST_FNC', 'MAIN'));
    }
} else {
    OUTPUT = 'Parse Error';
}
