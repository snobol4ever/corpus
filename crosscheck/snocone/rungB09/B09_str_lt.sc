// B09_str_lt: LLT() succeeds when left < right lexicographically
// (was ":<:" sugar; removed 2026-08-24 pending Lon's ruling, see snocone-relop-parse-regression)
a = "apple";
b = "banana";
if (LLT(a, b)) {
    OUTPUT = "less";
} else {
    OUTPUT = "not less";
}
a = "banana";
b = "apple";
if (LLT(a, b)) {
    OUTPUT = "less";
} else {
    OUTPUT = "not less";
}
