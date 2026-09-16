// calculator-2-match.sc -- arithmetic-expression pattern match ONLY, Variant 2 (Snocone).
// ARBNO iteration: the grammar of calculator-2 with every semantic action stripped.
// Whole file in memory, ONE BIG MATCH, zero side effects. Atoms A (lowercase letters,
// unsigned ints, parens), signed factors F (unary sign chains via *F), terms T ('*' '/'),
// expressions X ('+' '-'). Where -1 uses right recursion in T/X, this variant folds the
// operator chains with ARBNO -- the fullscan-safe iterative shape. Language recognized is
// identical to calculator-1-match.
// Equivalent of calculator-2-match.sno; same output, same oracle ref.
// Run: scrip calculator-2-match.sc < calculator.input
//------------------------------------------------------------------------------
V              =  ANY('abcdefghijklmnopqrstuvwxyz');
I              =  SPAN('0123456789');
A              =  V | I | '(' *X ')';
F              =  A | ANY('+-') *F;
T              =  F ARBNO(ANY('*/') F);
X              =  T ARBNO(ANY('+-') T);
eol            =  CHAR(10);
C              =  POS(0) ARBNO(X eol) RPOS(0);
//------------------------------------------------------------------------------
&TRIM          =  0;
//  ONE READ -- SPITBOL raw mode: -f0 attaches stdin, -r sets raw record length;
//  newlines come back in-string, short read at EOF.
INPUT(.INPUT, 9, '[-f0 -r4194304]');
if (src = INPUT) {
    if (src ? C) OUTPUT = 'matched bytes=' SIZE(src);
    else         OUTPUT = 'Pattern match failed';
} else           OUTPUT = 'Pattern match failed';
