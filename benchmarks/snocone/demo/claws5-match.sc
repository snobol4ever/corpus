// claws5-match.sc (Snocone BENCHMARK) -- CLAWS5 POS-tagged corpus tokenizer, MATCH-ONLY variant (Snocone).
// Replicates the LOGIC of benchmarks/snobol4/demo/claws5-match.sno statement for statement:
// the CLAWS5_MATCH(N) kernel, the *BENCH marker and the OUTPUT = CLAWS5_MATCH(1) driver.
// Equivalent of claws5-match.sno; same output, same oracle ref (claws5-match.ref).
// Run: scrip claws5-match.sc < claws5.input
//------------------------------------------------------------------------------
&TRIM   =   0;
claws   =   POS(0)
                ARBNO(
                  ( (SPAN('0123456789')) '_CRD :_PUN'
                  | (NOTANY('_') BREAK('_'))
                    '_'
                    (ANY(&UCASE) SPAN('0123456789' &UCASE))
                  )
                  SPAN(' ' CHAR(10))
                )
                RPOS(0);
//------------------------------------------------------------------------------
// CLAWS5_MATCH(N) -- run the recognizer N times over the slurped source and report the
// number of bytes it matched.  N=1 is what the standalone driver below asks for;
// the timed twin built by scripts/bench_wrap.sh asks for many.
//------------------------------------------------------------------------------
function CLAWS5_MATCH(N) {
    ZI      =   1;
ZBL:
    if (~(src ? claws)) goto ZBAD;
    if (ZI = LT(ZI, N) ZI + 1) goto ZBL;
    CLAWS5_MATCH = 'matched bytes=' SIZE(src);
    return;
ZBAD:
    CLAWS5_MATCH = 'Pattern match failed';
    return;
}
//------------------------------------------------------------------------------
INPUT(.INPUT, 9, '[-f0 -r4194304]');
src         =   INPUT;
// *BENCH kernel=CLAWS5_MATCH check=1 bud=1000 flr=20
OUTPUT      =   CLAWS5_MATCH(1);
