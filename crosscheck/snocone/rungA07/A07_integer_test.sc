// A07_integer_test.sc — INTEGER succeeds on numeric string, fails on alpha
if (INTEGER('42')) {
    OUTPUT = 'numeric';
} else {
    OUTPUT = 'not numeric';
}
if (INTEGER('abc')) {
    OUTPUT = 'numeric';
} else {
    OUTPUT = 'not numeric';
}
