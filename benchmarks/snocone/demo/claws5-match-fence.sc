// claws5-match-fence.sc (Snocone BENCHMARK) -- CLAWS5 tokenizer, MATCH-ONLY with FENCE (Snocone).
// Replicates the LOGIC of benchmarks/snobol4/demo/claws5-match-fence.sno statement for statement:
// the CLAWS5_MATCH_FENCE(N) kernel, the *BENCH marker and the OUTPUT = CLAWS5_MATCH_FENCE(1) driver.
// Equivalent of claws5-match-fence.sno; same output, same oracle ref.
// Run: scrip claws5-match-fence.sc < claws5.input
//------------------------------------------------------------------------------
&TRIM   =   0;
claws   =   POS(0)
                ARBNO(
                  FENCE(
                    (SPAN('0123456789')) '_CRD :_PUN'
                  | (NOTANY('_') BREAK('_'))
                    '_'
                    (ANY(&UCASE) SPAN('0123456789' &UCASE))
                  )
                  SPAN(' ' CHAR(10))
                )
                RPOS(0);
//------------------------------------------------------------------------------
// CLAWS5_MATCH_FENCE(N) -- run the recognizer N times over the slurped source and report the
// number of bytes it matched.  N=1 is what the standalone driver below asks for;
// the timed twin built by scripts/bench_wrap.sh asks for many.
//------------------------------------------------------------------------------
function CLAWS5_MATCH_FENCE(N) {
    ZI      =   1;
ZBL:
    if (~(src ? claws)) goto ZBAD;
    if (ZI = LT(ZI, N) ZI + 1) goto ZBL;
    CLAWS5_MATCH_FENCE = 'matched bytes=' SIZE(src);
    return;
ZBAD:
    CLAWS5_MATCH_FENCE = 'Pattern match failed';
    return;
}
//------------------------------------------------------------------------------
INPUT(.INPUT, 9, '[-f0 -r4194304]');
src         =   INPUT;
// *BENCH kernel=CLAWS5_MATCH_FENCE check=1 bud=1000 flr=20
OUTPUT      =   CLAWS5_MATCH_FENCE(1);
