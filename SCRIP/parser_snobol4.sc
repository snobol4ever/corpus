E_Parse            = "'Parse'";
E_goU              = "':go'";
E_goS              = "':goS'";
E_goF              = "':goF'";
AST_VAR              = "'AST_VAR'";
AST_ILIT             = "'AST_ILIT'";
AST_QLIT             = "'AST_QLIT'";
AST_RLIT             = "'AST_RLIT'";
AST_KEYWORD          = "'AST_KEYWORD'";
AST_DEFER            = "'AST_DEFER'";
AST_IDX              = "'AST_IDX'";
AST_FNC              = "'AST_FNC'";
AST_SEQ              = "'AST_SEQ'";
AST_ALT              = "'AST_ALT'";
AST_ADD              = "'AST_ADD'";
AST_SUB              = "'AST_SUB'";
AST_MUL              = "'AST_MUL'";
AST_DIV              = "'AST_DIV'";
AST_POW              = "'AST_POW'";
AST_PLS              = "'AST_PLS'";
AST_MNS              = "'AST_MNS'";
AST_CAPT_IMMED_ASGN  = "'AST_CAPT_IMMED_ASGN'";
AST_CAPT_COND_ASGN   = "'AST_CAPT_COND_ASGN'";
AST_LEN              = "'AST_LEN'";
AST_BREAK            = "'AST_BREAK'";
AST_SPAN             = "'AST_SPAN'";
AST_ANY              = "'AST_ANY'";
AST_NOTANY           = "'AST_NOTANY'";
AST_FENCE            = "'AST_FENCE'";
AST_ARBNO            = "'AST_ARBNO'";
AST_POS              = "'AST_POS'";
AST_RPOS             = "'AST_RPOS'";
AST_TAB              = "'AST_TAB'";
AST_RTAB             = "'AST_RTAB'";
AST_BREAKX           = "'AST_BREAKX'";
AST_INDIRECT         = "'AST_INDIRECT'";
AST_NAME             = "'AST_NAME'";
AST_ASSIGN           = "'AST_ASSIGN'";
AST_NOT              = "'AST_NOT'";
AST_CAPT_CURSOR      = "'AST_CAPT_CURSOR'";
AST_INTERROGATE      = "'AST_INTERROGATE'";
AST_OPSYN            = "'AST_OPSYN'";
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
// sn_match
function sn_match(subject, pattern) { sn_match = .dummy; if (subject ? pattern) nreturn; else freturn; }
// sn_upr
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
// push_qlit
function push_qlit() { Push(tree('AST_QLIT', str_body)); push_qlit = .dummy; nreturn; }
Push_qlit = (epsilon . *push_qlit());
FnArgList   =  nInc() *Expr FENCE(*FnArgTail | epsilon);
FnArgTail   =  $',' nInc() *Expr FENCE(*FnArgTail | epsilon);
ExprList    =  nPush()
               *XList
               ("'ExprList'" & '*(GT(nTop(), 1) nTop())')
               nPop();
XList       =  nInc() (*Expr | epsilon ~ '') FENCE($',' *XList | epsilon);
Expr        =  *Expr0;
Expr0       =  *Expr1 FENCE($'=' *Expr0 (AST_ASSIGN & 2) | epsilon);
Expr1       =  *Expr2 FENCE($'?' *Expr1 reduce_opsyn('?', 2) | epsilon);
Expr2       =  *Expr3 FENCE($'&' *Expr2 reduce_opsyn('&', 2) | epsilon);
Expr3       =  nPush() *X3 (AST_ALT & '*(GT(nTop(), 1) nTop())') nPop();
X3          =  nInc() *Expr4 FENCE($'|' *X3 | epsilon);
Expr4       =  nPush() *X4 (AST_SEQ & '*(GT(nTop(), 1) nTop())') nPop();
X4          =  nInc() *Expr5 FENCE($'  ' *X4 | epsilon);
Expr5       =  *Expr6 FENCE($'@' *Expr5 reduce_opsyn('@', 2) | epsilon);
Expr6       =  *Expr7
               FENCE($'+' *Expr7 foldop(AST_ADD) *Expr6cont | $'-' *Expr7 foldop(AST_SUB) *Expr6cont | epsilon);
Expr6cont   =  FENCE($'+' *Expr7 foldop(AST_ADD) *Expr6cont | $'-' *Expr7 foldop(AST_SUB) *Expr6cont | epsilon);
Expr7       =  *Expr8 FENCE($'#' *Expr7 foldop(AST_MUL) | epsilon);
Expr8       =  *Expr9 FENCE($'/' *Expr9 foldop(AST_DIV) *Expr8cont | epsilon);
Expr8cont   =  FENCE($'/' *Expr9 foldop(AST_DIV) *Expr8cont | epsilon);
Expr9       =  *Expr10 FENCE($'*' *Expr10 foldop(AST_MUL) *Expr9cont | epsilon);
Expr9cont   =  FENCE($'*' *Expr10 foldop(AST_MUL) *Expr9cont | epsilon);
Expr10      =  *Expr11 FENCE($'%' *Expr10 foldop(AST_DIV) | epsilon);
Expr11      =  *Expr12 FENCE(($'^' | $'!' | $'**') *Expr12 foldop(AST_POW) *Expr11cont | epsilon);
Expr11cont  =  FENCE(($'^' | $'!' | $'**') *Expr12 foldop(AST_POW) *Expr11cont | epsilon);
Expr12      =  *Expr13
               FENCE(
                  $'$' *Expr13 (AST_CAPT_IMMED_ASGN & 2) *Expr12tail_immed
               |  $'.' *Expr13 (AST_CAPT_COND_ASGN  & 2) *Expr12tail_cond
               |  epsilon
               );
Expr12tail_immed =  FENCE($'$' *Expr13 (AST_CAPT_IMMED_ASGN & 2) *Expr12tail_immed | epsilon);
Expr12tail_cond  =  FENCE($'.' *Expr13 (AST_CAPT_COND_ASGN  & 2) *Expr12tail_cond  | epsilon);
Expr13      =  *Expr14 FENCE($'~' *Expr13 reduce_opsyn('~', 2) | epsilon);
Expr14      =  '@' *Expr14 (AST_CAPT_CURSOR & 1)
            |  '~' *Expr14 (AST_NOT & 1)
            |  '?' *Expr14 (AST_INTERROGATE & 1)
            |  '&' shift(*ProtKwd,   AST_KEYWORD)
            |  '&' shift(*UnprotKwd, AST_KEYWORD)
            |  '+' *Expr14 (AST_PLS & 1)
            |  '-' *Expr14 (AST_MNS & 1)
            |  '*' *Expr14 reduce(AST_DEFER, 1)
            |  '$' *Expr14 (AST_INDIRECT & 1)
            |  '.' *Expr14 (AST_NAME & 1)
            |  '!' *Expr14 (AST_POW & 1)
            |  '%' *Expr14 (AST_DIV & 1)
            |  '/' *Expr14 (AST_DIV & 1)
            |  '#' *Expr14 (AST_MUL & 1)
            |  '=' *Expr14 (AST_ASSIGN & 1)
            |  '|' *Expr14 (AST_OPSYN & 1)
            |  *Expr15;
Expr15      =  *Expr17
               FENCE(nPush() *Expr16 (AST_IDX & 'nTop() + 1') nPop() | epsilon);
Expr16      =  nInc()
               ($'[' *ExprList $']' | $'<' *ExprList $'>')
               FENCE(*Expr16 | epsilon);
Expr17      =  FENCE(
                  nPush() $'(' *Expr $')' ("'()'" & 1) nPop()
               |  *PrimLEN    $'(' nPush() FENCE(*FnArgList | epsilon) reduce_prim(AST_LEN)    nPop() $')'
               |  *PrimBREAK  $'(' nPush() FENCE(*FnArgList | epsilon) reduce_prim(AST_BREAK)  nPop() $')'
               |  *PrimSPAN   $'(' nPush() FENCE(*FnArgList | epsilon) reduce_prim(AST_SPAN)   nPop() $')'
               |  *PrimANY    $'(' nPush() FENCE(*FnArgList | epsilon) reduce_prim(AST_ANY)    nPop() $')'
               |  *PrimNOTANY $'(' nPush() FENCE(*FnArgList | epsilon) reduce_prim(AST_NOTANY) nPop() $')'
               |  *PrimFENCE  $'(' nPush() FENCE(*FnArgList | epsilon) reduce_prim(AST_FENCE)  nPop() $')'
               |  *PrimARBNO  $'(' nPush() FENCE(*FnArgList | epsilon) reduce_prim(AST_ARBNO)  nPop() $')'
               |  *PrimPOS    $'(' nPush() FENCE(*FnArgList | epsilon) reduce_prim(AST_POS)    nPop() $')'
               |  *PrimRPOS   $'(' nPush() FENCE(*FnArgList | epsilon) reduce_prim(AST_RPOS)   nPop() $')'
               |  *PrimTAB    $'(' nPush() FENCE(*FnArgList | epsilon) reduce_prim(AST_TAB)    nPop() $')'
               |  *PrimRTAB   $'(' nPush() FENCE(*FnArgList | epsilon) reduce_prim(AST_RTAB)   nPop() $')'
               |  *PrimBREAKX $'(' nPush() FENCE(*FnArgList | epsilon) reduce_prim(AST_BREAKX) nPop() $')'
               |  *Function   ~ AST_VAR FENCE(nPush() $'(' FENCE(*FnArgList | epsilon) reduce_call() nPop() $')' | epsilon)
               |  *BuiltinVar ~ AST_VAR
               |  *SpecialNm  ~ AST_VAR
               |  *Id         ~ AST_VAR FENCE(nPush() $'(' FENCE(*FnArgList | epsilon) reduce_call() nPop() $')' | epsilon)
               |  *String Push_qlit
               |  *Real ~ AST_RLIT
               |  *Integer ~ AST_ILIT
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
                  *Ugo epsilon ~ ''
               |  *Sgo FENCE($' ' (':' $' ' | epsilon) *Fgo | epsilon ~ '')
               |  *Fgo FENCE($' ' (':' $' ' | epsilon) *Sgo | epsilon ~ '')
               );
Control     =  '-' BREAK(nl ';');
Comment     =  '*' BREAK(nl);
Label       =  BREAK(' ' tab nl ';') ~ 'Label';
Stmt        =  *Label
               (  $'  '
                  *Expr14
                  FENCE(
                     epsilon ~ ''
                     $'  '
                     ('=' ~ '=' $'  ' *Expr | '=' ~ '=' epsilon ~ '')
                  |  ($'?' | $'  ')
                     *Expr1
                     FENCE(
                        $'  '
                        ('=' ~ '=' $'  ' *Expr | '=' ~ '=' epsilon ~ '')
                     |  epsilon ~ '' epsilon ~ ''
                     )
                  |  epsilon ~ '' epsilon ~ '' epsilon ~ ''
                  )
               |  epsilon ~ '' epsilon ~ '' epsilon ~ '' epsilon ~ ''
               )
               FENCE(*Goto | epsilon ~ '' epsilon ~ '')
               $' ';
Commands    =  *Command FENCE(*Commands | epsilon);
Command     =  nInc()
               FENCE(
                  *Comment ~ 'comment' ("'Comment'" & 1) nl
               |  *Control ~ 'control' ("'Control'" & 1) (nl | ';')
               |  *Stmt ("'Stmt'" & 7) (nl | ';')
               );
Compiland   =  nPush()
               ARBNO(*Command)
               (E_Parse & 'nTop()')
               ('END' (' ' BREAK(nl) nl | nl) ARBNO(BREAK(nl) nl) | epsilon)
               nPop();
// strip_parens
function strip_parens(x, t, result, i, xlist, j) {
    if (IDENT(x))              { strip_parens = x; return; }
    t = t(x);
    if (IDENT(t))              { strip_parens = x; return; }
    if (IDENT(t, '()') EQ(n(x), 1)) { strip_parens = strip_parens(c(x)[1]); return; }
    if (IDENT(t, 'AST_IDX')) {
        result = Tree('AST_IDX', '', 0);
        i = 1;
        while (LE(i, n(x))) {
            if (IDENT(t(c(x)[i]), 'ExprList')) {
                xlist = c(x)[i];
                j = 1;
                while (LE(j, n(xlist))) { Append(result, strip_parens(c(xlist)[j])); j = j + 1; }
            } else {
                Append(result, strip_parens(c(x)[i]));
            }
            i = i + 1;
        }
        strip_parens = result;
        return;
    }
    result = Tree(t, v(x), 0);
    i = 1;
    while (LE(i, n(x))) { Append(result, strip_parens(c(x)[i])); i = i + 1; }
    strip_parens = result;
    return;
}
// make_goto_slot
function make_goto_slot(g, tgt, tgt_v) {
    tgt   = c(g)[1];
    if (IDENT(t(tgt), 'AST_INDIRECT') EQ(n(tgt), 1) IDENT(t(c(tgt)[1]), 'AST_QLIT')) {
        tgt_v = v(c(tgt)[1]);
    } else if (IDENT(t(tgt), 'AST_INDIRECT') EQ(n(tgt), 1)) {
        inner = strip_parens(c(tgt)[1]);
        tgt_v = '$(' TLump(inner, 99999) ')';
    } else if (DIFFER(v(tgt))) {
        tgt_v = v(tgt);
    } else {
        tgt_v = '$(' TLump(tgt, 99999) ')';
    }
    make_goto_slot = tree(t(g), tgt_v);
    return;
}
// pp_stmt
function pp_stmt(x, ppLbl, ppSubj, ppPatrn, ppAsgn, ppRepl, ppGo1, ppGo2,
                 result, subj_ir, pat_ir, seq_n, pat_seq, i) {
    ppLbl   = v(c(x)[1]);
    ppSubj  = c(x)[2];
    ppPatrn = c(x)[3];
    ppAsgn  = v(c(x)[4]);
    ppRepl  = c(x)[5];
    ppGo1   = c(x)[6];
    ppGo2   = c(x)[7];
    if (IDENT(ppLbl, 'END') IDENT(t(ppSubj))) {
        pp_stmt = Tree('STMT', '', 2, tree(':lbl', 'END'), tree(':end', ''));
        return;
    }
    result = Tree('STMT', '', 0);
    if (DIFFER(ppLbl))        { Append(result, tree(':lbl', ppLbl)); }
    if (DIFFER(t(ppSubj))) {
        if (DIFFER(ppAsgn))   { Append(result, tree(':eq', '')); }
        subj_ir = strip_parens(ppSubj);
        if (DIFFER(t(ppPatrn))) {
            pat_ir = ppPatrn;
            if (IDENT(t(pat_ir), 'AST_ALT') GT(n(pat_ir), 0) DIFFER(t(ppPatrn), '()')) {
                seq_n = Tree('AST_SEQ', '', 2, subj_ir, strip_parens(c(pat_ir)[1]));
                pat_seq = Tree('AST_ALT', '', 1, seq_n);
                i = 2;
                while (LE(i, n(pat_ir))) { Append(pat_seq, strip_parens(c(pat_ir)[i])); i = i + 1; }
                Append(result, Tree(':subj', '', 1, pat_seq));
            } else {
                pat_ir = strip_parens(pat_ir);
                Append(result, Tree(':subj', '', 1, subj_ir));
                Append(result, Tree(':pat',  '', 1, pat_ir));
            }
        } else {
            if (IDENT(t(subj_ir), 'AST_SEQ') GT(n(subj_ir), 1) IDENT(t(c(subj_ir)[1]), 'AST_VAR')) {
                seq_n = n(subj_ir);
                Append(result, Tree(':subj', '', 1, c(subj_ir)[1]));
                if (LE(seq_n, 2)) {
                    Append(result, Tree(':pat', '', 1, c(subj_ir)[2]));
                } else {
                    pat_seq = Tree('AST_SEQ', '', 0);
                    i = 2;
                    while (LE(i, seq_n)) { Append(pat_seq, c(subj_ir)[i]); i = i + 1; }
                    Append(result, Tree(':pat', '', 1, pat_seq));
                }
            } else {
                Append(result, Tree(':subj', '', 1, subj_ir));
            }
        }
        if (DIFFER(t(ppRepl))) {
            Append(result, Tree(':repl', '', 1, strip_parens(ppRepl)));
        } else if (DIFFER(ppAsgn)) {
            Append(result, Tree(':repl', '', 1, tree('AST_QLIT', '')));
        }
    }
    if (DIFFER(t(ppGo1)) DIFFER(t(ppGo2))) {
        if (IDENT(t(ppGo1), ':goS')) { goS_slot = ppGo1; goF_slot = ppGo2; }
        else                          { goS_slot = ppGo2; goF_slot = ppGo1; }
        goS_child = c(goS_slot)[1];
        if (IDENT(t(goS_child), 'AST_INDIRECT') DIFFER(t(c(goS_child)[1]), 'AST_QLIT')) {
            Append(result, make_goto_slot(goF_slot)); Append(result, make_goto_slot(goS_slot));
        } else {
            Append(result, make_goto_slot(goS_slot)); Append(result, make_goto_slot(goF_slot));
        }
    } else if (DIFFER(t(ppGo1))) { Append(result, make_goto_slot(ppGo1)); }
    else if (DIFFER(t(ppGo2))) { Append(result, make_goto_slot(ppGo2)); }
    pp_stmt = result;
    return;
}
InitCounter();
InitStack();
Src = '';
while ((Line = INPUT)) Src = Src Line nl ;
if (Src ? Compiland) {
    ptree = Pop();
    i = 1;
    nk = n(ptree);
    prev_label_only = '';
    while (LE(i, nk)) {
        cmd = c(ptree)[i];
        if (IDENT(t(cmd), 'Stmt')) {
            result = pp_stmt(cmd);
            if (IDENT(n(result), '') IDENT(prev_label_only, 'yes')) { i = i + 1; }
            else { TDump(result); prev_label_only = (IDENT(n(result), 1) IDENT(t(c(result)[1]), ':lbl') 'yes', ''); i = i + 1; }
        } else { i = i + 1; }
    }
} else OUTPUT = 'Parse Error.';
