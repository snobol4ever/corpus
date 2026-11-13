function F(n, i, t) {
    if (DIFFER(n)) {
        if ('AP' ? (POS(0) (SPAN('AP') | '') RPOS(0))) t = 'y'; else t = 'q';
        OUTPUT = n t;
        i = 0;
        while (i = LT(i, n) i + 1) F(n - 1);
        return;
    }
    return;
}
F(2);
OUTPUT = 'after';
