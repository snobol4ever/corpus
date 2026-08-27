// B09_str_ge: LGE() succeeds when left >= right lexicographically
// (was ":>=:" sugar; removed 2026-08-24 pending Lon's ruling, see snocone-relop-parse-regression)
a = "zebra";
b = "apple";
if (LGE(a, b)) {
    OUTPUT = "ge";
} else {
    OUTPUT = "not ge";
}
a = "dog";
b = "dog";
if (LGE(a, b)) {
    OUTPUT = "ge";
} else {
    OUTPUT = "not ge";
}
a = "apple";
b = "zebra";
if (LGE(a, b)) {
    OUTPUT = "ge";
} else {
    OUTPUT = "not ge";
}
