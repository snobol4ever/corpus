// A07_ident.sc — IDENT succeeds when strings are equal
if (IDENT('abc', 'abc')) {
    OUTPUT = 'equal';
} else {
    OUTPUT = 'not equal';
}
if (IDENT('abc', 'xyz')) {
    OUTPUT = 'equal';
} else {
    OUTPUT = 'not equal';
}
