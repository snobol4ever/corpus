// claws5-match-fence.sc -- CLAWS5 tokenizer, MATCH-ONLY with FENCE (Snocone).
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
INPUT(.INPUT, 9, '[-f0 -r4194304]');
if (src = INPUT) {
    if (src ? claws) OUTPUT = 'matched bytes=' SIZE(src);
    else             OUTPUT = 'Pattern match failed';
} else               OUTPUT = 'Pattern match failed';
