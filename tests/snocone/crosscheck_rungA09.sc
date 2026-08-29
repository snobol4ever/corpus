/*-------------------------------------------------------------- 1 A09_anchor */
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
/*----------------------------------------------------------- 2 A09_dupl_size */
// A09_dupl_size.sc — DUPL + SIZE combination
x = DUPL('abc', 4);
OUTPUT = SIZE(x);
OUTPUT = x;
/*------------------------------------------------------------- 3 A09_lexical */
// A09_lexical.sc — Lexical string comparison builtins
if (LGT('b', 'a')) { OUTPUT = 'b > a'; }
if (LLT('a', 'b')) { OUTPUT = 'a < b'; }
if (LEQ('cat', 'cat')) { OUTPUT = 'cat = cat'; }
if (LNE('cat', 'dog')) { OUTPUT = 'cat != dog'; }
/*------------------------------------------------------- 4 A09_reverse_ucase */
// A09_reverse_ucase.sc — REVERSE + case keywords
OUTPUT = REVERSE('hello');
OUTPUT = REPLACE('hello', &LCASE, &UCASE);
/*---------------------------------------------------------------- 5 A09_stno */
// A09_stno.sc — &STNO increments per statement
x = 1;
x = 2;
if (GT(&STNO, 1)) {
    OUTPUT = 'stno ok';
} else {
    OUTPUT = 'wrong';
}
