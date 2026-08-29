/*------------------------------------------------------------ 1 B02_do_while */
// B02_do_while.sc — do-while body executes at least once even if condition false
i = 5;
do {
    OUTPUT = 'ran';
    i = i + 1;
} while (LE(i, 3));
/*-------------------------------------------------------- 2 B02_nested_break */
// B02_nested_break.sc — break exits only innermost loop; outer continues
i = 1;
while (LE(i, 3)) {
    j = 1;
    while (LE(j, 3)) {
        if (EQ(j, 2)) {
            break;
        }
        OUTPUT = i   '-'   j;
        j = j + 1;
    }
    i = i + 1;
}
/*--------------------------------------------------------- 3 B02_while_basic */
// B02_while_basic.sc — while loop runs expected number of times
i = 1;
while (LE(i, 3)) {
    OUTPUT = i;
    i = i + 1;
}
/*--------------------------------------------------------- 4 B02_while_break */
// B02_while_break.sc — break exits while loop early
i = 1;
while (LE(i, 10)) {
    if (EQ(i, 3)) {
        break;
    }
    OUTPUT = i;
    i = i + 1;
}
OUTPUT = 'done';
/*------------------------------------------------------ 5 B02_while_continue */
// B02_while_continue.sc — continue skips rest of body; loop continues
i = 1;
while (LE(i, 5)) {
    if (EQ(i, 3)) {
        i = i + 1;
        continue;
    }
    OUTPUT = i;
    i = i + 1;
}
/*--------------------------------------------------------- 6 B02_while_false */
// B02_while_false.sc — while condition false on entry: body skipped
i = 5;
while (LE(i, 3)) {
    OUTPUT = 'should not print';
}
OUTPUT = 'done';
