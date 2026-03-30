// A12_pat_break.sc — BREAK matches up to (not including) char in set
x = 'hello world';
if (x ? BREAK(' ') . v) {
    OUTPUT = v;
} else {
    OUTPUT = 'no space';
}
