// A12_pat_rpos.sc — RPOS anchors match from right
x = 'hello';
if (x ? RPOS(2) && LEN(2) . v) {
    OUTPUT = v;
} else {
    OUTPUT = 'fail';
}
