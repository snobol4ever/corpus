// B10_num_ne: NE() succeeds when values differ
// (was "!=" sugar; removed 2026-08-24 pending Lon's ruling, see snocone-relop-parse-regression)
a = 4;
b = 9;
if (NE(a, b)) {
    OUTPUT = "not equal";
} else {
    OUTPUT = "equal";
}
a = 9;
if (NE(a, b)) {
    OUTPUT = "not equal";
} else {
    OUTPUT = "equal";
}
