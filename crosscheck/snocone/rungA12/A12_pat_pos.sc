// A12_pat_pos.sc — POS anchors match at cursor position
x = 'hello';
if (x ? POS(0) && LEN(3) . v) {
    OUTPUT = v;
} else {
    OUTPUT = 'fail';
}
