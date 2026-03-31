// B03_for_break.sc — break exits for loop early
for (i = 1; LE(i, 10); i = ADD(i, 1)) {
    if (EQ(i, 4)) {
        break;
    }
    OUTPUT = i;
}
OUTPUT = 'done';
