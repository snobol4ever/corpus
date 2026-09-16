// calculator-1-match-fence.sc (Snocone BENCHMARK) -- recursive-descent expression grammar, MATCH-ONLY with FENCE (Snocone).
// Replicates the LOGIC of benchmarks/snobol4/demo/calculator-1-match-fence.sno statement for statement:
// the CALCULATOR_1_MATCH_FENCE(N) kernel, the *BENCH marker and the OUTPUT = CALCULATOR_1_MATCH_FENCE(1) driver.
// Equivalent of calculator-1-match-fence.sno; same output, same oracle ref.
// Run: scrip calculator-1-match-fence.sc < calculator.input
//------------------------------------------------------------------------------
&TRIM   =  0;
I       =  SPAN('0123456789');
V       =  ANY(&LCASE);
A       =  FENCE(I | V | '(' *X ')');
F       =  FENCE('+' *F | '-' *F | A);
T       =  FENCE(F '*' *T | F '/' *T | F);
X       =  FENCE(T '+' *X | T '-' *X | T);
C       =  POS(0) ARBNO(X CHAR(10)) RPOS(0);
//------------------------------------------------------------------------------
// CALCULATOR_1_MATCH_FENCE(N) -- run the recognizer N times over the slurped source and report the
// number of bytes it matched.  N=1 is what the standalone driver below asks for;
// the timed twin built by scripts/bench_wrap.sh asks for many.
//------------------------------------------------------------------------------
function CALCULATOR_1_MATCH_FENCE(N) {
    ZI      =   1;
ZBL:
    if (~(src ? C)) goto ZBAD;
    if (ZI = LT(ZI, N) ZI + 1) goto ZBL;
    CALCULATOR_1_MATCH_FENCE = 'matched bytes=' SIZE(src);
    return;
ZBAD:
    CALCULATOR_1_MATCH_FENCE = 'Pattern match failed';
    return;
}
//------------------------------------------------------------------------------
INPUT(.INPUT, 9, '[-f0 -r4194304]');
src         =   INPUT;
// *BENCH kernel=CALCULATOR_1_MATCH_FENCE check=1 bud=1000 flr=20
OUTPUT      =   CALCULATOR_1_MATCH_FENCE(1);
