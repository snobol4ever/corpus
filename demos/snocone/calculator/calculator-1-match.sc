// calculator-1-match.sc -- recursive-descent expression grammar, MATCH-ONLY (Snocone).
// Equivalent of calculator-1-match.sno; same output, same oracle ref.
// Run: scrip calculator-1-match.sc < calculator.input
//------------------------------------------------------------------------------
&TRIM   =  0;
I       =  SPAN('0123456789');
V       =  ANY(&LCASE);
A       =  I | V | '(' *X ')';
F       =  '+' *F | '-' *F | A;
T       =  F '*' *T | F '/' *T | F;
X       =  T '+' *X | T '-' *X | T;
C       =  POS(0) ARBNO(X CHAR(10)) RPOS(0);
INPUT(.INPUT, 9, '[-f0 -r4194304]');
if (src = INPUT) {
    if (src ? C) OUTPUT = 'matched bytes=' SIZE(src);
    else         OUTPUT = 'Pattern match failed';
} else           OUTPUT = 'Pattern match failed';
