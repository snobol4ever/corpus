// treebank-match.sc -- Penn-treebank bracket parser, MATCH-ONLY variant (Snocone).
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
INPUT(.INPUT, 9, '[-f0 -r4194304]');
if (src = INPUT) {
    if (src ? treebank) OUTPUT = 'matched bytes=' SIZE(src);
    else                OUTPUT = 'Pattern match failed';
} else                  OUTPUT = 'Pattern match failed';
