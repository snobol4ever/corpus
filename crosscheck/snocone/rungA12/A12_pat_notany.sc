// A12_pat_notany.sc — NOTANY matches one char NOT in set
x = 'hello';
if (x ? NOTANY('aeiou') . v) {
    OUTPUT = v;
} else {
    OUTPUT = 'all vowels';
}
