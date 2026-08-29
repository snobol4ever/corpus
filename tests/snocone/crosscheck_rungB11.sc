/*------------------------------------------------------- 1 B11_comment_block */
/* B11_comment_block: block comments are stripped in pre-pass */
x = /* inline block */ 99;
/* multi
   line
   block */
OUTPUT = x;
/*-------------------------------------------------------- 2 B11_comment_line */
// B11_comment_line: // comments are stripped before tokenisation
x = 42; // this is ignored
// entire line comment
OUTPUT = x; // trailing comment
/*------------------------------------------------------- 3 B11_comment_mixed */
// line comment at top
/* block at top */
a = 1; // trailing
b = /* mid-expr */ 2;
/* block
   spanning
   lines */
OUTPUT = a + b; // should print 3
