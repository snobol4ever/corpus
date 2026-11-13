struct tree { t, v, n, c }
function TD(x, i, t) {
    if (DIFFER(n(x))) {
        if (~(t(x) ? (POS(0) ANY(&UCASE) (SPAN(&UCASE) | '') RPOS(0)))) t = 'q'; else t = t(x);
        OUTPUT = '(' t;
        i = 0;
        while (i = LT(i, n(x)) i + 1) TD(c(x)[i]);
        OUTPUT = ')';
        return;
    }
    return;
}
a = tree('A', '', 0, ''); b = tree('B', '', 0, ''); p = tree('P', '', 2, ARRAY(2)); c(p)[1] = a; c(p)[2] = b;
TD(p);
OUTPUT = 'after';
