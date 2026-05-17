E_Parse            = "'Parse'";
/* PST-SN4-1c (2026-05-16): goto node kinds renamed from TT_ATTR-style tags
   (':goS'/':goF'/':go') to dedicated TT_GOTO_* kinds, mirroring C stmt_ast.c. */
E_goU              = "'TT_GOTO_U'";
E_goS              = "'TT_GOTO_S'";
E_goF              = "'TT_GOTO_F'";
Functions   = 'ABS AND ANY APPEND APPLY ARBNO ARG ARRAY ATAN BACKSPACE '
              'BCHAR BREAK BREAKX BSIZE BUFFER CC CHAR CHOP CLEAR CODE '
              'COLLECT COMPL CONVERT COPY COS DATA DATATYPE DATE DEF DEFINE '
              'DEPTH DETACH DIFFER DUMP DUP DUPL EJECT ENDFILE EQ EVAL EXIT '
              'EXP FENCE FIELD FIX FREEZE FRONT FUNCTION GE GT HEIGHT HOR '
              'HOR_REG HOST IDENT INPUT INSERT INTEGER IT ITEM LABEL LE LEN '
              'LEQ LGE LGT LLE LLT LN LNE LOAD LOC LOCAL LPAD LRECL LT '
              'MERGE NE NODE NORM_REG NOTANY OPSYN OR OUTPUT OVY PAR POS '
              'PRINT PROTOTYPE REMDR REP REPLACE REVERSE REWIND RPAD RPOS '
              'RSORT RTAB SER SET SETEXIT SIN SIZE SLAB SORT SPAN SQRT '
              'STOPTR SUBSTR TAB TABLE TAN THAW TIME TRACE TRIM UNLOAD '
              'VALUE VDIFFER VER VER_REG WIDTH XOR ';
UnprotKwds  = 'ABEND ANCHOR CASE CODE COMPARE DUMP ERRLIMIT ERRTEXT ERRTYPE '
              'FATALLIMIT FILL FTRACE FULLSCAN GTRACE INPUT MAXLNGTH OUTPUT '
              'PROFILE STLIMIT TRACE TRIM ';
ProtKwds    = 'ABORT ALPHABET ARB BAL COMPNO DIGITS FAIL FATAL FENCE FILE '
              'FNCLEVEL GCTIME LASTFILE LASTLINE LASTNO LCASE LINE MAXINT '
              'PARM PI REM RTNTYPE STCOUNT STEXEC STFCOUNT STNO SUCCEED '
              'UCASE ';
BuiltinVars = 'ABORT ARB BAL FAIL REM SUCCEED TERMINAL ';
SpecialNms  = 'ABORT CONTINUE END FRETURN NRETURN RETURN SCONTINUE START ';
/* ==================================================================================================================== */
/* PST-SN4-2 (2026-05-16): sn_match and sn_upr are pure tokenizer helpers — they perform
   keyword classification during lexing and build no tree nodes.  They are the only functions
   permitted in a pure-syntax-tree parser.  All stmt-building helpers (pp_stmt, strip_parens,
   make_goto_slot, push_qlit) are deleted; the grammar builds TT_STMT directly. */
function sn_match(subject, pattern) { sn_match = .dummy; if (subject ? pattern) nreturn; else freturn; }
/* ==================================================================================================================== */
function sn_upr(s)                  { sn_upr   = REPLACE(s, &LCASE, &UCASE); return; }
TxInList    =  (POS(0) | ' ') *sn_upr(tx) (' ' | RPOS(0));
Function    =  SPAN('.' digits &UCASE '_' &LCASE) $ tx $ *sn_match(Functions,   TxInList);
BuiltinVar  =  SPAN('.' digits &UCASE '_' &LCASE) $ tx $ *sn_match(BuiltinVars, TxInList);
SpecialNm   =  SPAN('.' digits &UCASE '_' &LCASE) $ tx $ *sn_match(SpecialNms,  TxInList);
ProtKwd     =  SPAN(&UCASE &LCASE)                $ tx $ *sn_match(ProtKwds,    TxInList);
UnprotKwd   =  SPAN(&UCASE &LCASE)                $ tx $ *sn_match(UnprotKwds,  TxInList);
Integer     =  SPAN(digits);
DQ          =  '"' BREAK('"' nl) . str_body '"';
SQ          =  "'" BREAK("'" nl) . str_body "'";
String      =  *SQ | *DQ;
Real        =  (  SPAN(digits)
                  ('.' FENCE(SPAN(digits) | epsilon) | epsilon)
                  ('E' | 'e')
                  ('+' | '-' | epsilon)
                  SPAN(digits)
               |  SPAN(digits) '.' FENCE(SPAN(digits) | epsilon)
               );
Id          =  ANY(&UCASE &LCASE)
               FENCE(SPAN('.' digits &UCASE '_' &LCASE) | epsilon);
White       =  (  SPAN(' ' tab)
                  FENCE(nl ('+' | '.') FENCE(SPAN(' ' tab) | epsilon) | epsilon)
               |  nl ('+' | '.') FENCE(SPAN(' ' tab) | epsilon)
               );
Gray        =  White | epsilon;
$'  '       =  White;
$' '        =  Gray;
$'='        =  $'  ' '='  $'  ';
$'?'        =  $'  ' '?'  $'  ';
$'|'        =  $'  ' '|'  $'  ';
$'+'        =  $'  ' '+'  $'  ';
$'-'        =  $'  ' '-'  $'  ';
$'/'        =  $'  ' '/'  $'  ';
$'*'        =  $'  ' '*'  $'  ';
$'^'        =  $'  ' '^'  $'  ';
$'!'        =  $'  ' '!'  $'  ';
$'**'       =  $'  ' '**' $'  ';
$'$'        =  $'  ' '$'  $'  ';
$'.'        =  $'  ' '.'  $'  ';
$'&'        =  $'  ' '&'  $'  ';
$'@'        =  $'  ' '@'  $'  ';
$'#'        =  $'  ' '#'  $'  ';
$'%'        =  $'  ' '%'  $'  ';
$'~'        =  $'  ' '~'  $'  ';
$','        =  $' ' ',' $' ';
$'('        =  '(' $' ';
$'['        =  '[' $' ';
$'<'        =  '<' $' ';
$')'        =  $' ' ')';
$']'        =  $' ' ']';
$'>'        =  $' ' '>';
/* ==================================================================================================================== */
FnArgList   =  nInc() *Expr FENCE(*FnArgTail | epsilon);
FnArgTail   =  $',' nInc() *Expr FENCE(*FnArgTail | epsilon);
ExprList    =  nPush()
               *XList
               reduce("'ExprList'", '*(GT(nTop(), 1) nTop())')
               nPop();
XList       =  nInc() (*Expr | shift(epsilon, '')) FENCE($',' *XList | epsilon);
Expr        =  *Expr0;
Expr0       =  *Expr1 FENCE($'=' *Expr0 reduce("'TT_ASSIGN'", 2) | epsilon);
Expr1       =  *Expr2 FENCE($'?' *Expr1 reduce_opsyn('?', 2) | epsilon);
Expr2       =  *Expr3 FENCE($'&' *Expr2 reduce_opsyn('&', 2) | epsilon);
/* PST-SN4-1d-SCRIP (2026-05-16): replaced flat n-ary nPush/nInc/nPop/reduce(GT(nTop()>1))
   form with left-recursive binary always-wrap form.  Mirrors the C-side fix in snobol4.y
   (PST-SN4-1d, commit 544a6de0).  Produces right-leaning binary chains:
     a b c  =>  TT_SEQ(TT_SEQ(a,b),c)
     a|b|c  =>  TT_ALT(TT_ALT(a,b),c)
   Re-flattening, if ever wanted, is a downstream (lower) concern.
   X3 and X4 helpers deleted; replaced by Expr3tail / Expr4tail. */
Expr3       =  *Expr4 FENCE($'|' *Expr4 reduce("'TT_ALT'", 2) *Expr3tail | epsilon);
Expr3tail   =  FENCE($'|' *Expr4 reduce("'TT_ALT'", 2) *Expr3tail | epsilon);
Expr4       =  *Expr5 FENCE($'  ' *Expr5 reduce("'TT_SEQ'", 2) *Expr4tail | epsilon);
Expr4tail   =  FENCE($'  ' *Expr5 reduce("'TT_SEQ'", 2) *Expr4tail | epsilon);
Expr5       =  *Expr6 FENCE($'@' *Expr5 reduce_opsyn('@', 2) | epsilon);
Expr6       =  *Expr7
               FENCE($'+' *Expr7 foldop("'TT_ADD'") *Expr6cont | $'-' *Expr7 foldop("'TT_SUB'") *Expr6cont | epsilon);
Expr6cont   =  FENCE($'+' *Expr7 foldop("'TT_ADD'") *Expr6cont | $'-' *Expr7 foldop("'TT_SUB'") *Expr6cont | epsilon);
Expr7       =  *Expr8 FENCE($'#' *Expr7 foldop("'TT_MUL'") | epsilon);
Expr8       =  *Expr9 FENCE($'/' *Expr9 foldop("'TT_DIV'") *Expr8cont | epsilon);
Expr8cont   =  FENCE($'/' *Expr9 foldop("'TT_DIV'") *Expr8cont | epsilon);
Expr9       =  *Expr10 FENCE($'*' *Expr10 foldop("'TT_MUL'") *Expr9cont | epsilon);
Expr9cont   =  FENCE($'*' *Expr10 foldop("'TT_MUL'") *Expr9cont | epsilon);
Expr10      =  *Expr11 FENCE($'%' *Expr10 foldop("'TT_DIV'") | epsilon);
Expr11      =  *Expr12 FENCE(($'^' | $'!' | $'**') *Expr12 foldop("'TT_POW'") *Expr11cont | epsilon);
Expr11cont  =  FENCE(($'^' | $'!' | $'**') *Expr12 foldop("'TT_POW'") *Expr11cont | epsilon);
Expr12      =  *Expr13
               FENCE(
                  $'$' *Expr13 reduce("'TT_CAPT_IMMED_ASGN'", 2) *Expr12tail_immed
               |  $'.' *Expr13 reduce("'TT_CAPT_COND_ASGN'", 2) *Expr12tail_cond
               |  epsilon
               );
Expr12tail_immed =  FENCE($'$' *Expr13 reduce("'TT_CAPT_IMMED_ASGN'", 2) *Expr12tail_immed | epsilon);
Expr12tail_cond  =  FENCE($'.' *Expr13 reduce("'TT_CAPT_COND_ASGN'", 2) *Expr12tail_cond  | epsilon);
Expr13      =  *Expr14 FENCE($'~' *Expr13 reduce_opsyn('~', 2) | epsilon);
Expr14      =  '@' *Expr14 reduce("'TT_CAPT_CURSOR'", 1)
            |  '~' *Expr14 reduce("'TT_NOT'", 1)
            |  '?' *Expr14 reduce("'TT_INTERROGATE'", 1)
            |  '&' shift(*ProtKwd,   "'TT_KEYWORD'")
            |  '&' shift(*UnprotKwd, "'TT_KEYWORD'")
            |  '+' *Expr14 reduce("'TT_PLS'", 1)
            |  '-' *Expr14 reduce("'TT_MNS'", 1)
            |  '*' *Expr14 reduce("'TT_DEFER'", 1)
            |  '$' *Expr14 reduce("'TT_INDIRECT'", 1)
            |  '.' *Expr14 reduce("'TT_NAME'", 1)
            |  '!' *Expr14 reduce("'TT_POW'", 1)
            |  '%' *Expr14 reduce("'TT_DIV'", 1)
            |  '/' *Expr14 reduce("'TT_DIV'", 1)
            |  '#' *Expr14 reduce("'TT_MUL'", 1)
            |  '=' *Expr14 reduce("'TT_ASSIGN'", 1)
            |  '|' *Expr14 reduce("'TT_OPSYN'", 1)
            |  *Expr15;
Expr15      =  *Expr17
               FENCE(nPush() *Expr16 reduce("'TT_IDX'", 'nTop() + 1') nPop() | epsilon);
Expr16      =  nInc()
               ($'[' *ExprList $']' | $'<' *ExprList $'>')
               FENCE(*Expr16 | epsilon);
Expr17      =  FENCE(
                  nPush() $'(' *Expr $')' reduce("'()'", 1) nPop()
               |  *PrimLEN    $'(' nPush() FENCE(*FnArgList | epsilon) reduce_prim("'TT_LEN'")    nPop() $')'
               |  *PrimBREAK  $'(' nPush() FENCE(*FnArgList | epsilon) reduce_prim("'TT_BREAK'")  nPop() $')'
               |  *PrimSPAN   $'(' nPush() FENCE(*FnArgList | epsilon) reduce_prim("'TT_SPAN'")   nPop() $')'
               |  *PrimANY    $'(' nPush() FENCE(*FnArgList | epsilon) reduce_prim("'TT_ANY'")    nPop() $')'
               |  *PrimNOTANY $'(' nPush() FENCE(*FnArgList | epsilon) reduce_prim("'TT_NOTANY'") nPop() $')'
               |  *PrimFENCE  $'(' nPush() FENCE(*FnArgList | epsilon) reduce_prim("'TT_FENCE'")  nPop() $')'
               |  *PrimARBNO  $'(' nPush() FENCE(*FnArgList | epsilon) reduce_prim("'TT_ARBNO'")  nPop() $')'
               |  *PrimPOS    $'(' nPush() FENCE(*FnArgList | epsilon) reduce_prim("'TT_POS'")    nPop() $')'
               |  *PrimRPOS   $'(' nPush() FENCE(*FnArgList | epsilon) reduce_prim("'TT_RPOS'")   nPop() $')'
               |  *PrimTAB    $'(' nPush() FENCE(*FnArgList | epsilon) reduce_prim("'TT_TAB'")    nPop() $')'
               |  *PrimRTAB   $'(' nPush() FENCE(*FnArgList | epsilon) reduce_prim("'TT_RTAB'")   nPop() $')'
               |  *PrimBREAKX $'(' nPush() FENCE(*FnArgList | epsilon) reduce_prim("'TT_BREAKX'") nPop() $')'
               |  shift(*Function, "'TT_VAR'") FENCE(nPush() $'(' FENCE(*FnArgList | epsilon) reduce_call() nPop() $')' | epsilon)
               |  shift(*BuiltinVar, "'TT_VAR'")
               |  shift(*SpecialNm, "'TT_VAR'")
               |  shift(*Id, "'TT_VAR'") FENCE(nPush() $'(' FENCE(*FnArgList | epsilon) reduce_call() nPop() $')' | epsilon)
               |  *String shift(str_body, "'TT_QLIT'")
               |  shift(*Real, "'TT_RLIT'")
               |  shift(*Integer, "'TT_ILIT'")
               );
PrimLEN     =  SPAN('.' digits &UCASE '_' &LCASE) $ tx $ *sn_match('LEN ',    TxInList);
PrimBREAK   =  SPAN('.' digits &UCASE '_' &LCASE) $ tx $ *sn_match('BREAK ',  TxInList);
PrimSPAN    =  SPAN('.' digits &UCASE '_' &LCASE) $ tx $ *sn_match('SPAN ',   TxInList);
PrimANY     =  SPAN('.' digits &UCASE '_' &LCASE) $ tx $ *sn_match('ANY ',    TxInList);
PrimNOTANY  =  SPAN('.' digits &UCASE '_' &LCASE) $ tx $ *sn_match('NOTANY ', TxInList);
PrimFENCE   =  SPAN('.' digits &UCASE '_' &LCASE) $ tx $ *sn_match('FENCE ',  TxInList);
PrimARBNO   =  SPAN('.' digits &UCASE '_' &LCASE) $ tx $ *sn_match('ARBNO ',  TxInList);
PrimPOS     =  SPAN('.' digits &UCASE '_' &LCASE) $ tx $ *sn_match('POS ',    TxInList);
PrimRPOS    =  SPAN('.' digits &UCASE '_' &LCASE) $ tx $ *sn_match('RPOS ',   TxInList);
PrimTAB     =  SPAN('.' digits &UCASE '_' &LCASE) $ tx $ *sn_match('TAB ',    TxInList);
PrimRTAB    =  SPAN('.' digits &UCASE '_' &LCASE) $ tx $ *sn_match('RTAB ',   TxInList);
PrimBREAKX  =  SPAN('.' digits &UCASE '_' &LCASE) $ tx $ *sn_match('BREAKX ', TxInList);
SGoto       =  ('S' | 's');
FGoto       =  ('F' | 'f');
Target      =  $'(' . *assign(.Brackets, *'()') *Expr $')'
            |  $'<' . *assign(.Brackets, *'<>') *Expr $'>';
Sgo         =  *SGoto $' ' *Target reduce(E_goS, 1);
Fgo         =  *FGoto $' ' *Target reduce(E_goF, 1);
Ugo         =  *Target reduce(E_goU, 1);
Goto        =  $' ' ':'
               $' '
               FENCE(
                  *Ugo shift(epsilon, '')
               |  *Sgo FENCE($' ' (':' $' ' | epsilon) *Fgo | shift(epsilon, ''))
               |  *Fgo FENCE($' ' (':' $' ' | epsilon) *Sgo | shift(epsilon, ''))
               );
Control     =  '-' BREAK(nl ';');
Comment     =  '*' BREAK(nl);
/* PST-SN4-2 (2026-05-16): Stmt redesigned to emit TT_STMT directly as a pure syntax tree.
   Children in source order: TT_LABEL? subject? TT_PAT? TT_EQ? replacement? goto*.
   No post-parse cooking.  Counter tracks child count for reduce('TT_STMT', nTop()). */
StmtLabel   =  shift(BREAK(' ' tab nl ';'), "'TT_LABEL'");
StmtRepl    =  $'=' $' ' *Expr reduce("'TT_EQ'", 2)
            |  $'=' shift(epsilon, "'TT_EQ'");
StmtGoto    =  FENCE(*Goto | epsilon);
Stmt        =  nPush()
               FENCE(nInc() *StmtLabel | epsilon)
               FENCE(
                  $'  '
                  nInc() *Expr14
                  FENCE(
                     $'?'
                     nInc() *Expr1 reduce("'TT_PAT'", 1)
                     FENCE(nInc() *StmtRepl | epsilon)
                  |  nInc() *StmtRepl
                  |  epsilon
                  )
               |  epsilon
               )
               *StmtGoto
               reduce("'TT_STMT'", 'nTop()')
               nPop()
               $' ';
Commands    =  *Command FENCE(*Commands | epsilon);
Command     =  nInc()
               FENCE(
                  shift(*Comment, "'TT_COMMENT'") reduce("'TT_COMMENT'", 1) nl
               |  shift(*Control, "'TT_CONTROL'") reduce("'TT_CONTROL'", 1) (nl | ';')
               |  *Stmt (nl | ';')
               );
Compiland   =  nPush()
               ARBNO(*Command)
               reduce(E_Parse, 'nTop()')
               ('END' (' ' BREAK(nl) nl | nl) ARBNO(BREAK(nl) nl) | epsilon)
               nPop();
/* ==================================================================================================================== */
InitCounter();
InitStack();
Src = '';
while ((Line = INPUT)) Src = Src Line nl ;
if (Src ? Compiland) {
    ptree = Pop();
    i = 1;
    nk = n(ptree);
    while (LE(i, nk)) {
        cmd = c(ptree)[i];
        if (IDENT(t(cmd), 'TT_STMT')) { TDump(cmd); }
        i = i + 1;
    }
} else OUTPUT = 'Parse Error.';
