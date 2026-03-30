// A12_pat_span.sc — SPAN matches longest run of chars in set
x = '12345abc';
if (x ? SPAN('0123456789') . v) {
    OUTPUT = v;
} else {
    OUTPUT = 'no digits';
}
