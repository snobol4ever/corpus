// claws5-match.sc -- CLAWS5 POS-tagged corpus tokenizer, MATCH-ONLY variant (Snocone).
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
INPUT(.INPUT, 9, '[-f0 -r4194304]');
if (src = INPUT) {
    if (src ? claws) OUTPUT = 'matched bytes=' SIZE(src);
    else             OUTPUT = 'Pattern match failed';
} else               OUTPUT = 'Pattern match failed';
