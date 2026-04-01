// B09_str_le: :<=: succeeds when left <= right lexicographically
a = "apple";
b = "banana";
if (a :<=: b) {
    OUTPUT = "le";
} else {
    OUTPUT = "not le";
}
a = "cat";
b = "cat";
if (a :<=: b) {
    OUTPUT = "le";
} else {
    OUTPUT = "not le";
}
a = "zebra";
b = "apple";
if (a :<=: b) {
    OUTPUT = "le";
} else {
    OUTPUT = "not le";
}
