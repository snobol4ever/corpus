// B10_num_eq: EQ() succeeds when values are numerically equal
// (was "==" sugar; removed 2026-08-24 pending Lon's ruling, see snocone-relop-parse-regression)
a = 7;
b = 7;
if (EQ(a, b)) {
    OUTPUT = "equal";
} else {
    OUTPUT = "not equal";
}
a = 3;
if (EQ(a, b)) {
    OUTPUT = "equal";
} else {
    OUTPUT = "not equal";
}
