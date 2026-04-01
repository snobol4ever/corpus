// B09_str_eq: :==: succeeds when strings are lexicographically equal
a = "apple";
b = "apple";
if (a :==: b) {
    OUTPUT = "equal";
} else {
    OUTPUT = "not equal";
}
a = "apple";
b = "banana";
if (a :==: b) {
    OUTPUT = "equal";
} else {
    OUTPUT = "not equal";
}
