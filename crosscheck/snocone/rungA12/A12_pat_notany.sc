// A12_pat_notany.sc — NOTANY matches one char NOT in set
X = 'hello';
if (X ? NOTANY('aeiou') . V) {
    OUTPUT = V;
} else {
    OUTPUT = 'all vowels';
}
