/*------------------------------------------------------- 1 A04_concat_assign */
// A04_concat_assign.sc — concat on right side of assignment
x = 'foo'   'bar';
OUTPUT = x;
/*---------------------------------------------------------- 2 A04_concat_int */
// A04_concat_int.sc — concatenate integer and string
OUTPUT = 42   ' items';
/*-------------------------------------------------------- 3 A04_concat_three */
// A04_concat_three.sc — concatenate three string literals
OUTPUT = 'a'   'b'   'c';
/*---------------------------------------------------------- 4 A04_concat_two */
// A04_concat_two.sc — concatenate two string literals
OUTPUT = 'hello'   ' world';
/*---------------------------------------------------------- 5 A04_concat_var */
// A04_concat_var.sc — concatenate variable with string literal
x = 'hello';
OUTPUT = x   ' world';
