// parser_snobol4.sc — PARSER-SN: SNOBOL4 pattern-based frontend in Snocone.
//
// Grammar emits canonical E_* IR tags directly — no post-parse tag rename.
// rw_expr is a pure structural rewrite: paren-strip, ExprList-unwrap,
// E_IDX-flatten, E_CAPT_*_ASGN left-rotation.  String quotes stripped at
// parse time via dot-capture + Push_qlit (canonical iter#5 pair shape).
//
// Tree shape produced per --dump-parse oracle:
//   (STMT [:lbl L] [:eq] [:subj E] [:pat P] [:repl R] [:goS/:goF/:goU G])
//
// Rungs: SN-0..SN-7-7 PASS=78; SN-7-7b: direct E_* + delete rw_tag;
//        SN-7-7c: full keyword/function/builtin inventory + classifier patterns
//                 (cross-runtime union: SPITBOL x64/x32 sv-classes + csnobol4
//                 KNLIST/KVLIST/FNLIST). beauty.sno-faithful classifier patterns
//                 Function/BuiltinVar/SpecialNm/ProtKwd/UnprotKwd via *match.
/*====================================================================================================================*/
E_Parse            = "'Parse'";
E_goU              = "':go'";
E_goS              = "':goS'";
E_goF              = "':goF'";
E_VAR              = "'E_VAR'";
E_ILIT             = "'E_ILIT'";
E_QLIT             = "'E_QLIT'";
E_RLIT             = "'E_RLIT'";
E_KEYWORD          = "'E_KEYWORD'";
E_DEFER            = "'E_DEFER'";
E_IDX              = "'E_IDX'";
E_FNC              = "'E_FNC'";
E_SEQ              = "'E_SEQ'";
E_ALT              = "'E_ALT'";
E_ADD              = "'E_ADD'";
E_SUB              = "'E_SUB'";
E_MUL              = "'E_MUL'";
E_DIV              = "'E_DIV'";
E_POW              = "'E_POW'";
E_PLS              = "'E_PLS'";
E_MNS              = "'E_MNS'";
E_CAPT_IMMED_ASGN  = "'E_CAPT_IMMED_ASGN'";
E_CAPT_COND_ASGN   = "'E_CAPT_COND_ASGN'";
E_LEN              = "'E_LEN'";
E_BREAK            = "'E_BREAK'";
E_SPAN             = "'E_SPAN'";
E_ANY              = "'E_ANY'";
E_NOTANY           = "'E_NOTANY'";
E_FENCE            = "'E_FENCE'";
E_ARBNO            = "'E_ARBNO'";
E_POS              = "'E_POS'";
E_RPOS             = "'E_RPOS'";
E_TAB              = "'E_TAB'";
E_RTAB             = "'E_RTAB'";
E_BREAKX           = "'E_BREAKX'";
E_INDIRECT         = "'E_INDIRECT'";
E_NAME             = "'E_NAME'";
E_ASSIGN           = "'E_ASSIGN'";
E_NOT              = "'E_NOT'";
E_CAPT_CURSOR      = "'E_CAPT_CURSOR'";
E_INTERROGATE      = "'E_INTERROGATE'";
E_OPSYN            = "'E_OPSYN'";
/*====================================================================================================================*/
// SN-7-7c — classifier infrastructure (beauty.sno-faithful, cross-runtime union).
//
// Sources scanned: SPITBOL x64 sbl.min sv-classes, SPITBOL x32 s.min sv-classes,
// csnobol4 v311.sil KNLIST/KVLIST/FNLIST.  x32 ≡ x64 (verified). Conflicts
// resolved per beauty.sno (the canonical model file): ERRTEXT/ERRTYPE are
// UnprotKwds (settable in SPITBOL) not ProtKwds (csnobol4 quirk).
//
// Functions (123)  : SPITBOL svfnf+svfnn+svfnp+svfpr+svfnk+svfpk ∪ csnobol4 FNLIST
// UnprotKwds (21)  : SPITBOL svknm-settable + svfnk ∪ csnobol4 KNLIST
// ProtKwds (28)    : SPITBOL svknm-r/o + svkvc + svkvl + svkwc + svfpk ∪ csnobol4 KVLIST
//                    (− ERRTEXT/ERRTYPE per SPITBOL+beauty.sno)
// BuiltinVars (7)  : SPITBOL svkvc + svkvl + class-0 (predefined patterns + TERMINAL)
// SpecialNms (8)   : SPITBOL svlbl + ABORT (svkvl) + START (legacy MS4 entry label)
//
// Names with multi-role membership (e.g. INPUT, OUTPUT, TRACE, TRIM, CODE, DUMP,
// FENCE, ABORT, ARB, BAL, FAIL, REM, SUCCEED) appear in multiple lists by design.
// Parser order in Expr17 matters: classified Function tried first, plain *Id last.
/*--------------------------------------------------------------------------------------------------------------------*/
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
/*--------------------------------------------------------------------------------------------------------------------*/
// Inline helpers (sn_match, sn_upr) — kept local to parser_snobol4.sc to avoid
// expanding the shared parser test blob.  No other PARSER-* parser uses these.
function sn_match(subject, pattern) { sn_match = .dummy; if (subject ? pattern) nreturn; else freturn; }
function sn_upr(s)                  { sn_upr   = REPLACE(s, &LCASE, &UCASE); return; }
//
// TxInList — succeeds iff *upr(tx) appears as a whole space-separated word in
// the subject list.  Each list above ends with a trailing space so the last
// word matches via the leading-space disjunct (no special end-of-string case).
TxInList    =  (POS(0) | ' ') *sn_upr(tx) (' ' | RPOS(0));
//
// Classifier patterns — capture identifier into tx via immediate-bind, then
// succeed iff tx ∈ list (else propagate failure to the enclosing alternative).
// Form: `pat $ tx $ *sn_match(List, TxInList)` — left-associative `$` chain.
//   First $:  binary E_CAPT_IMMED_ASGN — bind tx to matched portion of pat.
//   Second $: same operator with a deferred call as the variable-name
//             expression; sn_match returns .dummy on success (assignment to
//             dummy is a no-op side effect) or freturns to fail the match.
// These are BARE — no leading `&` in ProtKwd/UnprotKwd. Callers in Expr14
// consume `&` themselves and compose via `shift(*ProtKwd, E_KEYWORD)`, which
// expands (per semantic.sc) to `*ProtKwd . thx . *Shift(E_KEYWORD, thx)` —
// the thx-relay idiom that reads thx immediately after the sub-match completes.
// Same composition in Expr17 for *Function/*BuiltinVar/*SpecialNm via `~`.
Function    =  SPAN('.' digits &UCASE '_' &LCASE) $ tx $ *sn_match(Functions,   TxInList);
BuiltinVar  =  SPAN('.' digits &UCASE '_' &LCASE) $ tx $ *sn_match(BuiltinVars, TxInList);
SpecialNm   =  SPAN('.' digits &UCASE '_' &LCASE) $ tx $ *sn_match(SpecialNms,  TxInList);
ProtKwd     =  SPAN(&UCASE &LCASE)                $ tx $ *sn_match(ProtKwds,    TxInList);
UnprotKwd   =  SPAN(&UCASE &LCASE)                $ tx $ *sn_match(UnprotKwds,  TxInList);
/*====================================================================================================================*/
// PATTERN block — beauty.sno grammar; shift/reduce tags are canonical E_*.
/*====================================================================================================================*/
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
/*--------------------------------------------------------------------------------------------------------------------*/
$','        =  $' ' ',' $' ';
$'('        =  '(' $' ';
$'['        =  '[' $' ';
$'<'        =  '<' $' ';
$')'        =  $' ' ')';
$']'        =  $' ' ']';
$'>'        =  $' ' '>';
/*--------------------------------------------------------------------------------------------------------------------*/
// push_qlit — pair-shape worker: push E_QLIT leaf using dot-captured str_body.
function push_qlit() { Push(tree('E_QLIT', str_body)); push_qlit = .dummy; nreturn; }
Push_qlit = (epsilon . *push_qlit());
/*--------------------------------------------------------------------------------------------------------------------*/
ExprList    =  nPush()
               *XList
               ("'ExprList'" & '*(GT(nTop(), 1) nTop())')
               nPop();
XList       =  nInc() (*Expr | epsilon ~ '') FENCE($',' *XList | epsilon);
Expr        =  *Expr0;
Expr0       =  *Expr1 FENCE($'=' *Expr0 (E_ASSIGN & 2) | epsilon);
Expr1       =  *Expr2 FENCE($'?' *Expr1 reduce_opsyn('?', 2) | epsilon);
Expr2       =  *Expr3 FENCE($'&' *Expr2 reduce_opsyn('&', 2) | epsilon);
Expr3       =  nPush() *X3 (E_ALT & '*(GT(nTop(), 1) nTop())') nPop();
X3          =  nInc() *Expr4 FENCE($'|' *X3 | epsilon);
Expr4       =  nPush() *X4 (E_SEQ & '*(GT(nTop(), 1) nTop())') nPop();
X4          =  nInc() *Expr5 FENCE($'  ' *X4 | epsilon);
Expr5       =  *Expr6 FENCE($'@' *Expr5 reduce_opsyn('@', 2) | epsilon);
Expr6       =  *Expr7
               FENCE($'+' *Expr7 foldop(E_ADD) *Expr6cont | $'-' *Expr7 foldop(E_SUB) *Expr6cont | epsilon);
Expr6cont   =  FENCE($'+' *Expr7 foldop(E_ADD) *Expr6cont | $'-' *Expr7 foldop(E_SUB) *Expr6cont | epsilon);
Expr7       =  *Expr8 FENCE($'#' *Expr7 foldop(E_MUL) | epsilon);
Expr8       =  *Expr9 FENCE($'/' *Expr9 foldop(E_DIV) *Expr8cont | epsilon);
Expr8cont   =  FENCE($'/' *Expr9 foldop(E_DIV) *Expr8cont | epsilon);
Expr9       =  *Expr10 FENCE($'*' *Expr10 foldop(E_MUL) *Expr9cont | epsilon);
Expr9cont   =  FENCE($'*' *Expr10 foldop(E_MUL) *Expr9cont | epsilon);
Expr10      =  *Expr11 FENCE($'%' *Expr10 foldop(E_DIV) | epsilon);
Expr11      =  *Expr12 FENCE(($'^' | $'!' | $'**') *Expr12 foldop(E_POW) *Expr11cont | epsilon);
Expr11cont  =  FENCE(($'^' | $'!' | $'**') *Expr12 foldop(E_POW) *Expr11cont | epsilon);
Expr12      =  *Expr13
               FENCE(
                  $'$' *Expr12 (E_CAPT_IMMED_ASGN & 2)
               |  $'.' *Expr12 (E_CAPT_COND_ASGN  & 2)
               |  epsilon
               );
Expr13      =  *Expr14 FENCE($'~' *Expr13 reduce_opsyn('~', 2) | epsilon);
Expr14      =  '@' *Expr14 (E_CAPT_CURSOR & 1)
            |  '~' *Expr14 (E_NOT & 1)
            |  '?' *Expr14 (E_INTERROGATE & 1)
            |  '&' shift(*ProtKwd,   E_KEYWORD)
            |  '&' shift(*UnprotKwd, E_KEYWORD)
            |  '+' *Expr14 (E_PLS & 1)
            |  '-' *Expr14 (E_MNS & 1)
            |  '*' *Expr14 reduce(E_DEFER, 1)
            |  '$' *Expr14 (E_INDIRECT & 1)
            |  '.' *Expr14 (E_NAME & 1)
            |  '!' *Expr14 (E_POW & 1)
            |  '%' *Expr14 (E_DIV & 1)
            |  '/' *Expr14 (E_DIV & 1)
            |  '#' *Expr14 (E_MUL & 1)
            |  '=' *Expr14 (E_ASSIGN & 1)
            |  '|' *Expr14 (E_OPSYN & 1)
            |  *Expr15;
Expr15      =  *Expr17
               FENCE(nPush() *Expr16 (E_IDX & 'nTop() + 1') nPop() | epsilon);
Expr16      =  nInc()
               ($'[' *ExprList $']' | $'<' *ExprList $'>')
               FENCE(*Expr16 | epsilon);
Expr17      =  FENCE(
                  nPush()
                  $'('
                  *Expr
                  (  $',' *XList ("','" & 'nTop() + 1')
                  |  epsilon ("'()'" & 1)
                  )
                  $')'
                  nPop()
               |  *Function   ~ E_VAR $'(' *ExprList $')' (E_FNC & 2)
               |  *Function   ~ E_VAR
               |  *BuiltinVar ~ E_VAR
               |  *SpecialNm  ~ E_VAR
               |  *Id ~ E_VAR $'(' *ExprList $')' (E_FNC & 2)
               |  *Id ~ E_VAR
               |  *String Push_qlit
               |  *Real ~ E_RLIT
               |  *Integer ~ E_ILIT
               );
// Goto: direction baked into reduce tag via named Sgo/Fgo/Ugo patterns.
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
/*====================================================================================================================*/
// Helper functions — pure structural rewrite; grammar emits E_* directly.
/*====================================================================================================================*/
// rw_call: E_FNC node — c[1]=callee E_VAR (v=fname), c[2]=args ('ExprList' or bare).
function rw_call(x, fname, args, na, result, i) {
    fname = v(c(x)[1]);
    args  = c(x)[2];
    if (IDENT(t(args), 'ExprList')) { na = n(args); }
    else if (DIFFER(t(args)))        { na = 1; }
    else                             { na = 0; }
    if (IDENT(fname, 'LEN'))          { result = Tree('E_LEN',    '', na); }
    else if (IDENT(fname, 'BREAK'))   { result = Tree('E_BREAK',  '', na); }
    else if (IDENT(fname, 'SPAN'))    { result = Tree('E_SPAN',   '', na); }
    else if (IDENT(fname, 'ANY'))     { result = Tree('E_ANY',    '', na); }
    else if (IDENT(fname, 'NOTANY'))  { result = Tree('E_NOTANY', '', na); }
    else if (IDENT(fname, 'FENCE'))   { result = Tree('E_FENCE',  '', na); }
    else if (IDENT(fname, 'ARBNO'))   { result = Tree('E_ARBNO',  '', na); }
    else if (IDENT(fname, 'POS'))     { result = Tree('E_POS',    '', na); }
    else if (IDENT(fname, 'RPOS'))    { result = Tree('E_RPOS',   '', na); }
    else if (IDENT(fname, 'TAB'))     { result = Tree('E_TAB',    '', na); }
    else if (IDENT(fname, 'RTAB'))    { result = Tree('E_RTAB',   '', na); }
    else if (IDENT(fname, 'BREAKX'))  { result = Tree('E_BREAKX', '', na); }
    else                              { result = Tree('E_FNC', fname, 0); }
    if (EQ(na, 0)) { rw_call = result; return; }
    if (IDENT(t(args), 'ExprList')) {
        i = 1;
        while (LE(i, na)) { Append(result, rw_expr(c(args)[i])); i = i + 1; }
    } else {
        Append(result, rw_expr(args));
    }
    rw_call = result;
    return;
}
/*--------------------------------------------------------------------------------------------------------------------*/
// rw_expr — pure structural rewrite (no tag rename; grammar emits E_* directly).
//   '()'           — paren wrapper: unwrap single child
//   E_FNC          — function call: dispatch to rw_call
//   E_SEQ (n>=1, v='') — ExprList wrapper from XList: transparent (inline or unwrap)
//   E_IDX          — flatten E_SEQ bracket-group children
//   E_CAPT_*_ASGN  — left-rotation (runtime strictly binary; right-recursive in grammar)
//   all other E_*  — recurse into children, preserve tag and value
function rw_expr(x, t, result, i, right, rr, rl, xlist, j) {
    if (IDENT(x))                  { rw_expr = x; return; }
    t = t(x);
    if (IDENT(t))                  { rw_expr = x; return; }
    if (IDENT(t, '()'))            { rw_expr = rw_expr(c(x)[1]); return; }
    if (IDENT(t, 'E_FNC'))         { rw_expr = rw_call(x); return; }
    // 'ExprList' from XList: transparent wrapper — inline children into E_SEQ or unwrap
    if (IDENT(t, 'ExprList')) {
        if (EQ(n(x), 1))           { rw_expr = rw_expr(c(x)[1]); return; }
        result = Tree('E_SEQ', '', 0);
        i = 1;
        while (LE(i, n(x))) { Append(result, rw_expr(c(x)[i])); i = i + 1; }
        rw_expr = result;
        return;
    }
    // E_IDX: flatten ExprList bracket-group children directly
    if (IDENT(t, 'E_IDX')) {
        result = Tree('E_IDX', '', 0);
        i = 1;
        while (LE(i, n(x))) {
            if (IDENT(t(c(x)[i]), 'ExprList')) {
                xlist = c(x)[i];
                j = 1;
                while (LE(j, n(xlist))) { Append(result, rw_expr(c(xlist)[j])); j = j + 1; }
            } else {
                Append(result, rw_expr(c(x)[i]));
            }
        i = i + 1; }
        rw_expr = result;
        return;
    }
    // Left-rotation for E_CAPT_*_ASGN: runtime strictly binary; oracle is left-assoc.
    if (EQ(n(x), 2)) {
        if (IDENT(t, 'E_CAPT_IMMED_ASGN') | IDENT(t, 'E_CAPT_COND_ASGN')) {
            right = c(x)[2];
            if (EQ(n(right), 2) IDENT(t(right), t)) {
                result = Tree(t, '', 2, rw_expr(c(x)[1]), rw_expr(c(right)[1]));
                rr = c(right)[2];
                while (EQ(n(rr), 2) IDENT(t(rr), t)) {
                    rl = c(rr)[1];
                    result = Tree(t, '', 2, result, rw_expr(rl));
                    rr = c(rr)[2];
                }
                result = Tree(t, '', 2, result, rw_expr(rr));
                rw_expr = result;
                return;
            }
        }
    }
    result = Tree(t, v(x), 0);
    i = 1;
    while (LE(i, n(x))) { Append(result, rw_expr(c(x)[i])); i = i + 1; }
    rw_expr = result;
    return;
}
/*--------------------------------------------------------------------------------------------------------------------*/
// rw_goto_slot — goto tag ':go'/':goS'/':goF' baked by Sgo/Fgo/Ugo patterns.
// Target child forms:
//   E_VAR x / E_QLIT x  — simple label: use v() directly
//   E_INDIRECT(E_QLIT x) — $'x' literal indirect: unwrap to x
//   other computed expr  — format as $((TDump(expr)))
function rw_goto_slot(g, tgt, tgt_v) {
    tgt   = c(g)[1];
    if (IDENT(t(tgt), 'E_INDIRECT') EQ(n(tgt), 1) IDENT(t(c(tgt)[1]), 'E_QLIT')) {
        // $'literal' computed goto -> unwrap to bare string value
        tgt_v = v(c(tgt)[1]);
    } else if (IDENT(t(tgt), 'E_INDIRECT') EQ(n(tgt), 1)) {
        // $(expr) computed goto -> strip E_INDIRECT and paren wrapper, render inner expr
        inner = c(tgt)[1];
        if (IDENT(t(inner), '()')) {
            // paren-wrapped: render its child directly
            if (EQ(n(inner), 1)) { inner = c(inner)[1]; }
        }
        tgt_v = '$(' TLump(inner, 99999) ')';
    } else if (DIFFER(v(tgt))) {
        tgt_v = v(tgt);
    } else {
        tgt_v = '$(' TLump(tgt, 99999) ')';
    }
    rw_goto_slot = tree(t(g), tgt_v);
    return;
}
/*--------------------------------------------------------------------------------------------------------------------*/
// pp_stmt — read beauty.sno's 7-slot Stmt; build IR STMT with role-slot wrappers.
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
        subj_ir = rw_expr(ppSubj);
        if (DIFFER(t(ppPatrn))) {
            pat_ir = rw_expr(ppPatrn);
            if (IDENT(t(pat_ir), 'E_ALT') GT(n(pat_ir), 0) DIFFER(t(ppPatrn), '()')) {
                seq_n = Tree('E_SEQ', '', 2, subj_ir, c(pat_ir)[1]);
                pat_seq = Tree('E_ALT', '', 1, seq_n);
                i = 2;
                while (LE(i, n(pat_ir))) { Append(pat_seq, c(pat_ir)[i]); i = i + 1; }
                Append(result, Tree(':subj', '', 1, pat_seq));
            } else {
                Append(result, Tree(':subj', '', 1, subj_ir));
                Append(result, Tree(':pat',  '', 1, pat_ir));
            }
        } else {
            // split only when first child is E_VAR (oracle rule: fn-call concat stays in :subj)
            if (IDENT(t(subj_ir), 'E_SEQ') GT(n(subj_ir), 1) IDENT(t(c(subj_ir)[1]), 'E_VAR')) {
                seq_n = n(subj_ir);
                Append(result, Tree(':subj', '', 1, c(subj_ir)[1]));
                if (LE(seq_n, 2)) {
                    Append(result, Tree(':pat', '', 1, c(subj_ir)[2]));
                } else {
                    pat_seq = Tree('E_SEQ', '', 0);
                    i = 2;
                    while (LE(i, seq_n)) { Append(pat_seq, c(subj_ir)[i]); i = i + 1; }
                    Append(result, Tree(':pat', '', 1, pat_seq));
                }
            } else {
                Append(result, Tree(':subj', '', 1, subj_ir));
            }
        }
        if (DIFFER(t(ppRepl))) {
            Append(result, Tree(':repl', '', 1, rw_expr(ppRepl)));
        } else if (DIFFER(ppAsgn)) {
            Append(result, Tree(':repl', '', 1, tree('E_QLIT', '')));
        }
    }
    // oracle ordering: :goS before :goF for simple targets; :goF before :goS when goS is computed.
    // Computed goS = its child is E_INDIRECT with non-QLIT arg, or non-VAR/QLIT child.
    // Detect: goS slot present, child is E_INDIRECT wrapping a non-QLIT (i.e. a real expr).
    if (DIFFER(t(ppGo1)) DIFFER(t(ppGo2))) {
        // find which is goS and which is goF
        if (IDENT(t(ppGo1), ':goS')) { goS_slot = ppGo1; goF_slot = ppGo2; }
        else                          { goS_slot = ppGo2; goF_slot = ppGo1; }
        goS_child = c(goS_slot)[1];
        // computed goS: E_INDIRECT wrapping non-QLIT expr -> emit goF first
        if (IDENT(t(goS_child), 'E_INDIRECT') DIFFER(t(c(goS_child)[1]), 'E_QLIT')) {
            Append(result, rw_goto_slot(goF_slot)); Append(result, rw_goto_slot(goS_slot));
        } else {
            Append(result, rw_goto_slot(goS_slot)); Append(result, rw_goto_slot(goF_slot));
        }
    } else if (DIFFER(t(ppGo1))) { Append(result, rw_goto_slot(ppGo1)); }
    else if (DIFFER(t(ppGo2))) { Append(result, rw_goto_slot(ppGo2)); }
    pp_stmt = result;
    return;
}
/*====================================================================================================================*/
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
            // oracle suppresses blank (STMT) immediately after a label-only stmt
            if (IDENT(n(result), '') IDENT(prev_label_only, 'yes')) { i = i + 1; }
            else { TDump(result); prev_label_only = (IDENT(n(result), 1) IDENT(t(c(result)[1]), ':lbl') 'yes', ''); i = i + 1; }
        } else { i = i + 1; }
    }
} else OUTPUT = 'Parse Error.';
/*====================================================================================================================*/
