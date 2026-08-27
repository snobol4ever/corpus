// B10_num_gt: GT() succeeds when left > right
// (was ">" sugar; removed 2026-08-24 pending Lon's ruling, see snocone-relop-parse-regression)
a = 10;
b = 3;
if (GT(a, b)) {
    OUTPUT = "greater";
} else {
    OUTPUT = "not greater";
}
a = 1;
if (GT(a, b)) {
    OUTPUT = "greater";
} else {
    OUTPUT = "not greater";
}
