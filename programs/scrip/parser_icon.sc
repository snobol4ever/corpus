// parser_icon.sc — PARSER-IC: Icon pattern-based frontend in Snocone.
//
// ONE Compiland PATTERN matched once against the entire source; emits one
// IR tree per procedure via TDump.  Byte-identical (whitespace-normalized)
// to scrip's existing Icon frontend --dump-ir output.
//
// Naming: non-terminals from icon-sp.ebnf; IR tags from ir.h E_*;
// whitespace: $'  ' = required, $' ' = optional (beauty.sno convention).
// decompose_proc is the ONE tree-building helper (proc-frame collapse).
/*====================================================================================================================*/
E_ASSIGN    = "'E_ASSIGN'";   E_SCAN      = "'E_SCAN'";
E_ALTERNATE = "'E_ALTERNATE'";E_AUGOP     = "'E_AUGOP'";
E_ADD       = "'E_ADD'";      E_SUB       = "'E_SUB'";
E_MUL       = "'E_MUL'";      E_DIV       = "'E_DIV'";
E_EQ        = "'E_EQ'";       E_NE        = "'E_NE'";
E_LT        = "'E_LT'";       E_LE        = "'E_LE'";
E_GT        = "'E_GT'";       E_GE        = "'E_GE'";
E_IF        = "'E_IF'";       E_WHILE     = "'E_WHILE'";
E_EVERY     = "'E_EVERY'";    E_RETURN    = "'E_RETURN'";
E_FNC       = "'E_FNC'";      E_SEQ_EXPR  = "'E_SEQ_EXPR'";
E_POW       = "'E_POW'";      E_MNS       = "'E_MNS'";
E_PLS       = "'E_PLS'";      E_CSET_COMPL= "'E_CSET_COMPL'";
E_NONNULL   = "'E_NONNULL'";  E_ITERATE   = "'E_ITERATE'";
E_SIZE      = "'E_SIZE'";     E_RANDOM    = "'E_RANDOM'";
E_REVASSIGN = "'E_REVASSIGN'"; E_SWAP      = "'E_SWAP'";
E_REVSWAP   = "'E_REVSWAP'";   E_IDENTICAL = "'E_IDENTICAL'";
E_NOT       = "'E_NOT'";
E_TO        = "'E_TO'";        E_TO_BY     = "'E_TO_BY'";
E_CAT       = "'E_CAT'";       E_LCONCAT   = "'E_LCONCAT'";
E_Parse     = "'Parse'";
r_nTop      = '*(GT(nTop(), 1) nTop())';
/*====================================================================================================================*/
White        = (  SPAN(' ' tab) FENCE('#' BREAK(nl) | epsilon)
               |  '#' BREAK(nl)
               );
Gray         = White | epsilon;
$' '         = Gray;
$'  '        = White;
nl_one       = ANY(nl);
/*--------------------------------------------------------------------------------------------------------------------*/
// Token classifiers — PATTERNS mirroring icon_lex.h TK_* names.
id_first     = ANY(&UCASE &LCASE '_');
id_rest      = SPAN(digits &UCASE &LCASE '_');
id_pat       = (id_first (id_rest | epsilon));
int_pat      = SPAN(digits);
// String: capture inner body (without quotes) via dot-capture + push_qlit.
str_pat      = ('"' BREAK('"') . strbody '"');
semi_opt     = (';' | epsilon);
/*--------------------------------------------------------------------------------------------------------------------*/
// Keyword tokens — leading optional whitespace only (next token supplies its own left-ws as effective suffix).
$'if'        = $' ' 'if'       ;  $'then'      = $' ' 'then'     ;
$'else'      = $' ' 'else'     ;  $'while'     = $' ' 'while'    ;
$'do'        = $' ' 'do'       ;  $'every'     = $' ' 'every'    ;
$'return'    = $' ' 'return'   ;  $'end'       = $' ' 'end'      ;
$'procedure' = $' ' 'procedure';
$'to'        = $' ' 'to'       ;  $'by'        = $' ' 'by'       ;
/*--------------------------------------------------------------------------------------------------------------------*/
// Operator tokens — optional whitespace both sides.  Open brackets: ws after only.  Close: ws before only.
$'|'   = $' ' '|' @or_a (ANY('|') | epsilon) @or_b *EQ(or_a, or_b) $' ';
$'||'  = $' ' '||' @cat_a (ANY('|:') | epsilon) @cat_b *EQ(cat_a, cat_b) $' ';
$'|||' = $' ' '|||' @lc_a (ANY(':')  | epsilon) @lc_b *EQ(lc_a, lc_b) $' ';
$':='  = $' ' ':='  $' ';
$'?'   = $' ' '?'  $' ';  $','   = $' ' ','   $' ';
$'+'   = $' ' '+'  $' ';  $'-'   = $' ' '-'   $' ';
$'*'   = $' ' '*'  $' ';  $'/'   = $' ' '/'   $' ';
$'<='  = $' ' '<=' $' ';  $'>='  = $' ' '>='  $' ';
$'~='  = $' ' '~=' $' ';  $'='   = $' ' '='   $' ';
$';'   = $' ' ';'  $' ';  $'^'   = $' ' '^'   $' ';
$'+:='   = $' ' '+:='   $' ';  $'-:='   = $' ' '-:='   $' ';
$'*:='   = $' ' '*:='   $' ';  $'/:='   = $' ' '/:='   $' ';
$'%:='   = $' ' '%:='   $' ';  $'^:='   = $' ' '^:='   $' ';
$'||:='  = $' ' '||:='  $' ';  $'++:='  = $' ' '++:='  $' ';
$'--:='  = $' ' '--:='  $' ';  $'**:='  = $' ' '**:='  $' ';
$'?:='   = $' ' '?:='   $' ';  $'=:='   = $' ' '=:='   $' ';
$'==:='  = $' ' '==:='  $' ';  $'~=:='  = $' ' '~=:='  $' ';
$'<:='   = $' ' '<:='   $' ';  $'<=:='  = $' ' '<=:='  $' ';
$'>:='   = $' ' '>:='   $' ';  $'>=:='  = $' ' '>=:='  $' ';
$'<<:='  = $' ' '<<:='  $' ';  $'<<=:=' = $' ' '<<=:=' $' ';
$'>>:='  = $' ' '>>:='  $' ';  $'>>=:=' = $' ' '>>=:=' $' ';
$'~==:=' = $' ' '~==:=' $' ';
$'<-'    = $' ' '<-'    $' ';  $'<->'   = $' ' '<->'   $' ';
$':=:'   = $' ' ':=:'   $' ';  $'==='   = $' ' '==='   $' ';
$'~===' = $' ' '~==='  $' ';
$'~'   = $' ' '~'  $' ';  $'!'   = $' ' '!'   $' ';
$'\\'  = $' ' '\' $' ';
$'('   = $' ' '(' $' ';  $')'   = $' ' ')';
$'{'   = $' ' '{' $' ';  $'}'   = $' ' '}';
$'<'   = $' ' '<' @lt_a (ANY('-=<') | epsilon) @lt_b *EQ(lt_a, lt_b) $' ';
$'>'   = $' ' '>' @gt_a (ANY('=>')  | epsilon) @gt_b *EQ(gt_a, gt_b);
/*====================================================================================================================*/
// push_qlit — shift (E_QLIT body) using dot-captured strbody.
function push_qlit() {
    Push(tree('E_QLIT', strbody));
    push_qlit = .dummy;
    nreturn;
}
Push_qlit = (epsilon . *push_qlit());
/*--------------------------------------------------------------------------------------------------------------------*/
// decompose_proc — pop proc-frame children; build (STMT :subj (E_FNC pname ...)).
// pname is read from v(child[1]) — the (E_VAR pname) shifted by Prochead.
function decompose_proc(n_kids, kids, pname, proc, i) {
    n_kids = TopCounter();
    kids = GT(n_kids, 0) ARRAY('1:' n_kids);
    i = n_kids;
    while (GT(i, 0)) {
        kids[i] = Pop();
        i = i - 1;
    }
    pname = v(kids[1]);
    proc = Tree('E_FNC', pname, n_kids);
    i = 1;
    while (LE(i, n_kids)) {
        proc = Append(proc, kids[i]);
        i = i + 1;
    }
    Push(Tree('STMT', '', 1, Tree(':subj', '', 1, proc)));
    decompose_proc = .dummy;
    nreturn;
}
Decompose_proc = (epsilon . *decompose_proc());
/*====================================================================================================================*/
// Expression tower — canonical names from icon-sp.ebnf.
// Expr11 = primary; tighter -> looser: Expr10 (unary) -> Expr8 (pow) ->
// Expr7 (mul) -> Expr6 (add) -> Expr4 (cmp) -> Expr3 (alt) -> Expr1 (assign).
/*--------------------------------------------------------------------------------------------------------------------*/
If    = ( $'if'    $'  ' *Expr  $'then' $'  ' *Expr
          (  $'else' $'  ' *Expr  (E_IF & 3)
          |  (E_IF & 2)
          )
        );
While = ( $'while' $'  ' *Expr  $'do' $'  ' *Expr  (E_WHILE & 2) );
Every = ( $'every' $'  ' *Expr
          (  $'do' $'  ' *Expr  (E_EVERY & 2)
          |  (E_EVERY & 1)
          )
        );
/*--------------------------------------------------------------------------------------------------------------------*/
ArgFirst  = ( $' ' *Expr  nInc() );
ArgRest   = ( $','  *Expr  nInc() );
CallArgs  = ( ArgFirst ARBNO(ArgRest) | epsilon );
Call      = ( nPush()
              $' ' id_pat ~ 'E_VAR'  nInc()
              $'(' CallArgs $')'
              (E_FNC & 'nTop()')
              nPop()
            );
/*--------------------------------------------------------------------------------------------------------------------*/
SeqRest   = ( $';' *Expr  nInc() );
Paren     = ( nPush()
              $'(' *Expr  nInc()  ARBNO(SeqRest)  $')'
              (E_SEQ_EXPR & r_nTop)
              nPop()
            );
/*--------------------------------------------------------------------------------------------------------------------*/
CompoundFirst = ( $' ' *Expr $' ' semi_opt $' ' nInc() );
CompoundRest  = ( $' ' *Expr $' ' semi_opt $' ' nInc() );
Compound      = ( nPush()
                  $'{'
                  ( CompoundFirst ARBNO(CompoundRest) | epsilon )
                  $'}'
                  (E_SEQ_EXPR & r_nTop)
                  nPop()
                );
/*--------------------------------------------------------------------------------------------------------------------*/
Expr11 = (   If  |  While  |  Every  |  Call  |  Paren  |  Compound
         |   $' ' str_pat Push_qlit
         |   $' ' int_pat ~ 'E_ILIT'
         |   $' ' id_pat  ~ 'E_VAR'
         );
/*--------------------------------------------------------------------------------------------------------------------*/
Expr10 = (   $' ' '-'  *Expr10 (E_MNS         & 1)
         |   $' ' '+'  *Expr10 (E_PLS         & 1)
         |   $'~'      *Expr10 (E_CSET_COMPL  & 1)
         |   $'\\'     *Expr10 (E_NONNULL     & 1)
         |   $'!'      *Expr10 (E_ITERATE     & 1)
         |   $' ' '*'  *Expr10 (E_SIZE        & 1)
         |   $' ' '?'  *Expr10 (E_RANDOM      & 1)
         |   *Expr11
         );
/*--------------------------------------------------------------------------------------------------------------------*/
Expr8     = ( *Expr10 FENCE($'^' *Expr8 (E_POW & 2) | epsilon) );
/*--------------------------------------------------------------------------------------------------------------------*/
Expr7tail = FENCE( $'*' *Expr8 (E_MUL & 2) | $'/' *Expr8 (E_DIV & 2) );
Expr7     = ( *Expr8 ARBNO(Expr7tail) );
/*--------------------------------------------------------------------------------------------------------------------*/
Expr6tail = FENCE( $'+' *Expr7 (E_ADD & 2) | $'-' *Expr7 (E_SUB & 2) );
Expr6     = ( *Expr7 ARBNO(Expr6tail) );
/*--------------------------------------------------------------------------------------------------------------------*/
Expr5tail = FENCE( $'|||' *Expr6 (E_LCONCAT & 2) | $'||' *Expr6 (E_CAT & 2) );
Expr5     = ( *Expr6 ARBNO(Expr5tail) );
/*--------------------------------------------------------------------------------------------------------------------*/
Expr4tail = FENCE( $'<=' *Expr5 (E_LE & 2) | $'>=' *Expr5 (E_GE & 2)
                 | $'~=' *Expr5 (E_NE & 2) | $'<'  *Expr5 (E_LT & 2)
                 | $'>'  *Expr5 (E_GT & 2) | $'='  *Expr5 (E_EQ & 2)
                 );
Expr4     = ( *Expr5 ARBNO(Expr4tail) );
/*--------------------------------------------------------------------------------------------------------------------*/
X3        = ( nInc() *Expr4 FENCE($'|' *X3 | epsilon) );
Expr3     = ( nPush() X3 (E_ALTERNATE & r_nTop) nPop() );
/*--------------------------------------------------------------------------------------------------------------------*/
Expr2     = ( *Expr3
              FENCE(  $'to' $'  ' *Expr3
                      FENCE( $'by' $'  ' *Expr3 (E_TO_BY & 3)
                           | (E_TO & 2)
                           )
                   |  epsilon
                   )
            );
/*--------------------------------------------------------------------------------------------------------------------*/
Expr1     = ( *Expr2
              FENCE(
                  $'<<=:=' *Expr1 (E_AUGOP  & 2)
              |   $'>>=:=' *Expr1 (E_AUGOP  & 2)
              |   $'~==:=' *Expr1 (E_AUGOP  & 2)
              |   $'<=:='  *Expr1 (E_AUGOP  & 2)
              |   $'>=:='  *Expr1 (E_AUGOP  & 2)
              |   $'~=:='  *Expr1 (E_AUGOP  & 2)
              |   $'==:='  *Expr1 (E_AUGOP  & 2)
              |   $'<<:='  *Expr1 (E_AUGOP  & 2)
              |   $'>>:='  *Expr1 (E_AUGOP  & 2)
              |   $'||:='  *Expr1 (E_AUGOP  & 2)
              |   $'++:='  *Expr1 (E_AUGOP  & 2)
              |   $'--:='  *Expr1 (E_AUGOP  & 2)
              |   $'**:='  *Expr1 (E_AUGOP  & 2)
              |   $'+:='   *Expr1 (E_AUGOP  & 2)
              |   $'-:='   *Expr1 (E_AUGOP  & 2)
              |   $'*:='   *Expr1 (E_AUGOP  & 2)
              |   $'/:='   *Expr1 (E_AUGOP  & 2)
              |   $'%:='   *Expr1 (E_AUGOP  & 2)
              |   $'^:='   *Expr1 (E_AUGOP  & 2)
              |   $'?:='   *Expr1 (E_AUGOP  & 2)
              |   $'=:='   *Expr1 (E_AUGOP  & 2)
              |   $'<:='   *Expr1 (E_AUGOP  & 2)
              |   $'>:='   *Expr1 (E_AUGOP  & 2)
              |   $':=:'   *Expr1 (E_SWAP      & 2)
              |   $'~==='  *Expr1 (E_IDENTICAL & 2) (E_NOT & 1)
              |   $'==='   *Expr1 (E_IDENTICAL & 2)
              |   $'<->'   *Expr1 (E_REVSWAP   & 2)
              |   $'<-'    *Expr1 (E_REVASSIGN & 2)
              |   $':='    *Expr1 (E_ASSIGN    & 2)
              |   epsilon
              )
            );
/*--------------------------------------------------------------------------------------------------------------------*/
Expr1a    = ( *Expr1 FENCE($'?' *Expr (E_SCAN & 2) | epsilon) );
/*--------------------------------------------------------------------------------------------------------------------*/
Expr      = ( *Expr1a );
/*====================================================================================================================*/
Blank     = ( $' ' nl_one );
ReturnStmt = ( $'return' $'  ' *Expr $' ' semi_opt $' ' nl_one (E_RETURN & 1)
             | $'return' $' '  semi_opt $' ' nl_one             (E_RETURN & 0)
             );
StmtBody  = ( ReturnStmt nInc()
            | $' ' *Expr $' ' semi_opt $' ' nl_one nInc()
            | Blank
            );
ParamFirst = ( $' ' id_pat ~ 'E_VAR'  nInc() );
ParamRest  = ( $',' id_pat ~ 'E_VAR'  nInc() );
Params     = ( ParamFirst ARBNO(ParamRest) | epsilon );
Prochead   = ( $'procedure' $'  ' id_pat ~ 'E_VAR'  nInc()
               $'(' Params $')' $' ' nl_one
             );
ProcbodyEnd = ( $'end' $' ' (nl_one | RPOS(0)) );
Procbody    = ( ProcbodyEnd | StmtBody *Procbody );
Proc        = ( nPush()  Prochead  Procbody  Decompose_proc  nPop() );
/*====================================================================================================================*/
Compiland = ( nPush()
              ARBNO( nInc() $' ' Proc $' ' )
              (E_Parse & 'nTop()')
              nPop()
            );
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
    } else OUTPUT = 'Parse Error';
} else OUTPUT = 'Parse Error';
/*====================================================================================================================*/
