// Replicates the LOGIC of benchmarks/snobol4/demo/claws5.sno statement for statement:
// the CLAWS5(N) kernel with its per-iteration `mem` reset, the *BENCH marker and the
// OUTPUT = CLAWS5(1) driver.  Same oracle ref (claws5.ref).
// claws5.sc (Snocone BENCHMARK) -- CLAWS5 POS-tagged corpus tokenizer (Snocone).
// ENG 685, Lon Cherryholmes Sr.
// Equivalent of claws5.sno; same output, same oracle ref (claws5.ref).
// Run: scrip claws5.sc < claws5.input
//------------------------------------------------------------------------------
function token() {
    num                 = +num;
    if (IDENT(mem))                  mem                 = TABLE();
    if (IDENT(mem[num]))             mem[num]            = TABLE();
    if (IDENT(mem[num][wrd]))        mem[num][wrd]       = TABLE();
    if (IDENT(mem[num][wrd][tag]))   mem[num][wrd][tag]  = 0;
    mem[num][wrd][tag]  = mem[num][wrd][tag] + 1;
    token               = .dummy;
    nreturn;
}
//------------------------------------------------------------------------------
&TRIM   =   0;
claws   =   POS(0)
                ARBNO(
                  FENCE(
                    (SPAN('0123456789') . num) '_CRD :_PUN'
                  | (NOTANY('_') BREAK('_')) . wrd
                    '_'
                    (ANY(&UCASE) SPAN('0123456789' &UCASE)) . tag . *token()
                  )
                  SPAN(' ' CHAR(10))
                )
                RPOS(0);
//------------------------------------------------------------------------------
// CLAWS5(N) -- run the tokenizer N times over the slurped source and report the
// number of bytes it matched.  `mem` is cleared each iteration so every pass
// starts from the same state, exactly as the SNOBOL4 kernel's bare `mem =` does.
//------------------------------------------------------------------------------
function CLAWS5(N) {
    ZI      =   1;
ZBL:
    mem     =   ;
    if (~(src ? claws)) goto ZBAD;
    if (ZI = LT(ZI, N) ZI + 1) goto ZBL;
    CLAWS5  =   'matched bytes=' SIZE(src);
    return;
ZBAD:
    CLAWS5  =   'Pattern match failed';
    return;
}
//------------------------------------------------------------------------------
INPUT(.INPUT, 9, '[-f0 -r4194304]');
src         =   INPUT;
// *BENCH kernel=CLAWS5 check=1 bud=1000 flr=20
OUTPUT      =   CLAWS5(1);
