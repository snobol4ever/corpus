// B10_num_ge: GE() succeeds when left >= right
// (was ">=" sugar; removed 2026-08-24 pending Lon's ruling, see snocone-relop-parse-regression)
a = 5;
b = 5;
if (GE(a, b)) {
    OUTPUT = "ge";
} else {
    OUTPUT = "not ge";
}
a = 8;
if (GE(a, b)) {
    OUTPUT = "ge";
} else {
    OUTPUT = "not ge";
}
a = 2;
if (GE(a, b)) {
    OUTPUT = "ge";
} else {
    OUTPUT = "not ge";
}
