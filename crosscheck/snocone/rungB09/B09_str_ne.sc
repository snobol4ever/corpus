// B09_str_ne: :!=: succeeds when strings are not equal
a = "apple";
b = "banana";
if (a :!=: b) {
    OUTPUT = "different";
} else {
    OUTPUT = "same";
}
a = "same";
b = "same";
if (a :!=: b) {
    OUTPUT = "different";
} else {
    OUTPUT = "same";
}
