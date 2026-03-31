// B03_for_continue.sc — continue skips rest of body; step still runs
for (i = 1; LE(i, 5); i = ADD(i, 1)) {
    if (EQ(i, 3)) {
        continue;
    }
    OUTPUT = i;
}
