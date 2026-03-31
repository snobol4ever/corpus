// B02_while_continue.sc — continue skips rest of body; loop continues
i = 1;
while (LE(i, 5)) {
    if (EQ(i, 3)) {
        i = ADD(i, 1);
        continue;
    }
    OUTPUT = i;
    i = ADD(i, 1);
}
