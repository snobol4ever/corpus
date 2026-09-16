// calculator-1-match.sc (Snocone BENCHMARK) -- recursive-descent expression grammar, MATCH-ONLY (Snocone).
// Replicates the LOGIC of benchmarks/snobol4/demo/calculator-1-match.sno statement for statement:
// the CALCULATOR_1_MATCH(N) kernel, the *BENCH marker and the OUTPUT = CALCULATOR_1_MATCH(1) driver.
// Equivalent of calculator-1-match.sno; same output, same oracle ref.
// Run: scrip calculator-1-match.sc < calculator.input
//------------------------------------------------------------------------------
&TRIM   =  0;
I       =  SPAN('0123456789');
V       =  ANY(&LCASE);
A       =  I | V | '(' *X ')';
F       =  '+' *F | '-' *F | A;
T       =  F '*' *T | F '/' *T | F;
X       =  T '+' *X | T '-' *X | T;
C       =  POS(0) ARBNO(X CHAR(10)) RPOS(0);
//------------------------------------------------------------------------------
// CALCULATOR_1_MATCH(N) -- run the recognizer N times over the slurped source and report the
// number of bytes it matched.  N=1 is what the standalone driver below asks for;
// the timed twin built by scripts/bench_wrap.sh asks for many.
//------------------------------------------------------------------------------
function CALCULATOR_1_MATCH(N) {
    ZI      =   1;
ZBL:
    if (~(src ? C)) goto ZBAD;
    if (ZI = LT(ZI, N) ZI + 1) goto ZBL;
    CALCULATOR_1_MATCH = 'matched bytes=' SIZE(src);
    return;
ZBAD:
    CALCULATOR_1_MATCH = 'Pattern match failed';
    return;
}
//------------------------------------------------------------------------------
INPUT(.INPUT, 9, '[-f0 -r4194304]');
src         =   INPUT;
// *BENCH kernel=CALCULATOR_1_MATCH check=1 bud=1000 flr=20
OUTPUT      =   CALCULATOR_1_MATCH(1);
