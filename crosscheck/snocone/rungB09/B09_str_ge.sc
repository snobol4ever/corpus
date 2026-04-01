// B09_str_ge: :>=: succeeds when left >= right lexicographically
a = "zebra";
b = "apple";
if (a :>=: b) {
    OUTPUT = "ge";
} else {
    OUTPUT = "not ge";
}
a = "dog";
b = "dog";
if (a :>=: b) {
    OUTPUT = "ge";
} else {
    OUTPUT = "not ge";
}
a = "apple";
b = "zebra";
if (a :>=: b) {
    OUTPUT = "ge";
} else {
    OUTPUT = "not ge";
}
