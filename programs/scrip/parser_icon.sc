// parser_icon.sc — PARSER-IC: Icon pattern-based frontend in Snocone.
//
// ONE Compiland PATTERN matched once against the entire source; emits one
// IR tree per procedure via TDump.  Byte-identical (whitespace-normalized)
// to scrip's existing Icon frontend --dump-ir output.
//
// Naming: non-terminals from icon-sp.ebnf; IR tags from ir.h E_*;
// whitespace: $'  ' = required, $' ' = optional (beauty.sno convention).
// ic_decompose_proc is the ONE tree-building helper (proc-frame collapse).
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
E_Parse     = "'Parse'";
r_nTop      = '*(GT(nTop(), 1) nTop())';
/*====================================================================================================================*/
$'  '        = SPAN(' ' tab);
$' '         = ($'  ' | epsilon);
nl_one       = ANY(nl);
/*--------------------------------------------------------------------------------------------------------------------*/
// Token classifiers — PATTERNS mirroring icon_lex.h TK_* names.
White        = SPAN(' ' tab);
Gray         = (*White | epsilon);
id_first     = ANY(&UCASE &LCASE '_');
id_rest      = SPAN(digits &UCASE &LCASE '_');
id_pat       = (id_first (id_rest | epsilon));
int_pat      = SPAN(digits);
// String: capture inner body (without quotes) via dot-capture + ic_push_qlit.
str_pat      = ('"' BREAK('"') . ic_strbody '"');
semi_opt     = (';' | epsilon);
/*--------------------------------------------------------------------------------------------------------------------*/
// Keyword tokens — leading optional whitespace baked in.
$'if'        = (*Gray 'if'       );  $'then'      = (*Gray 'then'     );
$'else'      = (*Gray 'else'     );  $'while'     = (*Gray 'while'    );
$'do'        = (*Gray 'do'       );  $'every'     = (*Gray 'every'    );
$'return'    = (*Gray 'return'   );  $'end'       = (*Gray 'end'      );
$'procedure' = (*Gray 'procedure');
/*--------------------------------------------------------------------------------------------------------------------*/
// Operator tokens — optional whitespace each side.
$'|'   = (*Gray '|'  *Gray);  $':='  = (*Gray ':='  *Gray);
$'?'   = (*Gray '?'  *Gray);  $','   = (*Gray ','   *Gray);
$'+'   = (*Gray '+'  *Gray);  $'-'   = (*Gray '-'   *Gray);
$'*'   = (*Gray '*'  *Gray);  $'/'   = (*Gray '/'   *Gray);
$'<='  = (*Gray '<=' *Gray);  $'>='  = (*Gray '>='  *Gray);
$'~='  = (*Gray '~=' *Gray);  $'<'   = (*Gray '<'   *Gray);
$'>'   = (*Gray '>'  *Gray);  $'='   = (*Gray '='   *Gray);
$';'   = (*Gray ';'  *Gray);  $'^'   = (*Gray '^'   *Gray);
$'('   = (*Gray '('  *Gray);  $')'   = (*Gray ')'   *Gray);
$'{'   = (*Gray '{'  *Gray);  $'}'   = (*Gray '}'   *Gray);
$'+:=' = (*Gray '+:=' *Gray);  $'-:=' = (*Gray '-:=' *Gray);
$'*:=' = (*Gray '*:=' *Gray);  $'/:=' = (*Gray '/:=' *Gray);
/*====================================================================================================================*/
// ic_push_qlit — shift (E_QLIT body) using dot-captured ic_strbody.
function ic_push_qlit() {
    Push(tree('E_QLIT', ic_strbody));
    ic_push_qlit = .dummy;
    nreturn;
}
qlit_done = (epsilon . *ic_push_qlit());
/*--------------------------------------------------------------------------------------------------------------------*/
// ic_decompose_proc — pop proc-frame children; build (STMT :subj (E_FNC pname ...)).
// pname is read from v(child[1]) — the (E_VAR pname) shifted by Prochead.
function ic_decompose_proc(n_kids, kids, pname, proc, i) {
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
    ic_decompose_proc = .dummy;
    nreturn;
}
proc_done = (epsilon . *ic_decompose_proc());
/*====================================================================================================================*/
// Expression tower — canonical names from icon-sp.ebnf.
// Expr11 = primary; tighter -> looser: Expr10 (unary) -> Expr8 (pow) ->
// Expr7 (mul) -> Expr6 (add) -> Expr4 (cmp) -> Expr3 (alt) -> Expr1 (assign).
/*--------------------------------------------------------------------------------------------------------------------*/
If    = ( $'if'    *White *Expr  $'then' *White *Expr
          (  $'else' *White *Expr  (E_IF & 3)
          |  (E_IF & 2)
          )
        );
While = ( $'while' *White *Expr  $'do' *White *Expr  (E_WHILE & 2) );
Every = ( $'every' *White *Expr
          (  $'do' *White *Expr  (E_EVERY & 2)
          |  (E_EVERY & 1)
          )
        );
/*--------------------------------------------------------------------------------------------------------------------*/
ArgFirst  = ( *Gray *Expr  nInc() );
ArgRest   = ( $','  *Expr  nInc() );
CallArgs  = ( ArgFirst ARBNO(ArgRest) | epsilon );
Call      = ( nPush()
              *Gray id_pat ~ 'E_VAR'  nInc()
              *Gray '(' CallArgs *Gray ')'
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
CompoundFirst = ( *Gray *Expr *Gray semi_opt *Gray nInc() );
CompoundRest  = ( *Gray *Expr *Gray semi_opt *Gray nInc() );
Compound      = ( nPush()
                  $'{'
                  ( CompoundFirst ARBNO(CompoundRest) | epsilon )
                  $'}'
                  (E_SEQ_EXPR & r_nTop)
                  nPop()
                );
/*--------------------------------------------------------------------------------------------------------------------*/
Expr11 = (   If  |  While  |  Every  |  Call  |  Paren  |  Compound
         |   *Gray str_pat qlit_done
         |   *Gray int_pat ~ 'E_ILIT'
         |   *Gray id_pat  ~ 'E_VAR'
         );
/*--------------------------------------------------------------------------------------------------------------------*/
Expr10 = (   *Gray '-'  *Expr10 (E_MNS         & 1)
         |   *Gray '+'  *Expr10 (E_PLS         & 1)
         |   *Gray '~'  *Expr10 (E_CSET_COMPL  & 1)
         |   *Gray '\\' *Expr10 (E_NONNULL     & 1)
         |   *Gray '!'  *Expr10 (E_ITERATE     & 1)
         |   *Gray '*'  *Expr10 (E_SIZE        & 1)
         |   *Gray '?'  *Expr10 (E_RANDOM      & 1)
         |   *Expr11
         );
/*--------------------------------------------------------------------------------------------------------------------*/
Expr8     = ( *Expr10 ($'^' *Expr8 (E_POW & 2) | epsilon) );
/*--------------------------------------------------------------------------------------------------------------------*/
Expr7tail = ( $'*' *Expr8 (E_MUL & 2) | $'/' *Expr8 (E_DIV & 2) );
Expr7     = ( *Expr8 ARBNO(Expr7tail) );
/*--------------------------------------------------------------------------------------------------------------------*/
Expr6tail = ( $'+' *Expr7 (E_ADD & 2) | $'-' *Expr7 (E_SUB & 2) );
Expr6     = ( *Expr7 ARBNO(Expr6tail) );
/*--------------------------------------------------------------------------------------------------------------------*/
Expr4tail = ( $'<=' *Expr6 (E_LE & 2) | $'>=' *Expr6 (E_GE & 2)
            | $'~=' *Expr6 (E_NE & 2) | $'<'  *Expr6 (E_LT & 2)
            | $'>'  *Expr6 (E_GT & 2) | $'='  *Expr6 (E_EQ & 2)
            );
Expr4     = ( *Expr6 ARBNO(Expr4tail) );
/*--------------------------------------------------------------------------------------------------------------------*/
X3        = ( nInc() *Expr4 ($'|' *X3 | epsilon) );
Expr3     = ( nPush() X3 (E_ALTERNATE & r_nTop) nPop() );
/*--------------------------------------------------------------------------------------------------------------------*/
Expr2     = ( *Expr3 );
/*--------------------------------------------------------------------------------------------------------------------*/
Expr1     = ( *Expr2
              (   $':='   *Expr1 (E_ASSIGN & 2)
              |   $'+:='  *Expr1 (E_AUGOP  & 2)
              |   $'-:='  *Expr1 (E_AUGOP  & 2)
              |   $'*:='  *Expr1 (E_AUGOP  & 2)
              |   $'/:='  *Expr1 (E_AUGOP  & 2)
              |   epsilon
              )
            );
/*--------------------------------------------------------------------------------------------------------------------*/
Expr1a    = ( *Expr1 ($'?' *Expr (E_SCAN & 2) | epsilon) );
/*--------------------------------------------------------------------------------------------------------------------*/
Expr      = ( *Expr1a );
/*====================================================================================================================*/
Comment   = ( *Gray '#' BREAK(nl) nl_one );
Blank     = ( *Gray nl_one );
ReturnStmt = ( $'return' *White *Expr *Gray semi_opt *Gray nl_one (E_RETURN & 1)
             | $'return' *Gray  semi_opt *Gray nl_one             (E_RETURN & 0)
             );
StmtBody  = ( ReturnStmt nInc()
            | *Gray *Expr *Gray semi_opt *Gray nl_one nInc()
            | Comment
            | Blank
            );
ParamFirst = ( *Gray id_pat ~ 'E_VAR'  nInc() );
ParamRest  = ( $',' id_pat ~ 'E_VAR'  nInc() );
Params     = ( ParamFirst ARBNO(ParamRest) | epsilon );
Prochead   = ( $'procedure' *White id_pat ~ 'E_VAR'  nInc()
               *Gray '(' Params *Gray ')' *Gray nl_one
             );
ProcbodyEnd = ( $'end' *Gray (nl_one | RPOS(0)) );
Procbody    = ( ProcbodyEnd | StmtBody *Procbody );
Proc        = ( nPush()  Prochead  Procbody  proc_done  nPop() );
/*====================================================================================================================*/
Compiland = ( nPush()
              ARBNO( nInc() *Gray Proc *Gray )
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
