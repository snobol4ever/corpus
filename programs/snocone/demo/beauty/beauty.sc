// beauty.sc — Snocone port of beauty.sno
// Library procedures (global/is/FENCE/io/case/assign/match/counter/stack/tree/
// ShiftReduce/TDump/Gen/Qize/ReadWrite/XDump/semantic/omega/trace) supplied via
// separate -sc includes.  This file contains only the main-program body.

&FULLSCAN = 1;
&MAXLNGTH = 524288;

ppStop = ARRAY('1:4');
ppStop[1] = 18; ppStop[2] = 33; ppStop[3] = 36; ppStop[4] = 81;
ppSmBump = 6; ppLgBump = 21;

//  Parser patterns
Integer = SPAN(digits);
DQ = '"' BREAK('"' nl) '"';
SQ = "'" BREAK("'" nl) "'";
String = *SQ | *DQ;
Real = ( SPAN(digits)
              ('.' FENCE(SPAN(digits) | epsilon) | epsilon)
              ('E' | 'e') ('+' | '-' | epsilon) SPAN(digits)
           | SPAN(digits) '.' FENCE(SPAN(digits) | epsilon)
           );
Id = ANY(&UCASE &LCASE) FENCE(SPAN('.' digits &UCASE '_' &LCASE) | epsilon);
Function = SPAN('.' digits &UCASE '_' &LCASE) . tx . *match(Functions, TxInList);
BuiltinVar = SPAN('.' digits &UCASE '_' &LCASE) . tx . *match(BuiltinVars, TxInList);
SpecialNm = SPAN('.' digits &UCASE '_' &LCASE) . tx . *match(SpecialNms, TxInList);
ProtKwd = '&' SPAN(&UCASE &LCASE) . tx . *match(ProtKwds, TxInList);
UnprotKwd = '&' SPAN(&UCASE &LCASE) . tx . *match(UnprotKwds, TxInList);
Gray = *White | epsilon;
White = SPAN(' ' tab) FENCE(nl ('+' | '.') FENCE(SPAN(' ' tab) | epsilon) | epsilon)
      | nl ('+' | '.') FENCE(SPAN(' ' tab) | epsilon);
TxInList = (POS(0) | ' ') EVAL('upr(tx)') (' ' | RPOS(0));
SpecialNms = 'ABORT CONTINUE END FRETURN NRETURN RETURN SCONTINUE START';
BuiltinVars = 'ABORT ARB BAL FAIL FENCE INPUT OUTPUT REM TERMINAL';
ProtKwds = 'ABORT ALPHABET ARB BAL FAIL FENCE FILE FNCLEVEL '
             'LASTFILE LASTLINE LASTNO LCASE LINE REM RTNTYPE '
             'STCOUNT STNO SUCCEED UCASE';
UnprotKwds = 'ABEND ANCHOR CASE CODE COMPARE DUMP ERRLIMIT '
             'ERRTEXT ERRTYPE FTRACE INPUT MAXLNGTH OUTPUT '
             'PROFILE STLIMIT TRACE TRIM FULLSCAN';
Functions = 'ANY APPLY ARBNO ARG ARRAY ATAN BACKSPACE BREAK BREAKX '
             'CHAR CHOP CLEAR CODE COLLECT CONVERT COPY COS DATA '
             'DATATYPE DATE DEFINE DETACH DIFFER DUMP DUPL EJECT '
             'ENDFILE EQ EVAL EXIT EXP FENCE FIELD GE GT HOST '
             'IDENT INPUT INTEGER ITEM LE LEN LEQ LGE LGT LLE '
             'LLT LN LNE LOAD LOCAL LPAD LT NE NOTANY OPSYN OUTPUT '
             'POS PROTOTYPE REMDR REPLACE REVERSE REWIND RPAD RPOS '
             'RSORT RTAB SET SETEXIT SIN SIZE SORT SPAN SQRT STOPTR '
             'SUBSTR TAB TABLE TAN TIME TRACE TRIM UNLOAD';
$'=' = *White '=' *White; $'?' = *White '?' *White;
$'|' = *White '|' *White; $'+' = *White '+' *White;
$'-' = *White '-' *White; $'/' = *White '/' *White;
$'*' = *White '*' *White; $'^' = *White '^' *White;
$'!' = *White '!' *White; $'**' = *White '**' *White;
$'$' = *White '$' *White; $'.' = *White '.' *White;
$'&' = *White '&' *White; $'@' = *White '@' *White;
$'#' = *White '#' *White; $'%' = *White '%' *White;
$'~' = *White '~' *White; $',' = *Gray ',' *Gray;
$'(' = '(' *Gray; $'[' = '[' *Gray; $'<' = '<' *Gray;
$')' = *Gray ')'; $']' = *Gray ']'; $'>' = *Gray '>';
ExprList = nPush() *XList reduce('ExprList', '*(GT(nTop(), 1) nTop())') nPop();
XList = nInc() (*Expr | epsilon . '') FENCE($',' *XList | epsilon);
Expr = *Expr0;
Expr0 = *Expr1 FENCE($'=' *Expr0 reduce('=', 2) | epsilon);
Expr1 = *Expr2 FENCE($'?' *Expr1 reduce('?', 2) | epsilon);
Expr2 = *Expr3 FENCE($'&' *Expr2 reduce('&', 2) | epsilon);
Expr3 = nPush() *X3 reduce('|', '*(GT(nTop(), 1) nTop())') nPop();
X3 = nInc() *Expr4 FENCE($'|' *X3 | epsilon);
Expr4 = nPush() *X4 reduce('..', '*(GT(nTop(), 1) nTop())') nPop();
X4 = nInc() *Expr5 FENCE(*White *X4 | epsilon);
Expr5 = *Expr6 FENCE($'@' *Expr5 reduce('@', 2) | epsilon);
Expr6 = *Expr7 FENCE($'+' *Expr6 reduce('+', 2) | $'-' *Expr6 reduce('-', 2) | epsilon);
Expr7 = *Expr8 FENCE($'#' *Expr7 reduce('#', 2) | epsilon);
Expr8 = *Expr9 FENCE($'/' *Expr8 reduce('/', 2) | epsilon);
Expr9 = *Expr10 FENCE($'*' *Expr9 reduce('*', 2) | epsilon);
Expr10 = *Expr11 FENCE($'%' *Expr10 reduce('%', 2) | epsilon);
Expr11 = *Expr12 FENCE(($'^' | $'!' | $'**') *Expr11 reduce('^', 2) | epsilon);
Expr12 = *Expr13 FENCE($'$' *Expr12 reduce('$', 2) | $'.' *Expr12 reduce('.', 2) | epsilon);
Expr13 = *Expr14 FENCE($'~' *Expr13 reduce('~', 2) | epsilon);
Expr14 = '@' *Expr14 reduce('@', 1) | '~' *Expr14 reduce('~', 1)
         | '?' *Expr14 reduce('?', 1) | shift(*ProtKwd, 'ProtKwd')
         | shift(*UnprotKwd, 'UnprotKwd') | '&' *Expr14 reduce('&', 1)
         | '+' *Expr14 reduce('+', 1) | '-' *Expr14 reduce('-', 1)
         | '*' *Expr14 reduce('*', 1) | '$' *Expr14 reduce('$', 1)
         | '.' *Expr14 reduce('.', 1) | '!' *Expr14 reduce('!', 1)
         | '%' *Expr14 reduce('%', 1) | '/' *Expr14 reduce('/', 1)
         | '#' *Expr14 reduce('#', 1) | '=' *Expr14 reduce('=', 1)
         | '|' *Expr14 reduce('|', 1) | *Expr15;
Expr15 = *Expr17 FENCE(nPush() *Expr16 reduce('[]', 'nTop() + 1') nPop() | epsilon);
Expr16 = nInc() ($'[' *ExprList $']' | $'<' *ExprList $'>') FENCE(*Expr16 | epsilon);
Expr17 = FENCE(
             nPush() $'(' *Expr
                 ($',' *XList reduce(',', 'nTop() + 1') | epsilon . '' reduce('()', 1))
                 $')' nPop()
           | shift(*Function, 'Function') $'(' *ExprList $')' reduce('Call', 2)
           | shift(*Id, 'Id') $'(' *ExprList $')' reduce('Call', 2)
           | shift(*BuiltinVar, 'BuiltinVar') | shift(*SpecialNm, 'SpecialNm')
           | shift(*Id, 'Id') | shift(*String, 'String')
           | shift(*Real, 'Real') | shift(*Integer, 'Integer')
           );
SGoto = ('S' | 's') . *assign(.SorF, *'S');
FGoto = ('F' | 'f') . *assign(.SorF, *'F');
SorF = *SGoto | *FGoto;
Target = $'(' . *assign(.Brackets, *'()') *Expr $')'
         | $'<' . *assign(.Brackets, *'<>') *Expr $'>';
Goto = *Gray ':' *Gray
          FENCE(
             *Target reduce("*(':' Brackets)", 1) epsilon . ''
           | (*SGoto | *FGoto) *Target reduce("*(':' SorF Brackets)", 1)
               FENCE(*Gray (*SGoto | *FGoto) *Target reduce("*(':' SorF Brackets)", 1) | epsilon . '')
           );
Control = '-' BREAK(nl ';');
Comment = '*' BREAK(nl);
Label = shift(BREAK(' ' tab nl ';'), 'Label');
Stmt = *Label
           ( *White *Expr14
                FENCE(
                   epsilon . '' *White ('=' . '' *White *Expr | '=' . '' epsilon . '')
                 | ($'?' | *White) *Expr1
                     FENCE( *White ('=' . '' *White *Expr | '=' . '' epsilon . '')
                            | epsilon . '' epsilon . '')
                 | epsilon . '' epsilon . '' epsilon . '')
            | epsilon . '' epsilon . '' epsilon . '' epsilon . '')
           FENCE(*Goto | epsilon . '' epsilon . '') *Gray;
Commands = *Command FENCE(*Commands | epsilon);
Command = nInc()
           FENCE(
              shift(*Comment, 'Comment') reduce('Comment', 1) nl
            | shift(*Control, 'Control') reduce('Control', 1) (nl | ';')
            | *Stmt reduce('Stmt', 7) (nl | ';')
            );
Parse = nPush() ARBNO(*Command) reduce('Parse', 'nTop()') nPop();
Compiland = nPush() ARBNO(*Command) reduce('Parse', 'nTop()')
           (icase('END') (' ' BREAK(nl) nl | nl) ARBNO(BREAK(nl) nl) | epsilon)
           nPop();


//=============================================================================
//  ppLeaf(x, t) — emit a leaf node; return 1 on success
//=============================================================================
function ppLeaf(x, t) {
    if (Gen(ss(x))) { return; }
    error();
}

//=============================================================================
//  ppUnOp(x, t, c) — emit a unary operator node
//=============================================================================
function ppUnOp(x, t, c) {
    if (Gen(ss(x, ppWidth - GetLevel()))) { return; }
    Gen(t); pp(c[1]);
    return;
}

//=============================================================================
//  ppBinOp(x, t, c) — emit a binary operator node
//=============================================================================
function ppBinOp(x, t, c) {
    if (Gen(ss(x, ppWidth - GetLevel()))) { return; }
    pp(c[1]);
    Gen(nl); DecLevel(); Gen(t); IncLevel(); GenTab();
    pp(c[2]);
    return;
}

//=============================================================================
//  ppStmt(x) — columnar layout for Stmt nodes
//=============================================================================
function ppStmt(x, c, ppLbl, ppSubj, ppPatrn, ppAsgn, ppRepl, ppGo1, ppGo2) {
    SetLevel(0); GenSetCont('+');
    ppWidth = ppStop[4];
    c = c(x);
    ppLbl = ss(c[1]); ppSubj = c[2]; ppPatrn = c[3];
    ppAsgn = v(c[4]); ppRepl = c[5]; ppGo1 = c[6]; ppGo2 = c[7];
    Gen(ppLbl);
    if (DIFFER(t(ppSubj))) {
        Gen(' '); GenTab(ppStop[1]); SetLevel(ppStop[1]);
        ppWidth = IDENT(t(ppPatrn)) IDENT(ppAsgn) IDENT(t(ppGo1)) ppStop[4] + ppLgBump;
        pp(ppSubj);
        if (DIFFER(t(ppPatrn))) {
            Gen(' '); GenTab(ppStop[2]); SetLevel(ppStop[2]);
            ppWidth = IDENT(ppAsgn) IDENT(t(ppGo1)) ppStop[4] + ppLgBump;
            pp(ppPatrn);
            if (DIFFER(ppAsgn)) {
                Gen(' =');
                if (DIFFER(t(ppRepl))) { Gen(' '); pp(ppRepl); }
            }
        } else if (DIFFER(ppAsgn)) {
            Gen(' '); GenTab(ppStop[2]); SetLevel(ppStop[2]);
            Gen('=');
            if (DIFFER(t(ppRepl))) {
                Gen(' '); GenTab(ppStop[3]); SetLevel(ppStop[3]);
                ppWidth = IDENT(t(ppGo1)) ppStop[4] + ppLgBump;
                pp(ppRepl);
            }
        }
    }
    if (DIFFER(t(ppGo1))) {
        ppWidth = 256;
        Gen(' '); GenTab(ppStop[4]); SetLevel(ppStop[4]);
        Gen(':'); pp(ppGo1);
        if (DIFFER(t(ppGo2))) { pp(ppGo2); }
    }
    Gen(nl);
    return;
}

//=============================================================================
//  ppList(x, sep, open, close) — emit children with separator
//  sep: ',' '|' '..' '[]' — controls layout
//=============================================================================
function ppList(x, sep, open, close, c, i, n) {
    c = c(x); n = n(x);
    if (Gen(ss(x, ppWidth - GetLevel()))) { return; }
    if (DIFFER(open)) { Gen(open); IncLevel(); GenTab(); }
    pp(c[1]);
    for (i = 2; LE(i, n); i = i + 1) {
        Gen(nl); DecLevel(); Gen(sep); IncLevel(); GenTab();
        pp(c[i]);
    }
    if (DIFFER(close)) { Gen(nl); DecLevel(); Gen(close); }
    return;
}

//=============================================================================
//  pp(x) — pretty-print a tree node to OUTPUT
//=============================================================================
function pp(x, c, i, n, t, v) {
    if (IDENT(x)) { return; }
    t = t(x); v = v(x); n = n(x); c = c(x);
    if (IDENT(t)) { return; }

    // 10 leaf types — Gen(ss(x)); return on success, error() on fail
    if (IDENT(t, 'BuiltinVar')) { ppLeaf(x, t); return; }
    if (IDENT(t, 'Function'))   { ppLeaf(x, t); return; }
    if (IDENT(t, 'Id'))         { ppLeaf(x, t); return; }
    if (IDENT(t, 'Integer'))    { ppLeaf(x, t); return; }
    if (IDENT(t, 'Label'))      { ppLeaf(x, t); return; }
    if (IDENT(t, 'ProtKwd'))    { ppLeaf(x, t); return; }
    if (IDENT(t, 'Real'))       { ppLeaf(x, t); return; }
    if (IDENT(t, 'SpecialNm'))  { ppLeaf(x, t); return; }
    if (IDENT(t, 'String'))     { ppLeaf(x, t); return; }
    if (IDENT(t, 'UnprotKwd'))  { ppLeaf(x, t); return; }

    // Parse — recursive walk over children
    if (IDENT(t, 'Parse')) {
        ppWidth = ppStop[4];
        for (i = 1; LE(i, n); i = i + 1) { pp(c[i]); }
        return;
    }

    // Comment / Control — emit verbatim raw text + nl, no continuation
    if (IDENT(t, 'Comment')) {
        SetLevel(0); GenSetCont(); Gen(v(c[1]) nl); return;
    }
    if (IDENT(t, 'Control')) {
        SetLevel(0); GenSetCont(); Gen(v(c[1]) nl); return;
    }

    if (IDENT(t, 'Stmt')) { ppStmt(x); return; }
    if (IDENT(t, 'ExprList')) { ppList(x, ',', '', ''); return; }
    if (IDENT(t, ',')) { ppList(x, ',', '(', ')'); return; }
    if (IDENT(t, '..')) { ppList(x, '', '', ''); return; }
    if (IDENT(t, '[]')) { ppList(x, ']', '[', ']'); return; }
    if (IDENT(t, '()')) {
        if (Gen(ss(x, ppWidth - GetLevel()))) { return; }
        Gen('('); IncLevel(); GenTab(); pp(c[1]);
        Gen(nl); DecLevel(); Gen(')'); return;
    }
    if (IDENT(t, 'Call')) {
        if (Gen(ss(x, ppWidth - GetLevel()))) { return; }
        pp(c[1]); Gen('(' nl);
        IncLevel(); GenTab(); pp(c[2]);
        Gen(nl); DecLevel(); Gen(')'); return;
    }
    if (IDENT(t, '|')) {
        if (EQ(n, 1)) { ppUnOp(x, t, c); return; }
        ppList(x, '|', '', ''); return;
    }
    if (EQ(n, 1)) { ppUnOp(x, t, c); return; }
    if (EQ(n, 2)) { ppBinOp(x, t, c); return; }
    error();
}

//=============================================================================
//  ss helpers
//=============================================================================
//=============================================================================
//  ss_leaf(t, v, c, len) — stringify leaf/goto nodes; freturn if too long
//  Returns the string in ss_leaf (caller assigns to ss).
//=============================================================================
function ss_leaf(t, v, c, len) {
    // 5 leaf types whose stringization is upr(v) — keywords, identifiers,
    // function and special names that must canonicalize to upper case
    if      (IDENT(t, 'BuiltinVar')) { ss_leaf = upr(v); }
    else if (IDENT(t, 'Function'))   { ss_leaf = upr(v); }
    else if (IDENT(t, 'ProtKwd'))    { ss_leaf = upr(v); }
    else if (IDENT(t, 'SpecialNm'))  { ss_leaf = upr(v); }
    else if (IDENT(t, 'UnprotKwd'))  { ss_leaf = upr(v); }
    // 4 leaf types whose stringization is verbatim v
    else if (IDENT(t, 'Id'))         { ss_leaf = v; }
    else if (IDENT(t, 'Integer'))    { ss_leaf = v; }
    else if (IDENT(t, 'Real'))       { ss_leaf = v; }
    else if (IDENT(t, 'String'))     { ss_leaf = v; }
    // Label is special — upper-case if it is a SpecialNm, else verbatim
    else if (IDENT(t, 'Label')) {
        if (v ? (POS(0) *SpecialNm RPOS(0))) { ss_leaf = upr(v); } else { ss_leaf = v; }
    }
    // 6 goto-clause types — recursive ss() with size-budget bookkeeping
    else if (IDENT(t, ':()')) { ss_leaf = '(' ss(c[1], len - 2) ')'; if (DIFFER(ss_leaf)) { return; } else { freturn; } }
    else if (IDENT(t, ':<>')) { ss_leaf = '<' ss(c[1], len - 2) '>'; if (DIFFER(ss_leaf)) { return; } else { freturn; } }
    else if (IDENT(t, ':S()')) { ss_leaf = 'S(' ss(c[1], len - 3) ')'; if (DIFFER(ss_leaf)) { return; } else { freturn; } }
    else if (IDENT(t, ':S<>')) { ss_leaf = 'S<' ss(c[1], len - 3) '>'; if (DIFFER(ss_leaf)) { return; } else { freturn; } }
    else if (IDENT(t, ':F()')) { ss_leaf = 'F(' ss(c[1], len - 3) ')'; if (DIFFER(ss_leaf)) { return; } else { freturn; } }
    else if (IDENT(t, ':F<>')) { ss_leaf = 'F<' ss(c[1], len - 3) '>'; if (DIFFER(ss_leaf)) { return; } else { freturn; } }
    else { freturn; } // not a leaf — caller handles compound
    if (LE(SIZE(ss_leaf), len)) { return; } else { freturn; }
}

//=============================================================================
//  ss(x, len) — stringify a tree node; freturn if result exceeds len chars
//=============================================================================
function ss(x, len, c, i, n, t, v) {
    if (IDENT(x)) { return; }
    if (IDENT(len)) { len = 1024; }
    if (~GT(len, 0)) { freturn; }
    t = t(x); v = v(x); n = n(x); c = c(x);
    if (IDENT(t)) { return; }
    // Try leaf first
    ss = ss_leaf(t, v, c, len);
    if (DIFFER(ss)) { return; }
    // Compound nodes — | with one child falls through to the unary case below
    if (IDENT(t, '|') ~EQ(n, 1)) {
        ss = ss(c[1], len); if (IDENT(ss)) { freturn; }
        for (i = 2; LE(i, n); i = i + 1) {
            ss = ss ' | ' ss(c[i], len - SIZE(ss) - 3);
            if (IDENT(ss)) { freturn; }
        }
        return;
    }
    if (IDENT(t, '..')) {
        ss = ss(c[1], len); if (IDENT(ss)) { freturn; }
        for (i = 2; LE(i, n); i = i + 1) {
            ss = ss ' ' ss(c[i], len - SIZE(ss) - 1);
            if (IDENT(ss)) { freturn; }
        }
        return;
    }
    if (IDENT(t, 'ExprList')) {
        ss = ss(c[1], len); if (IDENT(ss)) { freturn; }
        for (i = 2; LE(i, n); i = i + 1) {
            ss = ss ', ' ss(c[i], len - SIZE(ss) - 2);
            if (IDENT(ss)) { freturn; }
        }
        return;
    }
    if (IDENT(t, ',')) {
        ss = '(' ss(c[1], len - 4); if (IDENT(ss)) { freturn; }
        for (i = 2; LE(i, n); i = i + 1) {
            ss = ss ', ' ss(c[i], len - SIZE(ss) - 3);
            if (IDENT(ss)) { freturn; }
        }
        ss = ss ')'; return;
    }
    if (IDENT(t, '[]')) {
        ss = ss(c[1], len); if (IDENT(ss)) { freturn; }
        for (i = 2; LE(i, n); i = i + 1) {
            ss = ss '[' ss(c[i], len - SIZE(ss) - 2) ']';
            if (IDENT(ss)) { freturn; }
        }
        return;
    }
    if (IDENT(t, '()')) {
        ss = '(' ss(c[1], len - 2) ')';
        if (DIFFER(ss)) { return; } else { freturn; }
    }
    if (IDENT(t, 'Call')) {
        ss = ss(c[1]) '(' ss(c[2], len - SIZE(v) - 2) ')';
        if (DIFFER(ss)) { return; } else { freturn; }
    }
    if (EQ(n, 1)) {
        ss = t ss(c[1], len - SIZE(t));
        if (DIFFER(ss)) { return; } else { freturn; }
    }
    if (EQ(n, 2)) {
        ss = ss(c[1], len);
        if (IDENT(ss)) { freturn; }
        ss = ss ' ' t ' ' ss(c[2], len - SIZE(ss) - SIZE(t) - 2);
        if (DIFFER(ss)) { return; } else { freturn; }
    }
    error();
}

function bVisit(x, fnc, i) {
    if (~APPLY(fnc, x)) { return; }
    for (i = 1; LE(i, n(x)); i = i + 1) { bVisit(c(x)[i], fnc); }
    return;
}

Refs = '';
function findRefs(x, n, v) {
    if (IDENT(x)) { return; }
    if (IDENT(t(x), 'Call')) {
        for (n = 2; LE(n, n(x)); n = n + 1) { bVisit(c(x)[n], .findRefs); }
        freturn;
    }
    if (IDENT(t(x), '&') EQ(n(x), 1)) { v = ss(x); }
    else if (IDENT(t(x), 'Id')) { v = v(x); }
    else { return; }
    if (~(v ? (POS(0) SPAN('0123456789' &UCASE '_') RPOS(0)))) { freturn; }
    if (DIFFER(Refs)) { Refs = Refs ' ' v; } else { Refs = v; }
    freturn;
}

function refs(p, c, n, s, subj) {
    c = c(p);
    for (n = 1; LE(n, n(p)); n = n + 1) {
        if (IDENT(t(c[n]), 'Stmt')) {
            s = s + 1;
            if (IDENT(t(c(c[n])[3]))) {
                if (IDENT(t(c(c[n])[4]), '=')) {
                    if ((IDENT(t(c(c[n])[2]), 'Id'), IDENT(t(c(c[n])[2]), '$'))) {
                        subj = ss(c(c[n])[2]);
                        Refs = '';
                        bVisit(c(c[n])[5], .findRefs);
                        OUTPUT = LPAD(s, 3, 0) ': ' RPAD(subj, 38) ' ' Refs;
                    }
                }
            }
        }
    }
    return;
}

//=============================================================================
//  Main loop
//=============================================================================
doDebug = 0;
Space = SPAN(' ' tab) | epsilon;

// Canonical Snocone slurp idiom: `Line = INPUT` is the predicate — the
// assignment expression evaluates to FAIL on EOF, and the surrounding
// while-test exits cleanly.  (Per programs/snocone/report.md line 1240.)
//
// Algorithm mirrors beauty.sno main00..main05 exactly:
//   * lines starting with '*' or '-' are header lines, passed through;
//   * other lines accumulate into Src, with continuation lines
//     ('.' or '+' first char) folded in;
//   * each completed logical unit is parsed and pretty-printed;
//   * on EOF, parse the in-progress unit (if any) and stop.
//
// Boolean flags use null=false, 1=true throughout (Snocone: 0 is truthy/
// non-null).  `have_line` distinguishes "Line holds an unprocessed
// look-ahead" from "Line was just consumed; refetch on next iteration".
input_done = '';
Line = '';
have_line = '';
while (IDENT(input_done)) {
    if (IDENT(have_line)) {
        if (Line = INPUT) { have_line = 1; }
        else { input_done = 1; }
    }
    if (IDENT(input_done)) {
        if (Line ? (POS(0) ANY('*-'))) {
            // Header line — pass through verbatim.
            OUTPUT = Line;
            have_line = '';
        } else {
            // Start a new logical unit; gather continuation lines.
            Src = Line nl;
            have_line = '';
            cont_more = 1;
            while (DIFFER(cont_more)) {
                cont_more = '';
                if (Line = INPUT) {
                    have_line = 1;
                    if (Line ? (POS(0) ANY('.+'))) {
                        Src = Src Line nl;
                        have_line = '';
                        cont_more = 1;
                    }
                    // else: non-continuation, keep for next outer iteration
                } else {
                    input_done = 1;
                    have_line = '';
                }
            }
            // Parse the accumulated Src; on error print and continue.
            if (Src ? (POS(0) *Parse *Space RPOS(0))) {
                sno = Pop();
                if (DIFFER(sno)) { pp(sno); }
                else { OUTPUT = 'Internal Error'; OUTPUT = Src; }
            } else {
                OUTPUT = 'Parse Error'; OUTPUT = Src;
            }
        }
    }
}
