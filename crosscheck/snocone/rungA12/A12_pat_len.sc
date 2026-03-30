// A12_pat_len.sc — LEN matches exactly N characters
x = 'abcdef';
if (x ? LEN(3) . v) {
    OUTPUT = v;
} else {
    OUTPUT = 'fail';
}
