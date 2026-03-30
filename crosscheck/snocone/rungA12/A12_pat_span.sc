// A12_pat_span.sc — SPAN matches longest run of chars in set
X = '12345abc';
if (X ? SPAN('0123456789') . V) {
    OUTPUT = V;
} else {
    OUTPUT = 'no digits';
}
