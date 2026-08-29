/*-------------------------------------------------------------- 1 B09_str_eq */
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
/*-------------------------------------------------------------- 2 B09_str_ge */
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
/*-------------------------------------------------------------- 3 B09_str_gt */
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
/*-------------------------------------------------------------- 4 B09_str_le */
// B09_str_le: LLE() succeeds when left <= right lexicographically
// (was ":<=:" sugar; removed 2026-08-24 pending Lon's ruling, see snocone-relop-parse-regression)
a = "apple";
b = "banana";
if (LLE(a, b)) {
    OUTPUT = "le";
} else {
    OUTPUT = "not le";
}
a = "cat";
b = "cat";
if (LLE(a, b)) {
    OUTPUT = "le";
} else {
    OUTPUT = "not le";
}
a = "zebra";
b = "apple";
if (LLE(a, b)) {
    OUTPUT = "le";
} else {
    OUTPUT = "not le";
}
/*-------------------------------------------------------------- 5 B09_str_lt */
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
/*-------------------------------------------------------------- 6 B09_str_ne */
// B09_str_ne: LNE() succeeds when strings are not equal
// (was ":!=:" sugar; removed 2026-08-24 pending Lon's ruling, see snocone-relop-parse-regression)
a = "apple";
b = "banana";
if (LNE(a, b)) {
    OUTPUT = "different";
} else {
    OUTPUT = "same";
}
a = "same";
b = "same";
if (LNE(a, b)) {
    OUTPUT = "different";
} else {
    OUTPUT = "same";
}
