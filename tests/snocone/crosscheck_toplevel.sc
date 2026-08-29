/*------------------------------------------------ 1 assign_009_assign_string */
// 009 - Assign string to variable, output it
x = 'hello';
OUTPUT = x;
/*----------------------------------------------- 2 assign_010_assign_integer */
// 010 - Assign integer to variable, output it
n = 42;
OUTPUT = n;
/*------------------------------------------------- 3 assign_011_assign_chain */
// 011 - Chain assignment x=a, y=x, output y
x = 'alpha';
y = x;
OUTPUT = y;
/*-------------------------------------------------- 4 assign_012_assign_null */
// 012 - Assign null (empty right side)
x = 'something';
x = '';
OUTPUT = x;
/*--------------------------------------------- 5 assign_013_assign_overwrite */
// 013 - Overwrite variable, output second value
x = 'first';
x = 'second';
OUTPUT = x;
/*--------------------------------------- 6 assign_014_assign_indirect_dollar */
// 014 - Indirect assignment via dollar
$'x' = 'hello';
OUTPUT = x;
/*------------------------------------------ 7 assign_015_assign_indirect_var */
// 015 - Indirect assignment via variable holding name
v = 'x';
$v = 'world';
OUTPUT = x;
/*--------------------------------------------- 8 assign_016_assign_to_output */
// 016 - Direct assignment to OUTPUT special variable
OUTPUT = 'alpha';
OUTPUT = 'beta';
/*------------------------------------------------------ 9 hello_empty_string */
// empty_string.sc - Output of null string produces blank line.
OUTPUT = '';
/*------------------------------------------------------------ 10 hello_hello */
// hello.sc - Minimal output test.
OUTPUT = 'hello world';
/*------------------------------------------------------------ 11 hello_multi */
// multi.sc - Multiple sequential output statements.
OUTPUT = 'line one';
OUTPUT = 'line two';
OUTPUT = 'line three';
/*--------------------------------------- 12 output_001_output_string_literal */
// 001 - Output a string literal
OUTPUT = 'hello world';
/*-------------------------------------- 13 output_002_output_integer_literal */
// 002 - Output an integer literal
OUTPUT = 42;
/*----------------------------------------- 14 output_003_output_real_literal */
// 003 - Output a real literal
OUTPUT = 3.14;
/*----------------------------------------- 15 output_004_output_empty_string */
// 004 - Output empty string produces blank line
OUTPUT = '';
/*-------------------------------------------- 16 output_005_output_multiline */
// 005 - Multiple output statements produce multiple lines
OUTPUT = 'line one';
OUTPUT = 'line two';
OUTPUT = 'line three';
/*------------------------------------- 17 output_006_output_keyword_alphabet */
// 006 - SIZE of &ALPHABET
OUTPUT = SIZE(&ALPHABET);
/*--------------------------------------------- 18 output_007_output_null_var */
// 007 - Uninitialized variable outputs empty line
OUTPUT = x;
/*---------------------------------------- 19 output_008_output_double_quoted */
// 008 - Double-quoted string literal
OUTPUT = "hello world";
