// B10_num_ne: != succeeds when values differ
a = 4;
b = 9;
if (a != b) {
    OUTPUT = "not equal";
} else {
    OUTPUT = "equal";
}
a = 9;
if (a != b) {
    OUTPUT = "not equal";
} else {
    OUTPUT = "equal";
}
