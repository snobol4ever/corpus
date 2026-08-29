/*-------------------------------------------------------------- 1 B10_num_eq */
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
/*-------------------------------------------------------------- 2 B10_num_ge */
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
/*-------------------------------------------------------------- 3 B10_num_gt */
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
/*-------------------------------------------------------------- 4 B10_num_le */
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
/*-------------------------------------------------------------- 5 B10_num_lt */
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
/*-------------------------------------------------------------- 6 B10_num_ne */
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
