// A09_anchor.sc — &ANCHOR=1 forces match at position 0
&ANCHOR = 1;
X = 'hello world';
if (X ? 'hello') {
    OUTPUT = 'anchored match ok';
} else {
    OUTPUT = 'wrong';
}
if (X ? 'world') {
    OUTPUT = 'should not reach';
} else {
    OUTPUT = 'anchor prevented mid-string match';
}
