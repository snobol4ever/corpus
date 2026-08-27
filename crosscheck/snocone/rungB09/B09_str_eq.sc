// B09_str_eq: LEQ() succeeds when strings are lexicographically equal
// (was ":==:" sugar; removed 2026-08-24 pending Lon's ruling, see snocone-relop-parse-regression)
a = "apple";
b = "apple";
if (LEQ(a, b)) {
    OUTPUT = "equal";
} else {
    OUTPUT = "not equal";
}
a = "apple";
b = "banana";
if (LEQ(a, b)) {
    OUTPUT = "equal";
} else {
    OUTPUT = "not equal";
}
