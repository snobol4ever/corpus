// A14_arith_loop_triplet.sc — center input lines, blank line every third
// Snocone translation of crosscheck/arith/triplet.sno
// Tests: while (INPUT), DUPL(), REMDR(), SIZE(), &TRIM, arithmetic
&TRIM = 1;
n = 0;
while (s = INPUT) {
    OUTPUT = DUPL(' ', (80 - SIZE(s)) / 2) && s;
    n = REMDR(n + 1, 3);
    OUTPUT = EQ(n, 0);
}
