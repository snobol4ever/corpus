/*------------------------------------------------- 1 A13_define_entry_label */
// A13_define_entry_label.sc — procedure with explicit name (bumpit)
function bumpit(v) {
    return v + 1;
}
OUTPUT = bumpit(41);
/*----------------------------------------------------- 2 A13_define_freturn */
// A13_define_freturn.sc — function fails via freturn, caller handles :F
function ispos(x) {
    if (GT(x, 0)) { return; } else { freturn; }
}
if (ispos(5)) {
    OUTPUT = 'positive';
} else {
    OUTPUT = 'wrong';
}
if (ispos(-3)) {
    OUTPUT = 'wrong';
} else {
    OUTPUT = 'not positive';
}
/*-------------------------------------------------- 3 A13_define_in_pattern */
// A13_define_in_pattern.sc — function call used as value
function upcase(s) {
    return REPLACE(s, &LCASE, &UCASE);
}
OUTPUT = upcase('hello');
OUTPUT = upcase('world');
/*--------------------------------------------------- 4 A13_define_loop_call */
// A13_define_loop_call.sc — function called in loop, concat results
function bump(v) {
    return v + 1;
}
s = '';
j = 0;
while (LT(j, 5)) {
    s = s   bump(2 * j);
    j = j + 1;
}
OUTPUT = s;
/*----------------------------------------------- 5 A13_define_recursive_fib */
// A13_define_recursive_fib.sc — recursive Fibonacci
function fib(n) {
    if (LE(n, 1)) { return n; }
    return fib(n - 1) + fib(n - 2);
}
OUTPUT = fib(0);
OUTPUT = fib(1);
OUTPUT = fib(6);
OUTPUT = fib(10);
/*----------------------------------------------- 6 A13_define_simple_return */
// A13_define_simple_return.sc — simple function: double a number
function double(s) {
    return 2 * s;
}
OUTPUT = double(5);
OUTPUT = double(21);
/*---------------------------------------------------- 7 A13_define_two_args */
// A13_define_two_args.sc — function with two arguments
function add(a, b) {
    return a + b;
}
OUTPUT = add(3, 4);
OUTPUT = add(10, 32);
/*------------------------------------------------ 8 A13_define_locals XFAIL */
// A13_define_locals.sc — function with local variable
function swap(a, b)(tmp) {
    tmp = a;
    a = b;
    b = tmp;
    OUTPUT = a   ' '   b;
    return;
}
swap('hello', 'world');
