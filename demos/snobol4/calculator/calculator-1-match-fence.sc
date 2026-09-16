// calculator-1-match-fence.sc -- recursive-descent expression grammar, MATCH-ONLY with FENCE (Snocone).
// Equivalent of calculator-1-match-fence.sno; same output, same oracle ref.
// Run: scrip calculator-1-match-fence.sc < calculator.input
//------------------------------------------------------------------------------
&TRIM   =  0;
I       =  SPAN('0123456789');
V       =  ANY(&LCASE);
A       =  FENCE(I | V | '(' *X ')');
F       =  FENCE('+' *F | '-' *F | A);
T       =  FENCE(F '*' *T | F '/' *T | F);
X       =  FENCE(T '+' *X | T '-' *X | T);
C       =  POS(0) ARBNO(X CHAR(10)) RPOS(0);
INPUT(.INPUT, 9, '[-f0 -r4194304]');
if (src = INPUT) {
    if (src ? C) OUTPUT = 'matched bytes=' SIZE(src);
    else         OUTPUT = 'Pattern match failed';
} else           OUTPUT = 'Pattern match failed';
