// A12_pat_break.sc — BREAK matches up to (not including) char in set
X = 'hello world';
if (X ? BREAK(' ') . V) {
    OUTPUT = V;
} else {
    OUTPUT = 'no space';
}
