// A12_pat_rpos.sc — RPOS anchors match from right
X = 'hello';
if (X ? RPOS(2) && LEN(2) . V) {
    OUTPUT = V;
} else {
    OUTPUT = 'fail';
}
