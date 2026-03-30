// A12_pat_any.sc — ANY matches one character from set
X = 'hello';
if (X ? ANY('aeiou') . V) {
    OUTPUT = V;
} else {
    OUTPUT = 'no vowel';
}
