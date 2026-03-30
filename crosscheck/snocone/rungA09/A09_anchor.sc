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
