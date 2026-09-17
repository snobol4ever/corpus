// treebank-match-fence.sc -- Penn-treebank bracket parser, MATCH-ONLY with FENCE (Snocone).
// Equivalent of treebank-match-fence.sno; same output, same oracle ref.
// Run: scrip treebank-match-fence.sc < treebank.input
//------------------------------------------------------------------------------
&TRIM       =   0;
delim       =   SPAN(' ' CHAR(10));
word        =   NOTANY('( )' CHAR(10))
                BREAK('( )' CHAR(10));
group       =   '('
                word
                ARBNO(delim FENCE(*group | word))
                ')';
treebank    =   POS(0) ARBNO(ARBNO(*group FENCE) delim FENCE) RPOS(0);
INPUT(.INPUT, 9, '[-f0 -r4194304]');
if (src = INPUT) {
    if (src ? treebank) OUTPUT = 'matched bytes=' SIZE(src);
    else                OUTPUT = 'Pattern match failed';
} else                  OUTPUT = 'Pattern match failed';
