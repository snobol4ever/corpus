// B03_for_step_expr.sc — step expression contains nested parens: ADD(i,1)
for (i = 1; LE(i, 3); i = ADD(i, 1)) {
    OUTPUT = i;
}
OUTPUT = 'end';
