/*------------------------------------------------- 1 A14_arith_loop_fileinfo */
// A14_arith_loop_fileinfo.sc — count chars and lines from stdin
// Snocone translation of crosscheck/arith/fileinfo.sno
// Tests: while (INPUT), SIZE(), integer accumulation, EOF termination
&TRIM = 1;
chars = 0;
lines = 0;
while (line = INPUT) {
    chars = chars + SIZE(line);
    lines = lines + 1;
}
OUTPUT = chars   ' characters, '   lines   ' lines read';
/*-------------------------------------------------- 2 A14_arith_loop_triplet */
// A14_arith_loop_triplet.sc — center input lines, blank line every third
// Snocone translation of crosscheck/arith/triplet.sno
// Tests: while (INPUT), DUPL(), REMDR(), SIZE(), &TRIM, arithmetic
&TRIM = 1;
n = 0;
while (s = INPUT) {
    OUTPUT = DUPL(' ', (80 - SIZE(s)) / 2)   s;
    n = REMDR(n + 1, 3);
    OUTPUT = EQ(n, 0);
}
