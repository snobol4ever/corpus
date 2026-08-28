/*---------------------------------------------------------- 1 sc10_wordcount */
function count_down(n) {
    total = 0;
    i = n;
    while (GT(i, 0)) {
        total = total + i;
        i = i - 1;
    }
    return total;
}
OUTPUT = count_down(10);
OUTPUT = count_down(5);
/*------------------------------------------------------------ 2 sc1_literals */
OUTPUT = 'hello';
OUTPUT = 'world';
OUTPUT = 42;
/*-------------------------------------------------------------- 3 sc2_assign */
x = 'hello';
y = 42;
OUTPUT = x;
OUTPUT = y;
z = x;
OUTPUT = z;
/*--------------------------------------------------------------- 4 sc3_arith */
OUTPUT = 3 + 4;
OUTPUT = 10 - 3;
OUTPUT = 6 * 7;
OUTPUT = 20 / 4;
OUTPUT = 2 ^ 8;
x = 5;
OUTPUT = x + x;
OUTPUT = x * 3;
/*------------------------------------------------------------- 5 sc4_control */
x = 10;
if (GT(x, 5)) OUTPUT = 'big'; else OUTPUT = 'small';
if (LT(x, 5)) OUTPUT = 'small'; else OUTPUT = 'big';
y = 3;
if (EQ(y, 3)) OUTPUT = 'three';
if (EQ(y, 4)) OUTPUT = 'four'; else OUTPUT = 'not four';
/*--------------------------------------------------------------- 6 sc5_while */
i = 1;
while (LE(i, 5)) {
    OUTPUT = i;
    i = i + 1;
}
/*----------------------------------------------------------------- 7 sc6_for */
sum = 0;
i = 1;
while (LE(i, 10)) {
    sum = sum + i;
    i = i + 1;
}
OUTPUT = sum;
/*----------------------------------------------------------- 8 sc7_procedure */
function square(n) {
    return n * n;
}
function cube(n) {
    return n * square(n);
}
OUTPUT = square(7);
OUTPUT = cube(3);
/*------------------------------------------------------------- 9 sc8_strings */
a = 'hello';
b = ' world';
c = a b;
OUTPUT = c;
OUTPUT = SIZE(c);
/*---------------------------------------------------------- 10 sc9_multiproc */
function max(a, b) {
    if (GE(a, b)) return a;
    return b;
}
function min(a, b) {
    if (LE(a, b)) return a;
    return b;
}
function abs_val(n) {
    if (GE(n, 0)) return n;
    return 0 - n;
}
OUTPUT = max(3, 7);
OUTPUT = min(3, 7);
OUTPUT = abs_val(0 - 5);
OUTPUT = max(abs_val(0 - 3), abs_val(0 - 8));
