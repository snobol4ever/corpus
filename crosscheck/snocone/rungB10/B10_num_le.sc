// B10_num_le: LE() succeeds when left <= right
// (was "<=" sugar; removed 2026-08-24 pending Lon's ruling, see snocone-relop-parse-regression)
a = 5;
b = 5;
if (LE(a, b)) {
    OUTPUT = "le";
} else {
    OUTPUT = "not le";
}
a = 3;
if (LE(a, b)) {
    OUTPUT = "le";
} else {
    OUTPUT = "not le";
}
a = 7;
if (LE(a, b)) {
    OUTPUT = "le";
} else {
    OUTPUT = "not le";
}
