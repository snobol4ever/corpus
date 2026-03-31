// B02_nested_break.sc — break exits only innermost loop; outer continues
i = 1;
while (LE(i, 3)) {
    j = 1;
    while (LE(j, 3)) {
        if (EQ(j, 2)) {
            break;
        }
        OUTPUT = i && '-' && j;
        j = ADD(j, 1);
    }
    i = ADD(i, 1);
}
