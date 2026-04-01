// B09_str_lt: :<: succeeds when left < right lexicographically
a = "apple";
b = "banana";
if (a :<: b) {
    OUTPUT = "less";
} else {
    OUTPUT = "not less";
}
a = "banana";
b = "apple";
if (a :<: b) {
    OUTPUT = "less";
} else {
    OUTPUT = "not less";
}
