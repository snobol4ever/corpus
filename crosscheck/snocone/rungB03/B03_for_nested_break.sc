// B03_for_nested_break.sc — break exits only innermost for loop
for (i = 1; LE(i, 3); i = ADD(i, 1)) {
    for (j = 1; LE(j, 3); j = ADD(j, 1)) {
        if (EQ(j, 2)) {
            break;
        }
        OUTPUT = i && '-' && j;
    }
}
