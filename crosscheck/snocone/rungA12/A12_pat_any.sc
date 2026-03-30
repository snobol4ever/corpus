// A12_pat_any.sc — ANY matches one character from set
x = 'hello';
if (x ? ANY('aeiou') . v) {
    OUTPUT = v;
} else {
    OUTPUT = 'no vowel';
}
