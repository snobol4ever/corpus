function GenTab(pos) {
    GenTab = .dummy;
    pos = IDENT(pos) 4;
    B = IDENT(B) X;
    if (~(B = B ' ' DUPL(' ', pos - SIZE(B) - 1)))
        B = B ' ';
    nreturn;
}
function Show(s) { Show = '[' s ']'; return; }
B = 'ab'; X = '';
GenTab(10); OUTPUT = Show(B);
B = 'abcdefghijkl'; X = '';
GenTab(3); OUTPUT = Show(B);
GenTab(); OUTPUT = Show(B);
OUTPUT = 'done';
