/*-------------------------------------------------------------- 1 A07_differ */
// A07_differ.sc — DIFFER succeeds when strings differ
if (DIFFER('abc', 'xyz')) {
    OUTPUT = 'different';
} else {
    OUTPUT = 'same';
}
/*------------------------------------------------------------------ 2 A07_gt */
// A07_gt.sc — GT numeric comparison
if (GT(5, 3)) {
    OUTPUT = '5 > 3';
} else {
    OUTPUT = 'wrong';
}
if (GT(3, 5)) {
    OUTPUT = 'wrong';
} else {
    OUTPUT = '3 not > 5';
}
/*--------------------------------------------------------------- 3 A07_ident */
// A07_ident.sc — IDENT succeeds when strings are equal
if (IDENT('abc', 'abc')) {
    OUTPUT = 'equal';
} else {
    OUTPUT = 'not equal';
}
if (IDENT('abc', 'xyz')) {
    OUTPUT = 'equal';
} else {
    OUTPUT = 'not equal';
}
/*-------------------------------------------------------- 4 A07_integer_test */
// A07_integer_test.sc — INTEGER succeeds on numeric string, fails on alpha
if (INTEGER('42')) {
    OUTPUT = 'numeric';
} else {
    OUTPUT = 'not numeric';
}
if (INTEGER('abc')) {
    OUTPUT = 'numeric';
} else {
    OUTPUT = 'not numeric';
}
/*------------------------------------------------------------ 5 A07_lt_le_ge */
// A07_lt_le_ge.sc — LT, LE, GE comparisons
if (LT(3, 5)) {
    OUTPUT = '3 < 5';
}
if (LE(5, 5)) {
    OUTPUT = '5 <= 5';
}
if (GE(7, 5)) {
    OUTPUT = '7 >= 5';
}
