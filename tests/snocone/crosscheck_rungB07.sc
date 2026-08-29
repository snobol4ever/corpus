/*------------------------------------------------------- 1 B07_caret_assign */
// B07_caret_assign: x ^= n raises x to power n
x = 3;
x ^= 4;
OUTPUT = x;
/*----------------------------------------------------- 2 B07_compound_chain */
// B07_compound_chain: multiple compound assigns in sequence
x = 2;
x += 3;
x *= 4;
x -= 2;
OUTPUT = x;
/*------------------------------------------------------- 3 B07_minus_assign */
// B07_minus_assign: x -= n subtracts n from x
x = 20;
x -= 7;
OUTPUT = x;
/*-------------------------------------------------------- 4 B07_plus_assign */
// B07_plus_assign: x += n adds n to x
x = 10;
x += 5;
OUTPUT = x;
/*------------------------------------------------------- 5 B07_slash_assign */
// B07_slash_assign: x /= n divides x by n
x = 100;
x /= 4;
OUTPUT = x;
/*-------------------------------------------------------- 6 B07_star_assign */
// B07_star_assign: x *= n multiplies x by n
x = 6;
x *= 7;
OUTPUT = x;
/*----------------------------------------------- 7 B07_percent_assign XFAIL */
// B07_percent_assign: x %= n gives remainder
x = 17;
x %= 5;
OUTPUT = x;
