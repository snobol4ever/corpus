// B01_nested_if.sc — nested if/else
x = 2;
if (EQ(x, 1)) {
    OUTPUT = 'one';
} else {
    if (EQ(x, 2)) {
        OUTPUT = 'two';
    } else {
        OUTPUT = 'other';
    }
}
