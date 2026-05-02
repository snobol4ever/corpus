// driver.sc — test driver for omega.sc (Snocone)
// Tests TV/TW/TX/TY/TZ pattern instrumentation routines

doParseTree = 0;
xTrace = 0;
doDebug = 0;
t8MaxLast = 0;
t8Max = 0;
t8MaxLine = 0;

function lwr(s) { lwr = REPLACE(s, &UCASE, &LCASE); return; }
function upr(s) { upr = REPLACE(s, &LCASE, &UCASE); return; }
function assign(name, expr) {
    assign = .dummy;
    if (IDENT(DATATYPE(expr), 'EXPRESSION')) { $name = EVAL(expr); nreturn; }
    $name = expr;
    nreturn;
}
function T8Trace(lvl, str, ofs, t8p) {
    T8Trace = .dummy;
    nreturn;
}

function TX(lvl, pat, name, omega) {
    if (EQ(doParseTree, FALSE)) { omega = 'pat'; }
    else { omega = "(pat ~ 'identifier')"; }
    omega = omega " $ tx *LEQ(tx, '" name "')";
    TX = TZ(lvl, name, EVAL(omega));
    if (DIFFER(TX)) { return; } else { freturn; }
}

function TY(lvl, name, pat, omega) {
    if (LE(xTrace, 0)) {
        TY = pat @txOfs $ *assign(.t8Max, *(GT(txOfs, t8Max) txOfs));
        return;
    }
    omega = "pat $ tz @txOfs $ *T8Trace(" lvl ", '" name "', txOfs)";
    TY = EVAL(omega);
    if (DIFFER(TY)) { return; } else { freturn; }
}

function TZ(lvl, name, pat, omega) {
    if (LE(xTrace, 0)) {
        TZ = pat @txOfs $ *assign(.t8Max, *(GT(txOfs, t8Max) txOfs));
        return;
    }
    omega = "@txOfs $ *T8Trace(" lvl ", '?' '" name "', txOfs)"
           " pat $ tz @txOfs $ *T8Trace(" lvl ", '" name ": ', tz, txOfs)";
    TZ = EVAL(omega);
    if (DIFFER(TZ)) { return; } else { freturn; }
}

TRUE = 1;
FALSE = 0;
&STLIMIT = 1000000;

// 1: TY with xTrace=0 returns instrumented pattern
xTrace = 0;
p = TY(1, 'mypat', 'hello');
if (DIFFER(p)) { OUTPUT = 'PASS: 1 TY thin returns non-null'; }
else { OUTPUT = 'FAIL: 1 TY thin returns null'; }

// 2: TZ with xTrace=0 returns instrumented pattern
p = TZ(1, 'mypat', 'hello');
if (DIFFER(p)) { OUTPUT = 'PASS: 2 TZ thin returns non-null'; }
else { OUTPUT = 'FAIL: 2 TZ thin returns null'; }
