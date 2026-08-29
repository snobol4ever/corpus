/*--------------------------------------------------------- 1 simple_assign_1 */
x = 1 + 2;
/*-------------------------------------------------------- 2 simple_assign_10 */
x = y;
/*-------------------------------------------------------- 3 simple_assign_11 */
x += 1;
/*-------------------------------------------------------- 4 simple_assign_12 */
x /= 4;
/*-------------------------------------------------------- 5 simple_assign_13 */
x *= 3;
/*-------------------------------------------------------- 6 simple_assign_14 */
x ^= 2;
/*-------------------------------------------------------- 7 simple_assign_15 */
x -= 2;
/*-------------------------------------------------------- 8 simple_assign_17 */
x = f();
/*-------------------------------------------------------- 9 simple_assign_18 */
x = g(42);
/*------------------------------------------------------- 10 simple_assign_19 */
x = f(1, 2);
/*-------------------------------------------------------- 11 simple_assign_2 */
x = 10 / b;
/*------------------------------------------------------- 12 simple_assign_20 */
x = h(a, b, c);
/*------------------------------------------------------- 13 simple_assign_21 */
x = "hello" name;
/*------------------------------------------------------- 14 simple_assign_23 */
do { y = 1; } while (x);
/*------------------------------------------------------- 15 simple_assign_25 */
function f(a, b) { c = a + b; return c; }
/*------------------------------------------------------- 16 simple_assign_27 */
function f() { x = 1; }
/*------------------------------------------------------- 17 simple_assign_28 */
if (a) { x = 1; } else { x = 2; }
/*------------------------------------------------------- 18 simple_assign_29 */
if (EQ(x, 1)) { y = 2; } else if (EQ(x, 3)) { y = 4; }
/*-------------------------------------------------------- 19 simple_assign_3 */
x = a * b;
/*------------------------------------------------------- 20 simple_assign_30 */
if (EQ(x, 1)) { y = 1; } else if (EQ(x, 2)) { y = 2; } else { y = 3; }
/*------------------------------------------------------- 21 simple_assign_31 */
if (EQ(x, 1)) { y = 1; } else if (EQ(x, 2)) { y = 2; } else if (EQ(x, 3)) { y = 3; }
/*------------------------------------------------------- 22 simple_assign_32 */
if (x) { a = 1; b = 2; }
/*------------------------------------------------------- 23 simple_assign_34 */
if (x) { y = 1; }
/*------------------------------------------------------- 24 simple_assign_35 */
y = x ? 'foo';
/*------------------------------------------------------- 25 simple_assign_36 */
x  'foo' = 'bar';
/*------------------------------------------------------- 26 simple_assign_37 */
x ? 'foo' = 'bar';
/*-------------------------------------------------------- 27 simple_assign_4 */
x = a - 3;
/*------------------------------------------------------- 28 simple_assign_43 */
while (x) { y = 1; }
/*-------------------------------------------------------- 29 simple_assign_5 */
x = a - b - c;
/*-------------------------------------------------------- 30 simple_assign_6 */
x = 5;
/*-------------------------------------------------------- 31 simple_assign_9 */
x = "hi";
/*------------------------------------------------------- 32 simple_output_88 */
OUTPUT = "hello"   " "   "world";
/*------------------------------------------------------- 33 simple_program_1 */
x;
/*------------------------------------------------------ 34 simple_program_10 */
function p() { freturn; }
/*------------------------------------------------------ 35 simple_program_11 */
function q() { nreturn; }
/*------------------------------------------------------ 36 simple_program_12 */
function f() { return; }
/*------------------------------------------------------ 37 simple_program_13 */
function g(a, b, c) { return c; }
/*------------------------------------------------------ 38 simple_program_15 */
x  'foo';
/*------------------------------------------------------ 39 simple_program_16 */
x  'a'  'b';
/*------------------------------------------------------ 40 simple_program_17 */
x ? 'a' 'b' 'c';
/*------------------------------------------------------ 41 simple_program_18 */
x ? p 'foo';
/*------------------------------------------------------ 42 simple_program_19 */
x ? 'foo';
/*------------------------------------------------------- 43 simple_program_2 */
42;
/*------------------------------------------------------ 44 simple_program_20 */
struct Empty {  }
/*------------------------------------------------------ 45 simple_program_21 */
struct Person { name, age, email }
/*------------------------------------------------------ 46 simple_program_22 */
struct Point { x, y }
/*------------------------------------------------------- 47 simple_program_3 */
"hello";
/*------------------------------------------------------- 48 simple_program_6 */
print(x);
/*------------------------------------------------------- 49 simple_program_8 */
function f(a, b) { return a; }
/*------------------------------------------------------- 50 simple_program_9 */
function f() { }
/*------------------------------------------------------- 51 simple_assign_24 */
x = 0;
do { x = x + 1; } while (x);
/*------------------------------------------------------- 52 simple_assign_26 */
function f(a, b) { return a + b; }
x = f(1, 2);
/*------------------------------------------------------- 53 simple_assign_42 */
while (a) { x = 1; }
while (b) { y = 2; }
/*-------------------------------------------------------- 54 simple_assign_8 */
a = 1;
b = 2;
/*------------------------------------------------------- 55 simple_output_10 */
// A01_empty_string.sc — output of empty string produces blank line
OUTPUT = '';
/*------------------------------------------------------- 56 simple_output_11 */
// A01_hello.sc — minimal output test
OUTPUT = 'hello world';
/*------------------------------------------------------- 57 simple_output_12 */
// A01_integer.sc — output integer literal
OUTPUT = 42;
/*------------------------------------------------------ 58 simple_output_134 */
// empty_string.sc - Output of null string produces blank line.
OUTPUT = '';
/*------------------------------------------------------ 59 simple_output_135 */
// hello.sc - Minimal output test.
OUTPUT = 'hello world';
/*------------------------------------------------------ 60 simple_output_137 */
// 001 - Output a string literal
OUTPUT = 'hello world';
/*------------------------------------------------------ 61 simple_output_138 */
// 002 - Output an integer literal
OUTPUT = 42;
/*------------------------------------------------------ 62 simple_output_139 */
// 003 - Output a real literal
OUTPUT = 3.14;
/*------------------------------------------------------- 63 simple_output_14 */
// A01_real.sc — output real literal
OUTPUT = 3.14;
/*------------------------------------------------------ 64 simple_output_140 */
// 004 - Output empty string produces blank line
OUTPUT = '';
/*------------------------------------------------------ 65 simple_output_142 */
// 007 - Uninitialized variable outputs empty line
OUTPUT = x;
/*------------------------------------------------------ 66 simple_output_143 */
// 008 - Double-quoted string literal
OUTPUT = "hello world";
/*------------------------------------------------------- 67 simple_output_20 */
// A03_add.sc — integer addition
OUTPUT = 1 + 2;
/*------------------------------------------------------- 68 simple_output_21 */
// A03_divide.sc — real division
OUTPUT = 10 / 4;
/*------------------------------------------------------- 69 simple_output_22 */
// A03_exponent.sc — exponentiation (^ operator in Snocone)
OUTPUT = 2 ^ 8;
/*------------------------------------------------------- 70 simple_output_23 */
// A03_multiply.sc — integer multiplication
OUTPUT = 6 * 7;
/*------------------------------------------------------- 71 simple_output_24 */
// A03_subtract.sc — integer subtraction
OUTPUT = 10 - 3;
/*------------------------------------------------------- 72 simple_output_26 */
// A04_concat_int.sc — concatenate integer and string
OUTPUT = 42   ' items';
/*------------------------------------------------------- 73 simple_output_27 */
// A04_concat_three.sc — concatenate three string literals
OUTPUT = 'a'   'b'   'c';
/*------------------------------------------------------- 74 simple_output_28 */
// A04_concat_two.sc — concatenate two string literals
OUTPUT = 'hello'   ' world';
/*------------------------------------------------------- 75 simple_output_32 */
// A06_substr.sc — SUBSTR extracts substring
OUTPUT = SUBSTR('hello world', 7, 5);
/*------------------------------------------------------- 76 simple_output_39 */
// A08_lpad.sc — LPAD pads string on left
OUTPUT = LPAD('hi', 6);
/*------------------------------------------------------- 77 simple_output_59 */
// empty_string.sc - Output of null string produces blank line.
OUTPUT = '';
/*------------------------------------------------------- 78 simple_output_60 */
// hello.sc - Minimal output test.
OUTPUT = 'hello world';
/*------------------------------------------------------- 79 simple_output_62 */
// 001 - Output a string literal
OUTPUT = 'hello world';
/*------------------------------------------------------- 80 simple_output_63 */
// 002 - Output an integer literal
OUTPUT = 42;
/*------------------------------------------------------- 81 simple_output_64 */
// 003 - Output a real literal
OUTPUT = 3.14;
/*------------------------------------------------------- 82 simple_output_65 */
// 004 - Output empty string produces blank line
OUTPUT = '';
/*------------------------------------------------------- 83 simple_output_67 */
// 007 - Uninitialized variable outputs empty line
OUTPUT = x;
/*------------------------------------------------------- 84 simple_output_68 */
// 008 - Double-quoted string literal
OUTPUT = "hello world";
/*------------------------------------------------------ 85 simple_program_14 */
function p() { return; }
function q(x) { return x; }
/*------------------------------------------------------- 86 simple_assign_16 */
for (i = 0; LT(i, 10); i += 1) {
    break;
}
/*------------------------------------------------------- 87 simple_assign_22 */
for (i = 0; LT(i, 10); i += 1) {
    continue;
}
/*------------------------------------------------------- 88 simple_assign_33 */
x = 0;
if (x) { y = 1; }
z = 2;
/*------------------------------------------------------- 89 simple_assign_40 */
switch (x) {
default: y = 0;
}
/*------------------------------------------------------ 90 simple_output_127 */
// 009 - Assign string to variable, output it
x = 'hello';
OUTPUT = x;
/*------------------------------------------------------ 91 simple_output_128 */
// 010 - Assign integer to variable, output it
n = 42;
OUTPUT = n;
/*------------------------------------------------------ 92 simple_output_132 */
// 014 - Indirect assignment via dollar
$'x' = 'hello';
OUTPUT = x;
/*------------------------------------------------------ 93 simple_output_133 */
// 016 - Direct assignment to OUTPUT special variable
OUTPUT = 'alpha';
OUTPUT = 'beta';
/*------------------------------------------------------- 94 simple_output_16 */
// A02_assign_integer.sc — assign integer to variable, output it
n = 42;
OUTPUT = n;
/*------------------------------------------------------- 95 simple_output_19 */
// A02_assign_string.sc — assign string to variable, output it
x = 'hello';
OUTPUT = x;
/*-------------------------------------------------------- 96 simple_output_2 */
OUTPUT = 'hello';
OUTPUT = 'world';
OUTPUT = 42;
/*------------------------------------------------------- 97 simple_output_25 */
// A04_concat_assign.sc — concat on right side of assignment
x = 'foo'   'bar';
OUTPUT = x;
/*------------------------------------------------------- 98 simple_output_29 */
// A04_concat_var.sc — concatenate variable with string literal
x = 'hello';
OUTPUT = x   ' world';
/*------------------------------------------------------- 99 simple_output_52 */
// 009 - Assign string to variable, output it
x = 'hello';
OUTPUT = x;
/*------------------------------------------------------ 100 simple_output_53 */
// 010 - Assign integer to variable, output it
n = 42;
OUTPUT = n;
/*------------------------------------------------------ 101 simple_output_57 */
// 014 - Indirect assignment via dollar
$'x' = 'hello';
OUTPUT = x;
/*------------------------------------------------------ 102 simple_output_58 */
// 016 - Direct assignment to OUTPUT special variable
OUTPUT = 'alpha';
OUTPUT = 'beta';
/*------------------------------------------------------ 103 simple_output_91 */
N = 42;
OUTPUT = "value="   N;
OUTPUT = N   " things";
/*------------------------------------------------------ 104 simple_program_5 */
while (EQ(x, 1)) {
    break;
}
/*------------------------------------------------------ 105 simple_program_7 */
while (EQ(x, 1)) {
    continue;
}
/*------------------------------------------------------ 106 simple_assign_38 */
switch (x) {
case 1: y = 10; break;
case 2: y = 20;
}
/*------------------------------------------------------ 107 simple_assign_39 */
switch (x) {
case 1: y = 10;
default: y = 99;
}
/*------------------------------------------------------ 108 simple_assign_41 */
switch (x) {
case 1: y = 10;
case 2: y = 20;
}
/*------------------------------------------------------- 109 simple_assign_7 */
x = 42;
y = "hello";
z = x;
w;
/*----------------------------------------------------- 110 simple_output_100 */
// B07_minus_assign: x -= n subtracts n from x
x = 20;
x -= 7;
OUTPUT = x;
/*----------------------------------------------------- 111 simple_output_101 */
// B07_plus_assign: x += n adds n to x
x = 10;
x += 5;
OUTPUT = x;
/*----------------------------------------------------- 112 simple_output_102 */
// B07_slash_assign: x /= n divides x by n
x = 100;
x /= 4;
OUTPUT = x;
/*----------------------------------------------------- 113 simple_output_103 */
// B07_star_assign: x *= n multiplies x by n
x = 6;
x *= 7;
OUTPUT = x;
/*----------------------------------------------------- 114 simple_output_122 */
// B11_comment_line: // comments are stripped before tokenisation
x = 42; // this is ignored
// entire line comment
OUTPUT = x; // trailing comment
/*----------------------------------------------------- 115 simple_output_129 */
// 011 - Chain assignment x=a, y=x, output y
x = 'alpha';
y = x;
OUTPUT = y;
/*------------------------------------------------------ 116 simple_output_13 */
// A01_multi.sc — multiple sequential output statements
OUTPUT = 'line one';
OUTPUT = 'line two';
OUTPUT = 'line three';
/*----------------------------------------------------- 117 simple_output_130 */
// 012 - Assign null (empty right side)
x = 'something';
x = '';
OUTPUT = x;
/*----------------------------------------------------- 118 simple_output_131 */
// 013 - Overwrite variable, output second value
x = 'first';
x = 'second';
OUTPUT = x;
/*----------------------------------------------------- 119 simple_output_136 */
// multi.sc - Multiple sequential output statements.
OUTPUT = 'line one';
OUTPUT = 'line two';
OUTPUT = 'line three';
/*----------------------------------------------------- 120 simple_output_141 */
// 005 - Multiple output statements produce multiple lines
OUTPUT = 'line one';
OUTPUT = 'line two';
OUTPUT = 'line three';
/*------------------------------------------------------ 121 simple_output_15 */
// A02_assign_chain.sc — chain assignment x=a, y=x, output y
x = 'alpha';
y = x;
OUTPUT = y;
/*------------------------------------------------------ 122 simple_output_17 */
// A02_assign_null.sc — assign null, output blank line
x = 'something';
x =;
OUTPUT = x;
/*------------------------------------------------------ 123 simple_output_18 */
// A02_assign_overwrite.sc — overwrite variable, output second value
x = 'first';
x = 'second';
OUTPUT = x;
/*------------------------------------------------------ 124 simple_output_42 */
// A10_capture_delete.sc — replace match with empty (deletion)
x = 'hello world';
x ? ' world' = '';
OUTPUT = x;
/*------------------------------------------------------ 125 simple_output_43 */
// A10_capture_replace.sc — pattern replacement (subject pat = replacement)
x = 'hello world';
x ? 'world' = 'there';
OUTPUT = x;
/*------------------------------------------------------ 126 simple_output_54 */
// 011 - Chain assignment x=a, y=x, output y
x = 'alpha';
y = x;
OUTPUT = y;
/*------------------------------------------------------ 127 simple_output_55 */
// 012 - Assign null (empty right side)
x = 'something';
x = '';
OUTPUT = x;
/*------------------------------------------------------ 128 simple_output_56 */
// 013 - Overwrite variable, output second value
x = 'first';
x = 'second';
OUTPUT = x;
/*------------------------------------------------------ 129 simple_output_61 */
// multi.sc - Multiple sequential output statements.
OUTPUT = 'line one';
OUTPUT = 'line two';
OUTPUT = 'line three';
/*------------------------------------------------------ 130 simple_output_66 */
// 005 - Multiple output statements produce multiple lines
OUTPUT = 'line one';
OUTPUT = 'line two';
OUTPUT = 'line three';
/*------------------------------------------------------ 131 simple_output_81 */
// B03_for_basic.sc — basic for loop counts 1 to 3
for (i = 1; LE(i, 3); i = i + 1) {
    OUTPUT = i;
}
/*------------------------------------------------------ 132 simple_output_87 */
FIRST = "Hello";
LAST = "World";
FULL = FIRST   ", "   LAST   "!";
OUTPUT = FULL;
/*------------------------------------------------------ 133 simple_output_89 */
A = "foo";
B = "bar";
C = "baz";
OUTPUT = A   "-"   B   "-"   C;
/*------------------------------------------------------ 134 simple_output_90 */
X = "hello";
OUTPUT = ""   X;
OUTPUT = X   "";
OUTPUT = ""   "";
/*------------------------------------------------------ 135 simple_output_98 */
// B07_caret_assign: x ^= n raises x to power n
x = 3;
x ^= 4;
OUTPUT = x;
/*----------------------------------------------------- 136 simple_output_105 */
// B08_struct_basic: define struct, create instance, access fields
struct point { x, y }
p = point(3, 4);
OUTPUT = x(p);
OUTPUT = y(p);
/*------------------------------------------------------ 137 simple_output_30 */
// A05_data_define.sc — DATA type: define, create, access fields
DATA('complex(real,imag)');
x = complex(3, -2);
OUTPUT = real(x);
OUTPUT = imag(x);
/*------------------------------------------------------ 138 simple_output_40 */
// A09_lexical.sc — Lexical string comparison builtins
if (LGT('b', 'a')) { OUTPUT = 'b > a'; }
if (LLT('a', 'b')) { OUTPUT = 'a < b'; }
if (LEQ('cat', 'cat')) { OUTPUT = 'cat = cat'; }
if (LNE('cat', 'dog')) { OUTPUT = 'cat != dog'; }
/*------------------------------------------------------ 139 simple_output_41 */
// A10_capture_conditional.sc — match succeeds, output result
x = 'hello';
if (x ? 'hello') {
    OUTPUT = 'found';
}
/*------------------------------------------------------ 140 simple_output_45 */
// A13_define_entry_label.sc — procedure with explicit name (bumpit)
function bumpit(v) {
    return v + 1;
}
OUTPUT = bumpit(41);
/*------------------------------------------------------- 141 simple_output_6 */
i = 1;
while (LE(i, 5)) {
    OUTPUT = i;
    i = i + 1;
}
/*------------------------------------------------------ 142 simple_output_73 */
// B01_if_true.sc — if condition true: body executes
x = 1;
if (EQ(x, 1)) {
    OUTPUT = 'yes';
}
/*------------------------------------------------------ 143 simple_output_84 */
// B03_for_false.sc — for condition false on entry: body skipped
for (i = 5; LE(i, 3); i = ADD(i, 1)) {
    OUTPUT = 'should not print';
}
OUTPUT = 'done';
/*------------------------------------------------------ 144 simple_output_86 */
// B03_for_step_expr.sc — step expression contains a parenthesized sub-expression
for (i = 1; LE(i, 3); i = (i + 1)) {
    OUTPUT = i;
}
OUTPUT = 'end';
/*------------------------------------------------------ 145 simple_output_93 */
// B06_not_fail_succeeds: ~expr when expr fails → condition true
x = "";
if (~DIFFER(x, "")) {
    OUTPUT = "empty";
}
/*------------------------------------------------------ 146 simple_program_4 */
while (EQ(x, 1)) {
    while (EQ(y, 2)) {
        break;
    }
}
/*----------------------------------------------------- 147 simple_output_121 */
/* B11_comment_block: block comments are stripped in pre-pass */
x = /* inline block */ 99;
/* multi
   line
   block */
OUTPUT = x;
/*------------------------------------------------------- 148 simple_output_3 */
x = 'hello';
y = 42;
OUTPUT = x;
OUTPUT = y;
z = x;
OUTPUT = z;
/*------------------------------------------------------ 149 simple_output_33 */
// A07_differ.sc — DIFFER succeeds when strings differ
if (DIFFER('abc', 'xyz')) {
    OUTPUT = 'different';
} else {
    OUTPUT = 'same';
}
/*------------------------------------------------------ 150 simple_output_49 */
// A13_define_simple_return.sc — simple function: double a number
function double(s) {
    return 2 * s;
}
OUTPUT = double(5);
OUTPUT = double(21);
/*------------------------------------------------------- 151 simple_output_5 */
x = 10;
if (GT(x, 5)) OUTPUT = 'big'; else OUTPUT = 'small';
if (LT(x, 5)) OUTPUT = 'small'; else OUTPUT = 'big';
y = 3;
if (EQ(y, 3)) OUTPUT = 'three';
if (EQ(y, 4)) OUTPUT = 'four'; else OUTPUT = 'not four';
/*------------------------------------------------------ 152 simple_output_50 */
// A13_define_two_args.sc — function with two arguments
function add(a, b) {
    return a + b;
}
OUTPUT = add(3, 4);
OUTPUT = add(10, 32);
/*------------------------------------------------------ 153 simple_output_72 */
// B01_if_false.sc — if condition false: body skipped
x = 2;
if (EQ(x, 1)) {
    OUTPUT = 'yes';
}
OUTPUT = 'done';
/*------------------------------------------------------ 154 simple_output_75 */
// B02_do_while.sc — do-while body executes at least once even if condition false
i = 5;
do {
    OUTPUT = 'ran';
    i = i + 1;
} while (LE(i, 3));
/*------------------------------------------------------ 155 simple_output_77 */
// B02_while_basic.sc — while loop runs expected number of times
i = 1;
while (LE(i, 3)) {
    OUTPUT = i;
    i = i + 1;
}
/*------------------------------------------------------ 156 simple_output_80 */
// B02_while_false.sc — while condition false on entry: body skipped
i = 5;
while (LE(i, 3)) {
    OUTPUT = 'should not print';
}
OUTPUT = 'done';
/*------------------------------------------------------ 157 simple_output_99 */
// B07_compound_chain: multiple compound assigns in sequence
x = 2;
x += 3;
x *= 4;
x -= 2;
OUTPUT = x;
/*----------------------------------------------------- 158 simple_output_106 */
// B08_struct_field_set: assign to struct fields
struct rect { width, height }
r = rect(10, 5);
OUTPUT = width(r);
width(r) = 20;
OUTPUT = width(r);
OUTPUT = height(r);
/*----------------------------------------------------- 159 simple_output_126 */
// replacement conditional on a numeric comparison
x = 10;
s = "the answer";
if (EQ(x, 10)) {
    s ? "answer" = "question";
}
OUTPUT = s;
/*------------------------------------------------------ 160 simple_output_31 */
// A05_data_field_set.sc — DATA type: set field after creation
DATA('point(x,y)');
p = point(10, 20);
OUTPUT = x(p);
OUTPUT = y(p);
x(p) = 99;
OUTPUT = x(p);
/*------------------------------------------------------ 161 simple_output_44 */
// A12_pat_literal.sc — literal pattern match
x = 'hello world';
if (x ? 'hello') {
    OUTPUT = 'matched';
} else {
    OUTPUT = 'no match';
}
/*------------------------------------------------------- 162 simple_output_7 */
sum = 0;
i = 1;
while (LE(i, 10)) {
    sum = sum + i;
    i = i + 1;
}
OUTPUT = sum;
/*------------------------------------------------------ 163 simple_output_70 */
// B01_if_else_false.sc — if/else: false branch taken
x = 'world';
if (IDENT(x, 'hello')) {
    OUTPUT = 'matched';
} else {
    OUTPUT = 'no match';
}
/*------------------------------------------------------ 164 simple_output_71 */
// B01_if_else_true.sc — if/else: true branch taken
x = 'hello';
if (IDENT(x, 'hello')) {
    OUTPUT = 'matched';
} else {
    OUTPUT = 'no match';
}
/*------------------------------------------------------ 165 simple_output_83 */
// B03_for_continue.sc — continue skips rest of body; step still runs
for (i = 1; LE(i, 5); i = i + 1) {
    if (EQ(i, 3)) {
        continue;
    }
    OUTPUT = i;
}
/*------------------------------------------------------ 166 simple_output_94 */
// B06_not_query_combined: ~~x double negation — cancels out, takes true branch
x = "hello";
if (~~DIFFER(x, "")) {
    OUTPUT = "has value";
} else {
    OUTPUT = "no value";
}
/*------------------------------------------------------ 167 simple_output_95 */
// B06_not_succeed_fails: ~expr when expr succeeds → condition false
x = "hello";
if (~DIFFER(x, "")) {
    OUTPUT = "empty";
} else {
    OUTPUT = "not empty";
}
/*----------------------------------------------------- 168 simple_output_107 */
// B08_struct_proc: struct created inside procedure
struct pair { first, second }
function make_pair(a, b) {
    return pair(a, b);
}
p = make_pair("hello", "world");
OUTPUT = first(p);
OUTPUT = second(p);
/*----------------------------------------------------- 169 simple_output_108 */
// B08_struct_two_types: two distinct struct types coexist
struct point { x, y }
struct interval { lo, hi }
p = point(3, 4);
iv = interval(1, 10);
OUTPUT = x(p);
OUTPUT = lo(iv);
OUTPUT = hi(iv);
/*----------------------------------------------------- 170 simple_output_123 */
// line comment at top
/* block at top */
a = 1; // trailing
b = /* mid-expr */ 2;
/* block
   spanning
   lines */
OUTPUT = a + b; // should print 3
/*------------------------------------------------------- 171 simple_output_4 */
OUTPUT = 3 + 4;
OUTPUT = 10 - 3;
OUTPUT = 6 * 7;
OUTPUT = 20 / 4;
OUTPUT = 2 ^ 8;
x = 5;
OUTPUT = x + x;
OUTPUT = x * 3;
/*------------------------------------------------------- 172 simple_output_8 */
function square(n) {
    return n * n;
}
function cube(n) {
    return n * square(n);
}
OUTPUT = square(7);
OUTPUT = cube(3);
/*------------------------------------------------------ 173 simple_output_82 */
// B03_for_break.sc — break exits for loop early
for (i = 1; LE(i, 10); i = i + 1) {
    if (EQ(i, 4)) {
        break;
    }
    OUTPUT = i;
}
OUTPUT = 'done';
/*------------------------------------------------------ 174 simple_output_48 */
// A13_define_recursive_fib.sc — recursive Fibonacci
function fib(n) {
    if (LE(n, 1)) { return n; }
    return fib(n - 1) + fib(n - 2);
}
OUTPUT = fib(0);
OUTPUT = fib(1);
OUTPUT = fib(6);
OUTPUT = fib(10);
/*------------------------------------------------------ 175 simple_output_85 */
// B03_for_nested_break.sc — break exits only innermost for loop
for (i = 1; LE(i, 3); i = i + 1) {
    for (j = 1; LE(j, 3); j = j + 1) {
        if (EQ(j, 2)) {
            break;
        }
        OUTPUT = i   '-'   j;
    }
}
/*------------------------------------------------------ 176 simple_output_37 */
// A07_lt_le_ge.sc — LT, LE, GE comparisons
if (LT(3, 5)) {
    OUTPUT = '3 < 5';
}
if (LE(5, 5)) {
    OUTPUT = '5 <= 5';
}
if (GE(7, 5)) {
    OUTPUT = '7 >= 5';
}
/*------------------------------------------------------ 177 simple_output_78 */
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
/*------------------------------------------------------ 178 simple_output_79 */
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
/*------------------------------------------------------- 179 simple_output_1 */
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
/*------------------------------------------------------ 180 simple_output_34 */
// A07_gt.sc — GT numeric comparison
if (GT(5, 3)) {
    OUTPUT = '5 > 3';
} else {
    OUTPUT = 'wrong';
}
if (GT(3, 5)) {
    OUTPUT = 'wrong';
} else {
    OUTPUT = '3 not > 5';
}
/*------------------------------------------------------ 181 simple_output_35 */
// A07_ident.sc — IDENT succeeds when strings are equal
if (IDENT('abc', 'abc')) {
    OUTPUT = 'equal';
} else {
    OUTPUT = 'not equal';
}
if (IDENT('abc', 'xyz')) {
    OUTPUT = 'equal';
} else {
    OUTPUT = 'not equal';
}
/*------------------------------------------------------ 182 simple_output_36 */
// A07_integer_test.sc — INTEGER succeeds on numeric string, fails on alpha
if (INTEGER('42')) {
    OUTPUT = 'numeric';
} else {
    OUTPUT = 'not numeric';
}
if (INTEGER('abc')) {
    OUTPUT = 'numeric';
} else {
    OUTPUT = 'not numeric';
}
/*------------------------------------------------------ 183 simple_output_38 */
// A08_eq_ne.sc — EQ and NE numeric equality
if (EQ(42, 42)) {
    OUTPUT = '42 = 42';
} else {
    OUTPUT = 'wrong';
}
if (NE(42, 99)) {
    OUTPUT = '42 != 99';
} else {
    OUTPUT = 'wrong';
}
/*------------------------------------------------------ 184 simple_output_47 */
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
/*------------------------------------------------------ 185 simple_output_74 */
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
/*------------------------------------------------------ 186 simple_output_76 */
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
/*----------------------------------------------------- 187 simple_output_125 */
// use numeric comparison as pattern subject (EQ succeeds/fails as pattern)
a = 5;
b = 5;
if (EQ(a, b)) {
    OUTPUT = "match";
} else {
    OUTPUT = "no match";
}
c = 3;
if (EQ(a, c)) {
    OUTPUT = "match";
} else {
    OUTPUT = "no match";
}
/*------------------------------------------------------ 188 simple_output_46 */
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
/*----------------------------------------------------- 189 simple_output_115 */
// B10_num_eq: EQ() succeeds when values are numerically equal
// (was "==" sugar; removed 2026-08-24 pending Lon's ruling, see snocone-relop-parse-regression)
a = 7;
b = 7;
if (EQ(a, b)) {
    OUTPUT = "equal";
} else {
    OUTPUT = "not equal";
}
a = 3;
if (EQ(a, b)) {
    OUTPUT = "equal";
} else {
    OUTPUT = "not equal";
}
/*----------------------------------------------------- 190 simple_output_117 */
// B10_num_gt: GT() succeeds when left > right
// (was ">" sugar; removed 2026-08-24 pending Lon's ruling, see snocone-relop-parse-regression)
a = 10;
b = 3;
if (GT(a, b)) {
    OUTPUT = "greater";
} else {
    OUTPUT = "not greater";
}
a = 1;
if (GT(a, b)) {
    OUTPUT = "greater";
} else {
    OUTPUT = "not greater";
}
/*----------------------------------------------------- 191 simple_output_119 */
// B10_num_lt: LT() succeeds when left < right
// (was "<" sugar; removed 2026-08-24 pending Lon's ruling, see snocone-relop-parse-regression)
a = 2;
b = 8;
if (LT(a, b)) {
    OUTPUT = "less";
} else {
    OUTPUT = "not less";
}
a = 10;
if (LT(a, b)) {
    OUTPUT = "less";
} else {
    OUTPUT = "not less";
}
/*----------------------------------------------------- 192 simple_output_120 */
// B10_num_ne: NE() succeeds when values differ
// (was "!=" sugar; removed 2026-08-24 pending Lon's ruling, see snocone-relop-parse-regression)
a = 4;
b = 9;
if (NE(a, b)) {
    OUTPUT = "not equal";
} else {
    OUTPUT = "equal";
}
a = 9;
if (NE(a, b)) {
    OUTPUT = "not equal";
} else {
    OUTPUT = "equal";
}
/*----------------------------------------------------- 193 simple_output_109 */
// B09_str_eq: LEQ() succeeds when strings are lexicographically equal
// (was ":==:" sugar; removed 2026-08-24 pending Lon's ruling, see snocone-relop-parse-regression)
a = "apple";
b = "apple";
if (LEQ(a, b)) {
    OUTPUT = "equal";
} else {
    OUTPUT = "not equal";
}
a = "apple";
b = "banana";
if (LEQ(a, b)) {
    OUTPUT = "equal";
} else {
    OUTPUT = "not equal";
}
/*----------------------------------------------------- 194 simple_output_111 */
// B09_str_gt: LGT() succeeds when left > right lexicographically
// (was ":>:" sugar; removed 2026-08-24 pending Lon's ruling, see snocone-relop-parse-regression)
a = "zebra";
b = "apple";
if (LGT(a, b)) {
    OUTPUT = "greater";
} else {
    OUTPUT = "not greater";
}
a = "apple";
b = "zebra";
if (LGT(a, b)) {
    OUTPUT = "greater";
} else {
    OUTPUT = "not greater";
}
/*----------------------------------------------------- 195 simple_output_113 */
// B09_str_lt: LLT() succeeds when left < right lexicographically
// (was ":<:" sugar; removed 2026-08-24 pending Lon's ruling, see snocone-relop-parse-regression)
a = "apple";
b = "banana";
if (LLT(a, b)) {
    OUTPUT = "less";
} else {
    OUTPUT = "not less";
}
a = "banana";
b = "apple";
if (LLT(a, b)) {
    OUTPUT = "less";
} else {
    OUTPUT = "not less";
}
/*----------------------------------------------------- 196 simple_output_114 */
// B09_str_ne: LNE() succeeds when strings are not equal
// (was ":!=:" sugar; removed 2026-08-24 pending Lon's ruling, see snocone-relop-parse-regression)
a = "apple";
b = "banana";
if (LNE(a, b)) {
    OUTPUT = "different";
} else {
    OUTPUT = "same";
}
a = "same";
b = "same";
if (LNE(a, b)) {
    OUTPUT = "different";
} else {
    OUTPUT = "same";
}
/*------------------------------------------------------- 197 simple_output_9 */
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
/*----------------------------------------------------- 198 simple_output_116 */
// B10_num_ge: GE() succeeds when left >= right
// (was ">=" sugar; removed 2026-08-24 pending Lon's ruling, see snocone-relop-parse-regression)
a = 5;
b = 5;
if (GE(a, b)) {
    OUTPUT = "ge";
} else {
    OUTPUT = "not ge";
}
a = 8;
if (GE(a, b)) {
    OUTPUT = "ge";
} else {
    OUTPUT = "not ge";
}
a = 2;
if (GE(a, b)) {
    OUTPUT = "ge";
} else {
    OUTPUT = "not ge";
}
/*----------------------------------------------------- 199 simple_output_118 */
// B10_num_le: LE() succeeds when left <= right
// (was "<=" sugar; removed 2026-08-24 pending Lon's ruling, see snocone-relop-parse-regression)
a = 5;
b = 5;
if (LE(a, b)) {
    OUTPUT = "le";
} else {
    OUTPUT = "not le";
}
a = 3;
if (LE(a, b)) {
    OUTPUT = "le";
} else {
    OUTPUT = "not le";
}
a = 7;
if (LE(a, b)) {
    OUTPUT = "le";
} else {
    OUTPUT = "not le";
}
/*----------------------------------------------------- 200 simple_output_110 */
// B09_str_ge: LGE() succeeds when left >= right lexicographically
// (was ":>=:" sugar; removed 2026-08-24 pending Lon's ruling, see snocone-relop-parse-regression)
a = "zebra";
b = "apple";
if (LGE(a, b)) {
    OUTPUT = "ge";
} else {
    OUTPUT = "not ge";
}
a = "dog";
b = "dog";
if (LGE(a, b)) {
    OUTPUT = "ge";
} else {
    OUTPUT = "not ge";
}
a = "apple";
b = "zebra";
if (LGE(a, b)) {
    OUTPUT = "ge";
} else {
    OUTPUT = "not ge";
}
/*----------------------------------------------------- 201 simple_output_112 */
// B09_str_le: LLE() succeeds when left <= right lexicographically
// (was ":<=:" sugar; removed 2026-08-24 pending Lon's ruling, see snocone-relop-parse-regression)
a = "apple";
b = "banana";
if (LLE(a, b)) {
    OUTPUT = "le";
} else {
    OUTPUT = "not le";
}
a = "cat";
b = "cat";
if (LLE(a, b)) {
    OUTPUT = "le";
} else {
    OUTPUT = "not le";
}
a = "zebra";
b = "apple";
if (LLE(a, b)) {
    OUTPUT = "le";
} else {
    OUTPUT = "not le";
}
/*----------------------------------------------------------------- 202 alt_1 */
x ? 'foo' | 'bar';
/*----------------------------------------------------------------- 203 alt_2 */
x ? 'a' | 'b' = 'z';
/*-------------------------------------------------------- 204 dupl_replace_1 */
// A06_dupl.sc — DUPL repeats string N times
OUTPUT = DUPL('ab', 3);
/*----------------------------------------------------- 205 replace_replace_1 */
// A06_replace.sc — REPLACE translates characters
OUTPUT = REPLACE('hello', 'aeiou', 'AEIOU');
/*-------------------------------------------------------- 206 size_replace_1 */
// A06_size.sc — SIZE returns string length
OUTPUT = SIZE('hello');
/*------------------------------------------------------------ 207 indirect_1 */
// 015 - Indirect assignment via variable holding name
v = 'x';
$v = 'world';
OUTPUT = x;
/*------------------------------------------------------------ 208 indirect_2 */
// 015 - Indirect assignment via variable holding name
v = 'x';
$v = 'world';
OUTPUT = x;
/*---------------------------------------------------------------- 209 size_1 */
a = 'hello';
b = ' world';
c = a b;
OUTPUT = c;
OUTPUT = SIZE(c);
/*----------------------------------------------------- 210 capture_replace_5 */
// string comparison guards a pattern operation
s = "hello";
t = "hello";
if (LEQ(s, t)) {
    if (s ? "ell" . m) {
        OUTPUT = m;
    }
}
/*----------------------------------------------------- 211 keyword_replace_2 */
// A09_stno.sc — &STNO increments per statement
x = 1;
x = 2;
if (GT(&STNO, 1)) {
    OUTPUT = 'stno ok';
} else {
    OUTPUT = 'wrong';
}
/*------------------------------------------------------- 212 table_replace_1 */
// A05_table.sc — create table, set and get keyed values
t = TABLE();
t['name'] = 'Alice';
t['age'] = 30;
t['lang'] = 'SNOBOL4';
OUTPUT = t['name'];
OUTPUT = t['age'];
OUTPUT = t['lang'];
/*----------------------------------------------------- 213 keyword_replace_1 */
// A09_anchor.sc — &ANCHOR=1 forces match at position 0
&ANCHOR = 1;
x = 'hello world';
if (x ? 'hello') {
    OUTPUT = 'anchored match ok';
} else {
    OUTPUT = 'wrong';
}
if (x ? 'world') {
    OUTPUT = 'should not reach';
} else {
    OUTPUT = 'anchor prevented mid-string match';
}
/*-------------------------------------------------------- 214 size_keyword_1 */
// 006 - SIZE of &ALPHABET
OUTPUT = SIZE(&ALPHABET);
/*-------------------------------------------------------- 215 size_keyword_2 */
// 006 - SIZE of &ALPHABET
OUTPUT = SIZE(&ALPHABET);
/*--------------------------------------------------- 216 trim_size_replace_1 */
// A06_trim.sc — TRIM removes trailing spaces
OUTPUT = SIZE(TRIM('hello   '));
/*--------------------------------------------- 217 replace_keyword_replace_1 */
// A09_reverse_ucase.sc — REVERSE + case keywords
OUTPUT = REVERSE('hello');
OUTPUT = REPLACE('hello', &LCASE, &UCASE);
/*--------------------------------------------------- 218 dupl_size_replace_1 */
// A09_dupl_size.sc — DUPL + SIZE combination
x = DUPL('abc', 4);
OUTPUT = SIZE(x);
OUTPUT = x;
/*------------------------------------------------ 219 size_keyword_replace_1 */
// A08_alphabet.sc — &ALPHABET and &UCASE &LCASE keywords
OUTPUT = SIZE(&ALPHABET);
OUTPUT = SIZE(&UCASE);
OUTPUT = SIZE(&LCASE);
/*------------------------------------------------- 220 len_capture_replace_1 */
// A11_capture_dot.sc — immediate capture with dot (.)
x = 'hello world';
if (x ? LEN(5) . v) {
    OUTPUT = v;
}
/*--------------------------------------------- 221 len_imm_capture_replace_1 */
// A11_capture_dollar.sc — deferred capture with dollar ($)
x = 'hello world';
if (x ? LEN(5) $ v) {
    OUTPUT = v;
}
/*------------------------------------------------ 222 span_capture_replace_2 */
// pattern in if with capture
s = "hello world";
if (s ? SPAN("abcdefghijklmnopqrstuvwxyz") . word) {
    OUTPUT = word;
}
/*--------------------------------------------- 223 replace_keyword_replace_2 */
// A13_define_in_pattern.sc — function call used as value
function upcase(s) {
    return REPLACE(s, &LCASE, &UCASE);
}
OUTPUT = upcase('hello');
OUTPUT = upcase('world');
/*------------------------------------------------- 224 any_capture_replace_1 */
// A12_pat_any.sc — ANY matches one character from set
x = 'hello';
if (x ? ANY('aeiou') . v) {
    OUTPUT = v;
} else {
    OUTPUT = 'no vowel';
}
/*----------------------------------------------- 225 break_capture_replace_1 */
// A12_pat_break.sc — BREAK matches up to (not including) char in set
x = 'hello world';
if (x ? BREAK(' ') . v) {
    OUTPUT = v;
} else {
    OUTPUT = 'no space';
}
/*------------------------------------------------- 226 len_capture_replace_2 */
// A12_pat_len.sc — LEN matches exactly N characters
x = 'abcdef';
if (x ? LEN(3) . v) {
    OUTPUT = v;
} else {
    OUTPUT = 'fail';
}
/*---------------------------------------------- 227 notany_capture_replace_1 */
// A12_pat_notany.sc — NOTANY matches one char NOT in set
x = 'hello';
if (x ? NOTANY('aeiou') . v) {
    OUTPUT = v;
} else {
    OUTPUT = 'all vowels';
}
/*------------------------------------------------- 228 pos_capture_replace_1 */
// A11_capture_loop.sc — capture inside loop (LOOP/DONE → while + break)
x = 'aaa';
n = 0;
while (x ? POS(n)   'a' . v) {
    OUTPUT = v;
    n = n + 1;
}
/*------------------------------------------------ 229 rtab_capture_replace_1 */
// A12_pat_rtab.sc — RTAB leaves N chars from right
x = 'abcdef';
if (x ? RTAB(2) . v) {
    OUTPUT = v;
} else {
    OUTPUT = 'fail';
}
/*------------------------------------------------ 230 span_capture_replace_1 */
// A12_pat_span.sc — SPAN matches longest run of chars in set
x = '12345abc';
if (x ? SPAN('0123456789') . v) {
    OUTPUT = v;
} else {
    OUTPUT = 'no digits';
}
/*------------------------------------------------ 231 span_capture_replace_3 */
// capture a digit string and compare its numeric value
s = "42 things";
if (s ? SPAN("0123456789") . num) {
    if (EQ(num, 42)) {
        OUTPUT = "forty-two";
    }
}
/*------------------------------------ 232 datatype_replace_keyword_replace_1 */
// A08_datatype.sc — DATATYPE returns type name of value
OUTPUT = REPLACE(DATATYPE('hello'), &LCASE, &UCASE);
OUTPUT = REPLACE(DATATYPE(42),      &LCASE, &UCASE);
OUTPUT = REPLACE(DATATYPE(3.14),    &LCASE, &UCASE);
/*------------------------------------------- 233 break_len_capture_replace_1 */
// pattern match inside for loop body
words = "cat dog fox";
for (i = 1; LE(i, 3); i = i + 1) {
    if (words ? BREAK(" ") . w   LEN(1)) {
        OUTPUT = w;
    }
}
/*--------------------------------------------- 234 pos_len_capture_replace_1 */
// A12_pat_pos.sc — POS anchors match at cursor position
x = 'hello';
if (x ? POS(0)   LEN(3) . v) {
    OUTPUT = v;
} else {
    OUTPUT = 'fail';
}
/*-------------------------------------------- 235 rpos_len_capture_replace_1 */
// A12_pat_rpos.sc — RPOS anchors match from right
x = 'hello';
if (x ? RPOS(2)   LEN(2) . v) {
    OUTPUT = v;
} else {
    OUTPUT = 'fail';
}
/*--------------------------------------------- 236 tab_len_capture_replace_1 */
// A12_pat_tab.sc — TAB advances cursor to column position
x = 'abcdef';
if (x ? TAB(3)   LEN(2) . v) {
    OUTPUT = v;
} else {
    OUTPUT = 'fail';
}
/*------------------------------------------- 237 trim_size_keyword_replace_1 */
// A14_arith_loop_fileinfo.sc — count chars and lines from stdin
// Snocone translation of crosscheck/arith/fileinfo.sno
// Tests: while (INPUT), SIZE(), integer accumulation, EOF termination
&TRIM = 1;
chars = 0;
lines = 0;
while (line = INPUT) {
    chars = chars + SIZE(line);
    lines = lines + 1;
}
OUTPUT = chars   ' characters, '   lines   ' lines read';
/*---------------------------------------- 238 trim_replace_keyword_replace_1 */
// A15_lib_case.sc — case conversion: lwr, upr, cap, icase pattern
// Snocone translation of crosscheck/library/test_case.sno + lib/case.sno
&TRIM = 1;

function lwr(s) {
    return REPLACE(s, &UCASE, &LCASE);
}
function upr(s) {
    return REPLACE(s, &LCASE, &UCASE);
}
function cap(s) {
    return REPLACE(SUBSTR(s, 1, 1), &LCASE, &UCASE)   REPLACE(SUBSTR(s, 2), &UCASE, &LCASE);
}
// icase(subject, pattern): succeed if subject matches pattern case-insensitively
function icase(subject, pat) {
    if (IDENT(lwr(subject), lwr(pat))) { return; } else { freturn; }
}

OUTPUT = lwr('HELLO WORLD');
OUTPUT = upr('hello world');
OUTPUT = cap('hELLO wORLD');

if (icase('Hello', 'hello')) {
    OUTPUT = 'ok: icase hello';
}
if (icase('HELLO', 'hello')) {
    OUTPUT = 'ok: icase HELLO';
}
if (icase('HeLLo', 'hello')) {
    OUTPUT = 'ok: icase HeLLo';
}
if (icase('world', 'hello')) {
    OUTPUT = 'fail: icase matched wrong string';
} else {
    OUTPUT = 'no match ok';
}
/*----------------------------------------------- 239 break_len_rem_replace_1 */
// A11_capture_multiple.sc — multiple captures in one pattern
x = 'John Smith';
if (x ? BREAK(' ') . first   LEN(1)   REM . last) {
    OUTPUT = first   ' / '   last;
}
/*---------------------------------------------- 240 trim_dupl_size_replace_1 */
// A14_arith_loop_triplet.sc — center input lines, blank line every third
// Snocone translation of crosscheck/arith/triplet.sno
// Tests: while (INPUT), DUPL(), REMDR(), SIZE(), &TRIM, arithmetic
&TRIM = 1;
n = 0;
while (s = INPUT) {
    OUTPUT = DUPL(' ', (80 - SIZE(s)) / 2)   s;
    n = REMDR(n + 1, 3);
    OUTPUT = EQ(n, 0);
}
/*----------------------------------------------- 241 simple_output_124 XFAIL */
# B11_comment_hash: # is also a line-comment introducer
x = 7; # ignored
OUTPUT = x; # also ignored
/*----------------------------------------------- 242 simple_output_104 XFAIL */
// B07_percent_assign: x %= n gives remainder
x = 17;
x %= 5;
OUTPUT = x;
/*------------------------------------------------ 243 simple_output_92 XFAIL */
// B05_alt_both_fail: both alternatives fail, match fails
S = "hello";
if (S ? (("xyz", "abc"))) {
    OUTPUT = "matched";
} else {
    OUTPUT = "no match";
}
/*------------------------------------------------ 244 simple_output_96 XFAIL */
// B06_query_empty: ?x fails when x is empty
x = "";
if (?x) {
    OUTPUT = "has value";
} else {
    OUTPUT = "no value";
}
/*------------------------------------------------ 245 simple_output_97 XFAIL */
// B06_query_nonempty: ?x succeeds when x is non-empty (DIFFER from "")
x = "hello";
if (?x) {
    OUTPUT = "has value";
} else {
    OUTPUT = "no value";
}
/*------------------------------------------------ 246 simple_output_51 XFAIL */
// A13_define_locals.sc — function with local variable
function swap(a, b)(tmp) {
    tmp = a;
    a = b;
    b = tmp;
    OUTPUT = a   ' '   b;
    return;
}
swap('hello', 'world');
/*----------------------------------------------- 247 simple_output_148 XFAIL */
// nested_while_in_function_multi_inner.sc -- regression witness, snocone-nested-while-in-function-segv.
// Same shape as nested_while_in_function.sc but the inner while runs 3 iterations per outer pass
// instead of 1, exercising the inner loop's own back-edge repeatedly before the outer-tail transition.
function S5(n, x, i, j, acc) {
    acc = 0; i = 1;
    while (LE(i, n)) {
        j = 0;
        while (LT(j, 3)) { acc = acc + j; j = j + 1; }
        i = i + 1; }
    S5 = acc; return;
}
OUTPUT = S5(4);
/*----------------------------------------------- 248 simple_output_149 XFAIL */
// nested_while_in_function_multistmt_tail.sc -- regression witness, snocone-nested-while-in-function-segv.
// Two statements (not one) follow the inner while inside the outer body, checking that only the
// first trailing statement needs its own fresh depth-planning head -- the second must chain from it.
function S5(n, x, i, j, y) {
    x = 0; i = 1; y = 0;
    while (LE(i, n)) {
        j = 0;
        while (LT(j, 1)) { x = x + 1; j = j + 1; }
        i = i + 1;
        y = y + 10; }
    S5 = x + y; return;
}
OUTPUT = S5(3);
/*----------------------------------------------- 249 simple_output_145 XFAIL */
// nested_while_in_function.sc -- PROBE, minimal repro.
// A `while` loop nested inside another `while` loop, both inside a Snocone
// FUNCTION body, SIGSEGVs on the function's own return/gamma-exit path in
// both --run and --compile (gdb: null-pointer dereference chasing a stale
// fixed-stack-offset continuation at S5_gamma+100, rcx=0 at the fault).
// The identical structure at TOP LEVEL (outside any function) does not
// crash -- see postoffice task snocone-nested-while-in-function-segv.
function S5(n, x, i, j) {
    x = 0; i = 1;
    while (LE(i, n)) {
        j = 0;
        while (LT(j, 1)) { x = j; j = j + 1; }
        i = i + 1; }
    S5 = x; return;
}
OUTPUT = S5(3);
/*----------------------------------------------- 250 simple_output_147 XFAIL */
// nested_while_in_function_3deep.sc -- KNOWN-OPEN witness, three levels of while nesting in a function.
// SIGSEGVs as of 2026-08-27 (task snocone-triple-nested-while-baseline-drift): the fix for the 2-level
// case (snocone-nested-while-in-function-segv) does not generalize -- a freshly-planned "trailing
// statement after a nested loop" run is unconditionally baselined at local depth 0, which is only
// correct when nothing that run reaches later needs a different, non-zero baseline. Do not expect
// this file to pass without that follow-up landing first.
function S5(n, x, i, j, k, acc) {
    acc = 0; i = 1;
    while (LE(i, n)) {
        j = 0;
        while (LT(j, 2)) {
            k = 0;
            while (LT(k, 2)) { acc = acc + 1; k = k + 1; }
            j = j + 1; }
        i = i + 1; }
    S5 = acc; return;
}
OUTPUT = S5(3);
/*----------------------------------------------- 251 simple_output_146 XFAIL */
// nested_while_in_function_1deep_control.sc -- CONTROL sibling for the SEGV probe
// in this same directory (nested_while_in_function.sc). Same function shape (S5(n,x,i,j),
// same body statements: j=0; x=j; j=j+1; i=i+1), but the inner `while(LT(j,1)) {...}` wrapper
// is removed -- the same three statements run unconditionally once per outer iteration instead
// of via a nested loop. This does NOT crash (both --run and --compile), confirming the defect
// is specifically about a `while` nested inside a `while` (not about the statements themselves,
// not about iteration count of a single loop -- this one iterates the SAME 3 outer times).
// Used for ASM-DIFF-FIRST: compiling both this file and the sibling .sc with --compile and
// diffing the emitted .s isolates exactly what a second level of loop nesting changes in the
// generated stack accounting. See postoffice task snocone-nested-while-in-function-segv
// for the full bisection trail and confirmed root-cause mechanism.
function S5(n, x, i, j) {
    x = 0; i = 1;
    while (LE(i, n)) {
        j = 0;
        x = j; j = j + 1;
        i = i + 1; }
    S5 = x; return;
}
OUTPUT = S5(3);
/*----------------------------------------------- 252 simple_output_144 XFAIL */
// literals.sc - String and numeric literal coercion.
// Tests: null string, integer/real OUTPUT coercion, string concat,
//        arithmetic precedence, single- and double-quoted literals.
OUTPUT = '';
OUTPUT = "";
OUTPUT = "Hello World!";
OUTPUT = 0;
OUTPUT = 1;
OUTPUT = -1;
OUTPUT = 1.0;
OUTPUT = '1';
OUTPUT = '1';
OUTPUT = '1.0';
OUTPUT = "I'm here";
OUTPUT = '"Quote of the day"';
OUTPUT = '' + '';
OUTPUT = '' + 1;
OUTPUT = 1 + '';
OUTPUT = ('', '');
OUTPUT = ('', 'Z');
OUTPUT = ('A', '');
OUTPUT = ('A', 'Z');
OUTPUT = 1 + 2;
OUTPUT = 1 + 2 * 3;
OUTPUT = (1 + 2) * 3;
OUTPUT = 1 + (2 * 3);
/*------------------------------------------------ 253 simple_output_69 XFAIL */
// literals.sc - String and numeric literal coercion.
// Tests: null string, integer/real OUTPUT coercion, string concat,
//        arithmetic precedence, single- and double-quoted literals.
OUTPUT = '';
OUTPUT = "";
OUTPUT = "Hello World!";
OUTPUT = 0;
OUTPUT = 1;
OUTPUT = -1;
OUTPUT = 1.0;
OUTPUT = '1';
OUTPUT = '1';
OUTPUT = '1.0';
OUTPUT = "I'm here";
OUTPUT = '"Quote of the day"';
OUTPUT = '' + '';
OUTPUT = '' + 1;
OUTPUT = 1 + '';
OUTPUT = ('A', 'Z');
OUTPUT = ('A', 'Z');
OUTPUT = ('A', 'Z');
OUTPUT = ('A', 'Z');
OUTPUT = 1 + 2;
OUTPUT = 1 + 2 * 3;
OUTPUT = (1 + 2) * 3;
OUTPUT = 1 + (2 * 3);
/*----------------------------------------------- 254 capture_replace_1 XFAIL */
// B05_alt_assign: alternation result captured and assigned
S = "testing";
if (S ? (("xyz", "test")) . RESULT) {
    OUTPUT = RESULT;
}
/*----------------------------------------------- 255 capture_replace_2 XFAIL */
// B05_alt_chain: three-way alternation, third arm matches
S = "world";
if (S ? (("foo", "bar", "wor")) . M) {
    OUTPUT = M;
}
/*----------------------------------------------- 256 capture_replace_3 XFAIL */
// B05_alt_left_wins: left alternative matches, right not tried
S = "hello";
if (S ? (("hel", "xyz")) . M) {
    OUTPUT = M;
}
/*----------------------------------------------- 257 capture_replace_4 XFAIL */
// B05_alt_right_fallback: left fails, right succeeds
S = "hello";
if (S ? (("xyz", "ell")) . M) {
    OUTPUT = M;
}
/*---------------------------------------------- 258 datatype_replace_1 XFAIL */
// B08_struct_datatype: DATATYPE of struct instance
struct color { r, g, b }
c = color(255, 128, 0);
OUTPUT = DATATYPE(c);
OUTPUT = r(c);
/*------------------------------------------------- 259 array_replace_1 XFAIL */
// A05_array_create.sc — create array, set and get elements
arr = ARRAY(5);
arr<1> = 'first';
arr<3> = 'third';
arr<5> = 'fifth';
OUTPUT = arr<1>;
OUTPUT = arr<3>;
OUTPUT = arr<5>;
/*------------------------------------------------- 260 array_replace_2 XFAIL */
// A05_array_loop.sc — fill array in while loop, read back
arr = ARRAY(5);
i = 1;
while (LE(i, 5)) {
    arr<i> = i * i;
    i = i + 1;
}
i = 1;
while (LE(i, 5)) {
    OUTPUT = arr<i>;
    i = i + 1;
}
/*---------------------------------------------- 261 indirect_replace_1 XFAIL */
// nreturn_after_indirect_assign.sc -- PROBE, minimal repro.
// A function that sets its own return-slot to .dummy, then performs an
// INDIRECT assignment ($name = expression), then nreturns -- the caller
// (in ordinary value context, r = f(...)) incorrectly receives the
// indirectly-assigned VALUE instead of .dummy's dereferenced (empty)
// value. This is the exact shape of beauty/match.inc's canonical `assign`
// helper. See postoffice task snocone-nreturn-after-indirect-assign-wrong-value.
function setter(name, expression) {
    setter = .dummy;
    $name = expression;
    nreturn;
}
r = setter('d', 'val');
OUTPUT = "[" r "]";
/*------------------------------------------ 262 trim_keyword_replace_1 XFAIL */
// A15_lib_math.sc — numeric utility functions: max, min, abs, sign, gcd, lcm
// Snocone translation of crosscheck/library/test_math.sno + lib/math.sno
&TRIM = 1;

function max(a, b) {
    if (LT(a, b)) { return b; }
    return a;
}
function min(a, b) {
    if (GT(a, b)) { return b; }
    return a;
}
function abs(n) {
    if (LT(n, 0)) { return -n; }
    return n;
}
function sign(n) {
    if (LT(n, 0)) { return -1; }
    if (GT(n, 0)) { return 1; }
    return 0;
}
function gcd(a, b)(r) {
    while (DIFFER(b, 0)) {
        r = REMDR(a, b);
        a = b;
        b = r;
    }
    return a;
}
function lcm(a, b)(g) {
    g = gcd(a, b);
    return (a / g) * b;
}

OUTPUT = max(3, 7);
OUTPUT = min(3, 7);
OUTPUT = max(3.5, 2.1);
OUTPUT = min(3.5, 2.1);
OUTPUT = abs(-42);
OUTPUT = sign(0);
OUTPUT = sign(5);
OUTPUT = sign(-3);
OUTPUT = gcd(12, 8);
OUTPUT = gcd(100, 75);
OUTPUT = lcm(4, 6);
/*----------------------------------------- 263 break_len_rem_replace_2 XFAIL */
// A15_lib_stack.sc — general-purpose stack: push, pop, peek, depth
// Snocone translation of crosscheck/library/test_stack.sno + lib/stack.sno
&TRIM = 1;

DATA('slink(snext, sval)');
stk = '';

function stack_init() {
    stk = '';
    return;
}
function stack_push(x) {
    stk = slink(stk, x);
    return;
}
function stack_pop()(val) {
    if (DIFFER(stk)) {
        val = sval(stk);
        stk = snext(stk);
        return val;
    }
    freturn;
}
function stack_peek() {
    if (DIFFER(stk)) { return sval(stk); }
    freturn;
}
function stack_depth()(sd, n) {
    n = 0;
    sd = stk;
    while (DIFFER(sd)) {
        n = n + 1;
        sd = snext(sd);
    }
    return n;
}

// basic push/pop/depth
stack_init();
stack_push('a');
stack_push('b');
stack_push('c');
OUTPUT = stack_depth();
OUTPUT = stack_pop();
OUTPUT = stack_pop();
OUTPUT = stack_depth();
OUTPUT = stack_pop();
OUTPUT = stack_depth();

// empty stack freturn
if (stack_pop()) {
    OUTPUT = 'fail: empty pop should freturn';
} else {
    OUTPUT = 'empty ok';
}

// peek does not pop
stack_init();
stack_push('x');
OUTPUT = stack_peek();
OUTPUT = stack_depth();
OUTPUT = stack_pop();

// pop into named variable (use direct assignment)
stack_init();
stack_push(42);
stack_push(99);
myvar = stack_pop();
OUTPUT = myvar;

// push values from pattern match
stack_init();
subject = 'hello world';
if (subject ? BREAK(' ') . w1   LEN(1)   REM . w2) {
    stack_push(w1);
    stack_push(w2);
    OUTPUT = stack_pop();
    OUTPUT = stack_pop();
} else {
    OUTPUT = 'fail: pattern match failed';
}
/*----------------------------------------- 264 break_any_pos_replace_1 XFAIL */
// A15_lib_string.sc — string utilities: pad_left, pad_right, ltrim, rtrim, trimws,
//                      repeat, contains, startswith, endswith, index
// Snocone translation of crosscheck/library/test_string.sno + lib/string.sno
&TRIM = 1;

function pad_left(s, n, c) {
    if (IDENT(c, '')) { c = ' '; }
    if (GE(SIZE(s), n)) { return s; }
    return DUPL(c, n - SIZE(s))   s;
}
function pad_right(s, n, c) {
    if (IDENT(c, '')) { c = ' '; }
    if (GE(SIZE(s), n)) { return s; }
    return s   DUPL(c, n - SIZE(s));
}
function ltrim(s)(ws) {
    ws = ' ';
    while (GT(SIZE(s), 0)) {
        if (SUBSTR(s, 1, 1) ? ANY(ws)) {
            s = SUBSTR(s, 2);
        } else {
            break;
        }
    }
    return s;
}
function rtrim(s)(ws, i, ch) {
    ws = ' ';
    i = SIZE(s);
    while (GT(i, 0)) {
        ch = SUBSTR(s, i, 1);
        if (ch ? ANY(ws)) {
            i = i - 1;
        } else {
            break;
        }
    }
    return SUBSTR(s, 1, i);
}
function trimws(s) {
    return ltrim(rtrim(s));
}
function repeat(s, n) {
    return DUPL(s, n);
}
function contains(s, t) {
    if (s ? BREAK(t)   t) { return; } else { freturn; }
}
function startswith(s, t) {
    if (s ? POS(0)   t) { return; } else { freturn; }
}
function endswith(s, t) {
    if (s ? t   RPOS(0)) { return; } else { freturn; }
}
function index(s, t)(ix) {
    ix = s;
    if (ix ? BREAK(t) . ix) { return SIZE(ix) + 1; }
    return 0;
}

OUTPUT = pad_left('hi', 6, '*');
OUTPUT = pad_right('hi', 6, '*');
OUTPUT = ltrim('   hello');
OUTPUT = rtrim('hello   ');
OUTPUT = trimws('  hello  ');
OUTPUT = repeat('hi', 3);

if (contains('foobar', 'oba')) {
    OUTPUT = 'contains ok';
} else {
    OUTPUT = 'fail: contains';
}
if (startswith('foobar', 'foo')) {
    OUTPUT = 'startswith ok';
} else {
    OUTPUT = 'fail: startswith';
}
if (endswith('foobar', 'bar')) {
    OUTPUT = 'endswith ok';
} else {
    OUTPUT = 'fail: endswith';
}
if (startswith('foobar', 'bar')) {
    OUTPUT = 'fail: startswith matched wrong';
} else {
    OUTPUT = 'no startswith ok';
}
OUTPUT = index('foobar', 'oba');
OUTPUT = index('foobar', 'xyz');
