// treebank-match.sc (Snocone BENCHMARK) -- Penn-treebank bracket parser, MATCH-ONLY variant (Snocone).
// Replicates the LOGIC of benchmarks/snobol4/demo/treebank-match.sno statement for statement:
// the TREEBANK_MATCH(N) kernel, the *BENCH marker and the OUTPUT = TREEBANK_MATCH(1) driver.
// Equivalent of treebank-match.sno; same output, same oracle ref (treebank-match.ref).
// Run: scrip treebank-match.sc < treebank.input
//------------------------------------------------------------------------------
&TRIM       =   0;
delim       =   SPAN(' ' CHAR(10));
word        =   NOTANY('( )' CHAR(10))
                BREAK('( )' CHAR(10));
group       =   '('
                word
                ARBNO(delim (*group | word))
                ')';
treebank    =   POS(0) ARBNO(ARBNO(*group) delim) RPOS(0);
//------------------------------------------------------------------------------
// TREEBANK_MATCH(N) -- run the recognizer N times over the slurped source and report the
// number of bytes it matched.  N=1 is what the standalone driver below asks for;
// the timed twin built by scripts/bench_wrap.sh asks for many.
//------------------------------------------------------------------------------
function TREEBANK_MATCH(N) {
    ZI      =   1;
ZBL:
    if (~(src ? treebank)) goto ZBAD;
    if (ZI = LT(ZI, N) ZI + 1) goto ZBL;
    TREEBANK_MATCH = 'matched bytes=' SIZE(src);
    return;
ZBAD:
    TREEBANK_MATCH = 'Pattern match failed';
    return;
}
//------------------------------------------------------------------------------
INPUT(.INPUT, 9, '[-f0 -r4194304]');
src         =   INPUT;
// *BENCH kernel=TREEBANK_MATCH check=1 bud=1000 flr=20
OUTPUT      =   TREEBANK_MATCH(1);
