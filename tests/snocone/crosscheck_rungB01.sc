/*------------------------------------------------------- 1 B01_if_else_false */
// B01_if_else_false.sc — if/else: false branch taken
x = 'world';
if (IDENT(x, 'hello')) {
    OUTPUT = 'matched';
} else {
    OUTPUT = 'no match';
}
/*-------------------------------------------------------- 2 B01_if_else_true */
// B01_if_else_true.sc — if/else: true branch taken
x = 'hello';
if (IDENT(x, 'hello')) {
    OUTPUT = 'matched';
} else {
    OUTPUT = 'no match';
}
/*------------------------------------------------------------ 3 B01_if_false */
// B01_if_false.sc — if condition false: body skipped
x = 2;
if (EQ(x, 1)) {
    OUTPUT = 'yes';
}
OUTPUT = 'done';
/*------------------------------------------------------------- 4 B01_if_true */
// B01_if_true.sc — if condition true: body executes
x = 1;
if (EQ(x, 1)) {
    OUTPUT = 'yes';
}
/*----------------------------------------------------------- 5 B01_nested_if */
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
