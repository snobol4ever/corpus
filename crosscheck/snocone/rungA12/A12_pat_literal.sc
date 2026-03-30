// A12_pat_literal.sc — literal pattern match
x = 'hello world';
if (x ? 'hello') {
    OUTPUT = 'matched';
} else {
    OUTPUT = 'no match';
}
