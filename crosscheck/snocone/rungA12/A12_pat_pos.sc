// A12_pat_pos.sc — POS anchors match at cursor position
X = 'hello';
if (X ? POS(0) && LEN(3) . V) {
    OUTPUT = V;
} else {
    OUTPUT = 'fail';
}
