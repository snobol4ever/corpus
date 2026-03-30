// A12_pat_tab.sc — TAB advances cursor to column position
x = 'abcdef';
if (x ? TAB(3) && LEN(2) . v) {
    OUTPUT = v;
} else {
    OUTPUT = 'fail';
}
