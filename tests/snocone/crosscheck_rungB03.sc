/*----------------------------------------------------------- 1 B03_for_basic */
// B03_for_basic.sc — basic for loop counts 1 to 3
for (i = 1; LE(i, 3); i = i + 1) {
    OUTPUT = i;
}
/*----------------------------------------------------------- 2 B03_for_break */
// B03_for_break.sc — break exits for loop early
for (i = 1; LE(i, 10); i = i + 1) {
    if (EQ(i, 4)) {
        break;
    }
    OUTPUT = i;
}
OUTPUT = 'done';
/*-------------------------------------------------------- 3 B03_for_continue */
// B03_for_continue.sc — continue skips rest of body; step still runs
for (i = 1; LE(i, 5); i = i + 1) {
    if (EQ(i, 3)) {
        continue;
    }
    OUTPUT = i;
}
/*----------------------------------------------------------- 4 B03_for_false */
// B03_for_false.sc — for condition false on entry: body skipped
for (i = 5; LE(i, 3); i = ADD(i, 1)) {
    OUTPUT = 'should not print';
}
OUTPUT = 'done';
/*---------------------------------------------------- 5 B03_for_nested_break */
// B03_for_nested_break.sc — break exits only innermost for loop
for (i = 1; LE(i, 3); i = i + 1) {
    for (j = 1; LE(j, 3); j = j + 1) {
        if (EQ(j, 2)) {
            break;
        }
        OUTPUT = i   '-'   j;
    }
}
/*------------------------------------------------------- 6 B03_for_step_expr */
// B03_for_step_expr.sc — step expression contains a parenthesized sub-expression
for (i = 1; LE(i, 3); i = (i + 1)) {
    OUTPUT = i;
}
OUTPUT = 'end';
