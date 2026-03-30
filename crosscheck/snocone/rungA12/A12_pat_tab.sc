// A12_pat_tab.sc — TAB advances cursor to column position
X = 'abcdef';
if (X ? TAB(3) && LEN(2) . V) {
    OUTPUT = V;
} else {
    OUTPUT = 'fail';
}
