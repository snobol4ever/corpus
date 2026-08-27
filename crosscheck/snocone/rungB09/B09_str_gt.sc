// B09_str_gt: LGT() succeeds when left > right lexicographically
// (was ":>:" sugar; removed 2026-08-24 pending Lon's ruling, see snocone-relop-parse-regression)
a = "zebra";
b = "apple";
if (LGT(a, b)) {
    OUTPUT = "greater";
} else {
    OUTPUT = "not greater";
}
a = "apple";
b = "zebra";
if (LGT(a, b)) {
    OUTPUT = "greater";
} else {
    OUTPUT = "not greater";
}
