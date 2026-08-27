// B10_num_lt: LT() succeeds when left < right
// (was "<" sugar; removed 2026-08-24 pending Lon's ruling, see snocone-relop-parse-regression)
a = 2;
b = 8;
if (LT(a, b)) {
    OUTPUT = "less";
} else {
    OUTPUT = "not less";
}
a = 10;
if (LT(a, b)) {
    OUTPUT = "less";
} else {
    OUTPUT = "not less";
}
