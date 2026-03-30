// A12_pat_len.sc — LEN matches exactly N characters
X = 'abcdef';
if (X ? LEN(3) . V) {
    OUTPUT = V;
} else {
    OUTPUT = 'fail';
}
