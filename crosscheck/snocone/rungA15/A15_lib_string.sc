// A15_lib_string.sc — string utilities: pad_left, pad_right, ltrim, rtrim, trimws,
//                      repeat, contains, startswith, endswith, index
// Snocone translation of crosscheck/library/test_string.sno + lib/string.sno
&TRIM = 1;

function pad_left(s, n, c) {
    if (IDENT(c, '')) { c = ' '; }
    if (GE(SIZE(s), n)) { return s; }
    return DUPL(c, n - SIZE(s))   s;
}
function pad_right(s, n, c) {
    if (IDENT(c, '')) { c = ' '; }
    if (GE(SIZE(s), n)) { return s; }
    return s   DUPL(c, n - SIZE(s));
}
function ltrim(s)(ws) {
    ws = ' ';
    while (GT(SIZE(s), 0)) {
        if (SUBSTR(s, 1, 1) ? ANY(ws)) {
            s = SUBSTR(s, 2);
        } else {
            break;
        }
    }
    return s;
}
function rtrim(s)(ws, i, ch) {
    ws = ' ';
    i = SIZE(s);
    while (GT(i, 0)) {
        ch = SUBSTR(s, i, 1);
        if (ch ? ANY(ws)) {
            i = i - 1;
        } else {
            break;
        }
    }
    return SUBSTR(s, 1, i);
}
function trimws(s) {
    return ltrim(rtrim(s));
}
function repeat(s, n) {
    return DUPL(s, n);
}
function contains(s, t) {
    if (s ? BREAK(t)   t) { return; } else { freturn; }
}
function startswith(s, t) {
    if (s ? POS(0)   t) { return; } else { freturn; }
}
function endswith(s, t) {
    if (s ? t   RPOS(0)) { return; } else { freturn; }
}
function index(s, t)(ix) {
    ix = s;
    if (ix ? BREAK(t) . ix) { return SIZE(ix) + 1; }
    return 0;
}

OUTPUT = pad_left('hi', 6, '*');
OUTPUT = pad_right('hi', 6, '*');
OUTPUT = ltrim('   hello');
OUTPUT = rtrim('hello   ');
OUTPUT = trimws('  hello  ');
OUTPUT = repeat('hi', 3);

if (contains('foobar', 'oba')) {
    OUTPUT = 'contains ok';
} else {
    OUTPUT = 'fail: contains';
}
if (startswith('foobar', 'foo')) {
    OUTPUT = 'startswith ok';
} else {
    OUTPUT = 'fail: startswith';
}
if (endswith('foobar', 'bar')) {
    OUTPUT = 'endswith ok';
} else {
    OUTPUT = 'fail: endswith';
}
if (startswith('foobar', 'bar')) {
    OUTPUT = 'fail: startswith matched wrong';
} else {
    OUTPUT = 'no startswith ok';
}
OUTPUT = index('foobar', 'oba');
OUTPUT = index('foobar', 'xyz');
