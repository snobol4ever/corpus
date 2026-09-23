// calculator-1.sc -- arithmetic expression evaluator, Variant 1 (Snocone BENCHMARK).
// Replicates the LOGIC of benchmarks/snobol4/demo/calculator-1.sno, not merely its
// output: the quiet flag, the CALCULATOR_1(N) re-evaluation kernel and the *BENCH
// marker are all carried over. Same oracle ref (calculator-1.ref, 2208 lines), which
// is byte-identical to the demos-tree ref.
// Right-recursive grammar with deferred semantic actions on a value stack:
// atoms push, operators pop two and push the result, eol emits.
// Equivalent of calculator-1.sno; same output, same oracle ref (calculator-1.ref).
// Run: scrip calculator-1.sc < calculator.input
//------------------------------------------------------------------------------
function EMIT() {
    OUTPUT  =   EQ(quiet) DRF(S[1]);
    sp      =   0;
    EMIT    =   .dm;
    nreturn;
}
function PSH() { PSH = .S[sp = sp + 1]; nreturn; }
function DRF(nm) {
    DRF     =   nm;
    if (~(nm ? POS(0) ANY(&LCASE) RPOS(0))) return;
    DRF     =   vars[nm];
    return;
}
function ADD() { S[sp = sp - 1] = DRF(S[sp]) + DRF(S[sp + 1]); ADD = .dm; nreturn; }
function SUB() { S[sp = sp - 1] = DRF(S[sp]) - DRF(S[sp + 1]); SUB = .dm; nreturn; }
function MUL() { S[sp = sp - 1] = DRF(S[sp]) * DRF(S[sp + 1]); MUL = .dm; nreturn; }
function DIV() { S[sp = sp - 1] = DRF(S[sp]) / DRF(S[sp + 1]); DIV = .dm; nreturn; }
function NEG() { S[sp] = -DRF(S[sp]);                          NEG = .dm; nreturn; }
//------------------------------------------------------------------------------
S           =   ARRAY(65536);
V           =   ANY(&LCASE) . *PSH();
I           =   SPAN('0123456789') . *PSH();
A           =   V | I | FENCE('(' *X ')');
F           =   A | FENCE('+' *F) | FENCE('-' *F . *NEG());
T           =   F ( FENCE('*' *T . *MUL()) | FENCE('/' *T . *DIV()) | '' );
X           =   T ( FENCE('+' *X . *ADD()) | FENCE('-' *X . *SUB()) | '' );
eol         =   CHAR(10) FENCE;
C           =   POS(0) ARBNO(X eol . *EMIT()) RPOS(0);
//------------------------------------------------------------------------------
&TRIM       =   0;
vars        =   TABLE();
vars['x']   =   1;
vars['y']   =   2;
vars['z']   =   3;
//------------------------------------------------------------------------------
// quiet -- 0 prints every evaluated line (the application's real answer), 1 keeps
// the arithmetic and suppresses the printing.  CALCULATOR_1(N) re-evaluates the
// whole input N times with printing off; the standalone driver at the bottom
// leaves it on and IS the calculator.
//------------------------------------------------------------------------------
quiet       =   0;
function CALCULATOR_1(N) {
    quiet   =   1;
    ZI      =   1;
ZBL:
    sp      =   0;
    if (~(src ? C)) goto ZBAD;
    if (ZI = LT(ZI, N) ZI + 1) goto ZBL;
    quiet   =   0;
    CALCULATOR_1 = 'matched bytes=' SIZE(src);
    return;
ZBAD:
    quiet   =   0;
    CALCULATOR_1 = 'Pattern match failed';
    return;
}
// read all at once: raw fd 0, one 4 MiB-max transfer
INPUT(.INPUT, 9, '[-f0 -r4194304]');
src         =   INPUT;
// *BENCH kernel=CALCULATOR_1 check=1 bud=1000 flr=20
// Pristine (RULES.md THE KERNEL CONVENTION): nothing here times itself; the timing is generated
// around this source by scripts/bench_wrap_snocone.py and scripts/test_snocone_bench_suite.sh.
if (~(src ? C)) goto bad;
goto fin;
bad:
OUTPUT      =   'Boo!';
fin:
