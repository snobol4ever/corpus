// B09_str_gt: :>: succeeds when left > right lexicographically
a = "zebra";
b = "apple";
if (a :>: b) {
    OUTPUT = "greater";
} else {
    OUTPUT = "not greater";
}
a = "apple";
b = "zebra";
if (a :>: b) {
    OUTPUT = "greater";
} else {
    OUTPUT = "not greater";
}
