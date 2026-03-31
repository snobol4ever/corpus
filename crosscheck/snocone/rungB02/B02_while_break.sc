// B02_while_break.sc — break exits while loop early
i = 1;
while (LE(i, 10)) {
    if (EQ(i, 3)) {
        break;
    }
    OUTPUT = i;
    i = ADD(i, 1);
}
OUTPUT = 'done';
