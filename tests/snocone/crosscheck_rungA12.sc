/*------------------------------------------------------------- 1 A12_pat_any */
// A12_pat_any.sc — ANY matches one character from set
x = 'hello';
if (x ? ANY('aeiou') . v) {
    OUTPUT = v;
} else {
    OUTPUT = 'no vowel';
}
/*----------------------------------------------------------- 2 A12_pat_break */
// A12_pat_break.sc — BREAK matches up to (not including) char in set
x = 'hello world';
if (x ? BREAK(' ') . v) {
    OUTPUT = v;
} else {
    OUTPUT = 'no space';
}
/*------------------------------------------------------------- 3 A12_pat_len */
// A12_pat_len.sc — LEN matches exactly N characters
x = 'abcdef';
if (x ? LEN(3) . v) {
    OUTPUT = v;
} else {
    OUTPUT = 'fail';
}
/*--------------------------------------------------------- 4 A12_pat_literal */
// A12_pat_literal.sc — literal pattern match
x = 'hello world';
if (x ? 'hello') {
    OUTPUT = 'matched';
} else {
    OUTPUT = 'no match';
}
/*---------------------------------------------------------- 5 A12_pat_notany */
// A12_pat_notany.sc — NOTANY matches one char NOT in set
x = 'hello';
if (x ? NOTANY('aeiou') . v) {
    OUTPUT = v;
} else {
    OUTPUT = 'all vowels';
}
/*------------------------------------------------------------- 6 A12_pat_pos */
// A12_pat_pos.sc — POS anchors match at cursor position
x = 'hello';
if (x ? POS(0)   LEN(3) . v) {
    OUTPUT = v;
} else {
    OUTPUT = 'fail';
}
/*------------------------------------------------------------ 7 A12_pat_rpos */
// A12_pat_rpos.sc — RPOS anchors match from right
x = 'hello';
if (x ? RPOS(2)   LEN(2) . v) {
    OUTPUT = v;
} else {
    OUTPUT = 'fail';
}
/*------------------------------------------------------------ 8 A12_pat_rtab */
// A12_pat_rtab.sc — RTAB leaves N chars from right
x = 'abcdef';
if (x ? RTAB(2) . v) {
    OUTPUT = v;
} else {
    OUTPUT = 'fail';
}
/*------------------------------------------------------------ 9 A12_pat_span */
// A12_pat_span.sc — SPAN matches longest run of chars in set
x = '12345abc';
if (x ? SPAN('0123456789') . v) {
    OUTPUT = v;
} else {
    OUTPUT = 'no digits';
}
/*------------------------------------------------------------ 10 A12_pat_tab */
// A12_pat_tab.sc — TAB advances cursor to column position
x = 'abcdef';
if (x ? TAB(3)   LEN(2) . v) {
    OUTPUT = v;
} else {
    OUTPUT = 'fail';
}
