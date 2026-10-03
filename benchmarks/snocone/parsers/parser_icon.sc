&FULLSCAN = 1;
&MAXLNGTH = 16777216;
&ALPHABET ? (POS(0)  LEN(1) . nul);
&ALPHABET ? (POS(8)  LEN(1) . bs);
&ALPHABET ? (POS(9)  LEN(1) . ht);
&ALPHABET ? (POS(9)  LEN(1) . tab);
&ALPHABET ? (POS(10) LEN(1) . nl);
&ALPHABET ? (POS(10) LEN(1) . lf);
&ALPHABET ? (POS(11) LEN(1) . vt);
&ALPHABET ? (POS(12) LEN(1) . ff);
&ALPHABET ? (POS(13) LEN(1) . cr);
&ALPHABET ? (POS(47) LEN(1) . fSlash);
&ALPHABET ? (POS(59) LEN(1) . semicolon);
&ALPHABET ? (POS(92) LEN(1) . bSlash);
&ALPHABET ? (POS(0)                      LEN(128) . X0xxxxxxx);
&ALPHABET ? (POS(128)                    LEN(128) . X1xxxxxxx);
&ALPHABET ? (POS(128)                    LEN(64)  . X10xxxxxx);
&ALPHABET ? (POS(128 + 64)               LEN(32)  . X110xxxxx);
&ALPHABET ? (POS(128 + 64 + 32)          LEN(16)  . X1110xxxx);
&ALPHABET ? (POS(128 + 64 + 32 + 16)     LEN(8)   . X11110xxx);
&ALPHABET ? (POS(128 + 64 + 32 + 16 + 8) LEN(8)   . X11111xxx);
TRUE   = 1;
FALSE  = 0;
digits = '0123456789';
hex_digits = '0123456789abcdefABCDEF';
bin_digits = '01';
oct_digits = '01234567';
doDebug   = 0;
xTrace    = 0;
t8Max     = 0;
t8MaxLast = 0;
t8Map     = TABLE();
strOfs    = 0;
doParseTree = 0;
txOfs       = 0;
/* ==================================================================================================================== */
function lwr(s) {
    lwr = REPLACE(s, &UCASE, &LCASE);
    return;
}
/* ==================================================================================================================== */
function upr(s) {
    upr = REPLACE(s, &LCASE, &UCASE);
    return;
}
/* ==================================================================================================================== */
function cap(s) {
    if (~(cap = REPLACE(SUBSTR(s, 1, 1), &LCASE, &UCASE) REPLACE(SUBSTR(s, 2), &UCASE, &LCASE)))
        error();
    return;
}
/* ==================================================================================================================== */
function icase(str, letter, character) {
    while (~IDENT(str)) {
        if (str ? (POS(0) ANY(&UCASE &LCASE) . letter) = )
            icase = icase (upr(letter) | lwr(letter));
        else {
            str ? (POS(0) LEN(1) . character) = ;
            icase = icase character;
        }
    }
    return;
}
/* ==================================================================================================================== */
function assign(name, expression) {
    assign = .dummy;
    if (IDENT(DATATYPE(expression), 'EXPRESSION')) {
        $name = EVAL(expression);
        nreturn;
    }
    $name = expression;
    nreturn;
}
/* ==================================================================================================================== */
function match(subject, pattern) {
    match = .dummy;
    if (subject ? *pattern) nreturn;
    else freturn;
}
/* ==================================================================================================================== */
function notmatch(subject, pattern) {
    notmatch = .dummy;
    if (subject ? *pattern) freturn;
    else nreturn;
}
struct link_counter { next, value }
/* ==================================================================================================================== */
function InitCounter() {
    $'#N' = ;
    return;
}
/* ==================================================================================================================== */
function PushCounter() {
    OUTPUT = GT(xTrace, 4) 'PushCounter()';
    $'#N' = link_counter($'#N', 0);
    PushCounter = .dummy;
    nreturn;
}
/* ==================================================================================================================== */
function IncCounter() {
    value($'#N') = value($'#N') + 1;
    OUTPUT = GT(xTrace, 4) value($'#N') ' = IncCounter()';
    IncCounter = .dummy;
    nreturn;
}
/* ==================================================================================================================== */
function DecCounter() {
    value($'#N') = value($'#N') - 1;
    OUTPUT = GT(xTrace, 4) value($'#N') ' = DecCounter()';
    DecCounter = .dummy;
    nreturn;
}
/* ==================================================================================================================== */
function PopCounter() {
    OUTPUT = GT(xTrace, 4) 'PopCounter()';
    if (~($'#N' = DIFFER($'#N') next($'#N'))) { freturn; }
    PopCounter = .dummy;
    nreturn;
}
/* ==================================================================================================================== */
function TopCounter() {
    if (~(TopCounter = DIFFER($'#N') value($'#N'))) { freturn; }
    OUTPUT = GT(xTrace, 4) TopCounter ' = TopCounter()';
    return;
}
struct link_tag { next, value }
/* ==================================================================================================================== */
function InitBegTag() {
    $'@B' = ;
    return;
}
/* ==================================================================================================================== */
function PushBegTag(t) {
    OUTPUT = GT(xTrace, 4) 'PushBegTag(' upr(t) ')';
    $'@B' = link_tag($'@B', upr(t));
    if (PushBegTag = IDENT(t) .value($'@B')) { nreturn; }
    PushBegTag = DIFFER(t) .dummy;
    nreturn;
}
/* ==================================================================================================================== */
function PopBegTag() {
    OUTPUT = GT(xTrace, 4) (DIFFER($'@B') value($'@B'), 'FAIL') ' = PopBegTag()';
    if (~($'@B' = DIFFER($'@B') next($'@B'))) { freturn; }
    PopBegTag = .dummy;
    nreturn;
}
/* ==================================================================================================================== */
function TopBegTag() {
    if (~(TopBegTag = DIFFER($'@B') value($'@B'))) { freturn; }
    OUTPUT = GT(xTrace, 4) TopBegTag ' = TopBegTag()';
    return;
}
/* ==================================================================================================================== */
function DumpBegTag(b, list, v) {
    DumpBegTag = .dummy;
    if (~GT(xTrace, 5)) { nreturn; }
    b = $'@B';
    while (v = DIFFER(b) value(b)) {
        list = list (DIFFER(list) ', ', '') v;
        b = next(b);
    }
    OUTPUT = '@B = (' list ')';
    nreturn;
}
/* ==================================================================================================================== */
function InitEndTag() {
    $'@E' = ;
    return;
}
/* ==================================================================================================================== */
function PushEndTag(t) {
    OUTPUT = GT(xTrace, 4) 'PushEndTag(' upr(t) ')';
    $'@E' = link_tag($'@E', upr(t));
    if (PushEndTag = IDENT(t) .value($'@E')) { nreturn; }
    PushEndTag = DIFFER(t) .dummy;
    nreturn;
}
/* ==================================================================================================================== */
function PopEndTag() {
    OUTPUT = GT(xTrace, 4) (DIFFER($'@E') value($'@E'), 'FAIL') ' = PopEndTag()';
    if (~($'@E' = DIFFER($'@E') next($'@E'))) { freturn; }
    PopEndTag = .dummy;
    nreturn;
}
/* ==================================================================================================================== */
function TopEndTag() {
    if (~(TopEndTag = DIFFER($'@E') value($'@E'))) { freturn; }
    OUTPUT = GT(xTrace, 4) TopEndTag ' = TopEndTag()';
    return;
}
/* ==================================================================================================================== */
function DumpEndTag(e, list, v) {
    DumpEndTag = .dummy;
    if (~GT(xTrace, 5)) { nreturn; }
    e = $'@E';
    while (v = DIFFER(e) value(e)) {
        list = list (DIFFER(list) ', ', '') v;
        e = next(e);
    }
    OUTPUT = '@E = (' list ')';
    nreturn;
}
struct link_name { next, value }
/* ==================================================================================================================== */
function PushName(n) {
    $'#PN' = link_name($'#PN', n);
    PushName = .dummy;
    nreturn;
}
/* ==================================================================================================================== */
function TopName() {
    if (~(TopName = DIFFER($'#PN') value($'#PN'))) { freturn; }
    return;
}
/* ==================================================================================================================== */
function PopName() {
    if (~($'#PN' = DIFFER($'#PN') next($'#PN'))) { freturn; }
    PopName = .dummy;
    nreturn;
}
struct link { next, value }
/* ==================================================================================================================== */
function InitStack() {
    $'@S' = ;
    return;
}
/* ==================================================================================================================== */
function Push(x) {
    OUTPUT = GT(xTrace, 4) 'Push(' t(x) ')';
    $'@S' = link($'@S', x);
    if (Push = IDENT(x) .value($'@S')) { nreturn; }
    Push = DIFFER(x) .dummy;
    nreturn;
}
/* ==================================================================================================================== */
function Pop(var) {
    if (~DIFFER($'@S')) { freturn; }
    if (~IDENT(var)) { goto Pop1; }
    Pop = value($'@S');
    OUTPUT = GT(xTrace, 4) 'Pop() = ' t(Pop);
    $'@S' = next($'@S');
    return;
Pop1:
    Pop = .dummy;
    $var = value($'@S');
    OUTPUT = GT(xTrace, 4) 'Pop() = ' t($var);
    $'@S' = next($'@S');
    nreturn;
}
/* ==================================================================================================================== */
function Top() {
    if (~DIFFER($'@S')) { freturn; }
    Top = .value($'@S');
    OUTPUT = GT(xTrace, 4) 'Top() = ' t(Top);
    nreturn;
}
struct tree { t, v, n, c }
/* ==================================================================================================================== */
function Append(x, y) {
    Append = Insert(x, y, n(x) + 1);
    return;
}
/* ==================================================================================================================== */
function Prepend(x, y) {
    Prepend = Insert(x, y, 1);
    return;
}
/* ==================================================================================================================== */
function Insert(x, y, place, c, i) {
    Insert = x;
    c = ARRAY('1:' n(x) + 1);
    i = 0;
    while (i = LT(i, place - 1) i + 1) {
        c[i] = c(x)[i];
    }
    c[i + 1] = y;
    while (i = LT(i, n(x)) i + 1) {
        c[i + 1] = c(x)[i];
    }
    n(x) = n(x) + 1;
    c(x) = c;
    return;
}
/* ==================================================================================================================== */
function Remove(x, place, c, i) {
    Remove = x;
    c = GT(n(x) - 1, 0) ARRAY('1:' n(x) - 1);
    i = 0;
    while (i = LT(i, place - 1) i + 1) {
        c[i] = c(x)[i];
    }
    i = i + 1;
    while (i = LT(i, n(x)) i + 1) {
        c[i - 1] = c(x)[i];
    }
    n(x) = n(x) - 1;
    c(x) = c;
    return;
}
/* ==================================================================================================================== */
function Tree(t, v, n, c1, c2, c3, c4, c5, c6, c7, c8, i, nc) {
    nc = 8;
    while (nc = GT(nc, 0) IDENT($('c' nc)) nc - 1) {
        ;
    }
    Tree = tree(t, v,
                (GT(nc, 0) nc, NULL),
                (GT(nc, 0) ARRAY('1:' nc), NULL));
    i = 0;
    while (i = LT(i, nc) i + 1) {
        c(Tree)[i] = $('c' i);
    }
    return;
}
/* ==================================================================================================================== */
function Equal(x, y, i) {
    if (epsilon *IDENT(x) *IDENT(y)) { return; }
    if (~(epsilon *IDENT(x) | *IDENT(y))) { freturn; }
    if (~IDENT(t(x), t(y))) { freturn; }
    if (~IDENT(v(x), v(y))) { freturn; }
    if (~IDENT(n(x), n(y))) { freturn; }
    i = 0;
    while (i = LT(i, n(x)) i + 1) {
        if (~Equal(c(x)[i], c(y)[i])) { freturn; }
    }
    return;
}
/* ==================================================================================================================== */
function Equiv(x, y, i) {
    if (~(t(x) ? (POS(0) t(y) RPOS(0)))) { freturn; }
    if (~(v(x) ? (POS(0) v(y) RPOS(0)))) { freturn; }
    if (~(n(x) ? (POS(0) n(y) RPOS(0)))) { freturn; }
    i = 0;
    while (1) {
        i = i + 1;
        if (~(DIFFER(c(y)) c(y)[i])) { return; }
        if (~Equiv(c(x)[i], c(y)[i])) { freturn; }
    }
}
/* ==================================================================================================================== */
function Find(xn, y, f, i) {
    if (~DIFFER($xn)) { return; }
    if (Equiv($xn, y) APPLY(f, xn)) { return; }
    i = 0;
    while (i = LT(i, n($xn)) i + 1) {
        Find(.c($xn)[i], y, f);
    }
    return;
}
/* ==================================================================================================================== */
function Visit(x, fnc, i) {
    if (~APPLY(fnc, x)) { return; }
    i = 0;
    while (i = LT(i, n(x)) i + 1) {
        Visit(c(x)[i], fnc);
    }
    return;
}
/* ==================================================================================================================== */
function Shift(t, v, s) {
    v ? (POS(0) *whitespace) = ;
    s = tree(t, v);
    Push(s);
    OUTPUT = GT(xTrace, 3) 'Shift(' t ', ' v ')';
    if (Shift = IDENT(v) .v(s)) { nreturn; }
    Shift = DIFFER(v) .dummy;
    nreturn;
}
/* ==================================================================================================================== */
function Reduce(t, n, v, c, i, r) {
    Reduce = .dummy;
    if (IDENT(DATATYPE(t), 'EXPRESSION')) {
        if (~(t = EVAL(t))) { nreturn; }
    }
    if (IDENT(DATATYPE(n), 'EXPRESSION')) {
        if (~(n = EVAL(n))) { nreturn; }
    }
    OUTPUT = GT(xTrace, 3) 'Reduce(' t ', ' n ')';
    if (IDENT(n, 0)) {
        r = tree(t, v, 0);
        Push(r);
        nreturn;
    }
    c = ARRAY('1:' n);
    i = n + 1;
    while (i = GT(i, 1) i - 1) {
        c[i] = Pop();
    }
    r = tree(t, v, n, c);
    Push(r);
    nreturn;
}
/* ==================================================================================================================== */
/* A value a node will carry, held from the token that names it to the one Reduce that builds the node -- the pattern  */
/* recognises a call's name before its arguments, whose own actions run in between (the tree is built once, Lon 2026-09-30). */
struct link_val { next, value }
function PushVal(v) {
    $'#V' = link_val($'#V', v);
    PushVal = .dummy;
    nreturn;
}
function PopVal() {
    PopVal = value($'#V');
    $'#V' = next($'#V');
    return;
}
/* ==================================================================================================================== */
function TValue(x, i) {
    if (TValue = IDENT(t(x), 'TT_NUL') '(TT_NUL)')                           { return; }
    if (TValue = IDENT(t(x), 'TT_CUT') '(TT_CUT)')                           { return; }
    if (TValue = IDENT(t(x), 'TT_QLIT')     '(' t(x) ' "' CQize(v(x)) '")')      { return; }
    if (TValue = IDENT(t(x), 'TT_CSET')     '(' t(x) ' "' CQize(v(x)) '")')      { return; }
    if (IDENT(t(x), 'TT_FLIT')) {
        fval = '' CONVERT(v(x), 'REAL');
        fval ('.' BREAK('0') | '.') SPAN('0') . zeros;
        while (DIFFER(zeros)) {
            fval = REPLACE(fval, zeros, '');
            zeros = '';
            fval ('.' BREAK('0') | '.') SPAN('0') . zeros;
        }
        fval SPAN('0123456789' &UCASE &LCASE '+' '-') . pre;
        if (DIFFER(pre) IDENT(SIZE(pre) + 1, SIZE(fval))) fval = pre;
        TValue = '(' t(x) ' ' fval ')';
        return;
    }
    if (TValue = IDENT(t(x), 'float')      v(x))                   { return; }
    if (TValue = IDENT(t(x), 'integer')    v(x))                   { return; }
    if (TValue = IDENT(t(x), 'bool')       v(x))                   { return; }
    if (TValue = IDENT(t(x), 'datetime')   "'" SqlSQize(v(x)) "'") { return; }
    if (TValue = IDENT(t(x), 'character')  "'" SqlSQize(v(x)) "'") { return; }
    if (TValue = IDENT(t(x), 'string')     "'" SqlSQize(v(x)) "'") { return; }
    if (TValue = IDENT(t(x), 'identifier') v(x))                   { return; }
    if (DIFFER(v(x))) {
        if (t(x) ? (POS(0) ANY(&UCASE &LCASE) (SPAN(&UCASE &LCASE '0123456789' '_') | epsilon) RPOS(0))) {
            TValue = '(' t(x) ' ' v(x) ')';
            return;
        }
    }
    TValue = t(x);
    i = 0;
    while (i = LT(i, n(x)) i + 1) {
        TValue = TValue (DIFFER(TValue) '.', '') v(c(x)[i]);
    }
    return;
}
/* ==================================================================================================================== */
function TLump(x, len, i, t, sub) {
    if (~GT(len, 0)) { freturn; }
    if (TLump = IDENT(x) '()') { return; }
    if (~(t(x) ? (POS(0) ':'))) { goto TLump_normal; }
    if (~DIFFER(n(x))) {
        if (DIFFER(v(x))) {
            TLump = t(x) ' ' v(x);
        } else {
            TLump = t(x);
        }
        if (LE(SIZE(TLump), len)) { return; }
        freturn;
    }
    if (IDENT(n(x), 1)) {
        TLump = t(x) ' ';
        sub = TLump(c(x)[1], len - SIZE(TLump));
        if (~DIFFER(sub)) { freturn; }
        TLump = TLump sub;
        if (LE(SIZE(TLump), len)) { return; }
        freturn;
    }
    TLump = t(x) ' (';
    i = 0;
    while (i = LT(i, n(x)) i + 1) {
        sub = TLump(c(x)[i], len - SIZE(TLump) - 2);
        if (~DIFFER(sub)) { freturn; }
        TLump = TLump (GT(i, 1) ' ', '') sub;
    }
    TLump = TLump ')';
    if (LE(SIZE(TLump), len)) { return; }
    freturn;
TLump_normal:
    if (DIFFER(n(x))) { goto TLump0; }
    TLump = TValue(x);
    if (IDENT(TLump, t(x))) { goto TLump0; }
    if (LE(SIZE(TLump), len)) { return; }
    freturn;
TLump0:
    TLump = '(';
    if (t(x) ? (POS(0) ANY(&UCASE &LCASE) (SPAN('0123456789' &UCASE '_' &LCASE) | '') RPOS(0))) {
        t = t(x);
    } else {
        t = '"' t(x) '"';
    }
    TLump = TLump t;
    if (DIFFER(v(x))) {
        if (IDENT(t(x), 'TT_FLIT')) {
            fval = '' v(x);
            fval SPAN('0123456789') . pre;
            if (DIFFER(pre) IDENT(SIZE(pre) + 1, SIZE(fval))) fval = pre;
            TLump = TLump ' ' fval;
        } else {
            TLump = TLump ' ' v(x);
        }
    }
    i = 0;
    while (i = LT(i, n(x)) i + 1) {
        if (~(TLump = TLump ' ' TLump(c(x)[i], len - SIZE(TLump) - 2))) { freturn; }
    }
    TLump = TLump ')';
    return;
}
/* ==================================================================================================================== */
function TDump(x, outNm, i, t) {
    outNm = IDENT(outNm) .OUTPUT;
    x = IDENT(DATATYPE(x), 'NAME') $x;
    if (Gen(TLump(x, 140 - GetLevel()) nl, outNm)) return;
    if (DIFFER(n(x))) {
        if (t(x) ? (POS(0) ':')) {
            if (IDENT(n(x), 1)) {
                Gen(t(x) nl, outNm);
                IncLevel();
                TDump(c(x)[1], outNm);
                DecLevel();
                return;
            }
            Gen(t(x) ' (' nl, outNm);
            IncLevel();
            i = 0;
            while (i = LT(i, n(x)) i + 1)
                TDump(c(x)[i], outNm);
            DecLevel();
            Gen(')' nl, outNm);
            return;
        }
        if (~(t(x) ? (POS(0) ANY(&UCASE &LCASE)
                     (SPAN(&UCASE &LCASE '0123456789' '_') | epsilon) RPOS(0))))
            t = '"' t(x) '"';
        else
            t = t(x);
        if (DIFFER(v(x))) {
            Gen('(' t ' ' v(x) nl, outNm);
        } else {
            Gen('(' t nl, outNm);
        }
        IncLevel();
        i = 0;
        while (i = LT(i, n(x)) i + 1)
            TDump(c(x)[i], outNm);
        DecLevel();
        Gen(')' nl, outNm);
        return;
    }
    Gen(TValue(x) nl, outNm);
    return;
}
/* ==================================================================================================================== */
/* a real as C's printf %g prints it (ast_print.c: every TT_FLIT): 6 significant digits rounded half to even, trailing */
/* zeros dropped, the exponent form d.ddddde+XX when the decimal exponent is below -4 or at least 6. The value is scaled */
/* ONCE by an exact power of ten, so a tie such as 36524.25 stays a tie.                                                  */
function TreeDumpScale(a, k, p, n) {
    p = 1.0;
    n = (GE(k, 0) k, -k);
    while (GT(n, 0)) { p = p * 10.0; n = n - 1; }
    TreeDumpScale = (GE(k, 0) a * p, a / p);
    return;
}
function TreeDumpRound(s, m, f) {
    m = CONVERT(s, 'INTEGER');
    f = s - m;
    if (GT(f, 0.5)) { m = m + 1; }
    else if (EQ(f, 0.5)) { m = m + REMDR(m, 2); }
    TreeDumpRound = m;
    return;
}
function TreeDumpG(r, sg, a, t, x, m, ds, ip, fp) {
    if (EQ(r, 0)) { TreeDumpG = '0'; return; }
    sg = '';
    a = r;
    if (LT(r, 0)) { sg = '-'; a = -r; }
    t = a;
    x = 0;
    while (GE(t, 10.0)) { t = t / 10.0; x = x + 1; }
    while (LT(t, 1.0)) { t = t * 10.0; x = x - 1; }
    m = TreeDumpRound(TreeDumpScale(a, 5 - x));
    if (GE(m, 1000000)) { x = x + 1; m = TreeDumpRound(TreeDumpScale(a, 5 - x)); }
    if (LT(m, 100000)) { x = x - 1; m = TreeDumpRound(TreeDumpScale(a, 5 - x)); }
    ds = '' m;
    if (LT(x, -4)) { ip = SUBSTR(ds, 1, 1); fp = SUBSTR(ds, 2); }
    else if (GE(x, 6)) { ip = SUBSTR(ds, 1, 1); fp = SUBSTR(ds, 2); }
    else if (GE(x, 0)) { ip = SUBSTR(ds, 1, x + 1); fp = SUBSTR(ds, x + 2); }
    else { ip = '0'; fp = DUPL('0', -x - 1) ds; }
    fp ? (SPAN('0') RPOS(0)) = ;
    TreeDumpG = sg ip (DIFFER(fp) '.' fp, '');
    if (LT(x, -4)) { TreeDumpG = TreeDumpG 'e-' (LT(-x, 10) '0', '') (-x); return; }
    if (GE(x, 6)) { TreeDumpG = TreeDumpG 'e+' (LT(x, 10) '0', '') x; return; }
    return;
}
function TreeDumpValue(x, t, v, fval, zeros, pre, fsg, fwd) {
    t = t(x); v = v(x);
    if (t ? (POS(0) ('TT_QLIT' | 'TT_CSET') RPOS(0))) { v ? (BREAK(nul) . v); TreeDumpValue = ' "' CQize(v) '"'; return; }
    if (~DIFFER(v)) { TreeDumpValue = ; return; }
    if (IDENT(t, 'TT_FLIT')) { if (v ? (POS(0) (('-' | '') . fsg) BREAK('NI') (('NaN' | 'Inf') . fwd) RPOS(0))) { TreeDumpValue = ' ' fsg REPLACE(fwd, 'NaIf', 'naif'); return; } }
    if (IDENT(t, 'TT_FLIT')) { TreeDumpValue = ' ' TreeDumpG(CONVERT(v, 'REAL')); if (EQ(CONVERT(v, 'REAL'), 0) (v ? POS(0) '-')) { TreeDumpValue = ' -0'; } return; }
    TreeDumpValue = ' ' v;
    return;
}
/* ==================================================================================================================== */
function TreeDumpSkip(x) {
    if (~IDENT(t(x), 'TT_ATTR')) freturn;
    if (v(x) ? (POS(0) (':line' | ':lline' | ':file' | ':stno' | ':src') RPOS(0))) return;
    freturn;
}
/* ==================================================================================================================== */
function TreeDumpAt(x, level, outNm, i, line, kids) {
    x = IDENT(DATATYPE(x), 'NAME') $x;
    line = DUPL(' ', 2 * level) '(' t(x) TreeDumpValue(x);
    kids = 0;
    i = 0;
    while (i = LT(i, n(x)) i + 1) kids = (TreeDumpSkip(c(x)[i]) kids, kids + 1);
    if (~GT(kids, 0)) { TreeDumpPut(line ')', outNm); return; }
    TreeDumpPut(line, outNm);
    i = 0;
    while (i = LT(i, n(x)) i + 1) {
        if (~TreeDumpSkip(c(x)[i])) TreeDumpAt(c(x)[i], level + 1, outNm);
    }
    TreeDumpPut(DUPL(' ', 2 * level) ')', outNm);
    return;
}
/* ==================================================================================================================== */
/* PARSER_TREE_HASH=1 (Lon 2026-09-29 18:5x CDT: "hashing the output tree is what I meant. In memory. Then output the one number   */
/* per-test for comparison."): each line TreeDumpAt would print, and its newline, is folded into TreeHashH instead, byte by byte, */
/* h = (h * 256 + byte) mod (2^55 - 55) -- the same fold, over the same bytes, as out/parser_<lang> (src/tools/parser_main.c).   */
/* TreeDumpEnd prints the one number for the file and resets it; unset, TreeDumpPut prints the line and TreeDumpEnd does nothing. */
function TreeDumpPut(s, outNm, i, n) {
    if (~IDENT(TreeHashOn, '1')) { $outNm = s; return; }
    n = SIZE(s);
    i = 0;
    while (i = LT(i, n) i + 1) TreeHashH = REMDR(TreeHashH * 256 + TreeHashOrd[SUBSTR(s, i, 1)], TreeHashP);
    TreeHashH = REMDR(TreeHashH * 256 + 10, TreeHashP);
    return;
}
/* ==================================================================================================================== */
function TreeDumpEnd() {
    if (~IDENT(TreeHashOn, '1')) return;
    OUTPUT = TreeHashH;
    TreeHashH = 0;
    return;
}
/* ==================================================================================================================== */
function TreeDump(x, outNm) {
    outNm = IDENT(outNm) .OUTPUT;
    TreeDumpAt(x, 0, outNm);
    return;
}
TreeHashOn  = HOST(4, 'PARSER_TREE_HASH');
TreeHashP   = 36028797018963913;
TreeHashH   = 0;
TreeHashOrd = TABLE(257);
TreeHashI   = 0;
while (LT(TreeHashI, 256)) { TreeHashOrd[SUBSTR(&ALPHABET, TreeHashI + 1, 1)] = TreeHashI; TreeHashI = TreeHashI + 1; }
/* ==================================================================================================================== */
function IncLevel(delta) {
    IncLevel = .dummy;
    delta = IDENT(delta) 2;
    $'#L' = $'#L' + delta;
    nreturn;
}
/* ==================================================================================================================== */
function DecLevel(delta) {
    DecLevel = .dummy;
    delta = IDENT(delta) 2;
    $'#L' = $'#L' - delta;
    nreturn;
}
/* ==================================================================================================================== */
function SetLevel(level) {
    SetLevel = .dummy;
    $'#L' = level;
    nreturn;
}
/* ==================================================================================================================== */
function GetLevel() {
    GetLevel = $'#L';
    return;
}
indent = DUPL(' ', 120);
/* ==================================================================================================================== */
function Gen(str, outNm, ind, outline) {
    Gen = .dummy;
    outNm = IDENT(outNm) .OUTPUT;
    indent ? (GT($'#L', 0) LEN($'#L' - SIZE($'$X')) . ind);
    $'$B' = DIFFER($'$B') $'$B' str;
    $'$B' = IDENT($'$B') $'$X' ind str;
    if (~($'$B' ? (BREAK(nl) . outline nl REM . $'$B'))) nreturn;
    $'$X' = $'$C';
    $outNm = outline;
    while ($'$B' ? (BREAK(nl) . outline nl REM . $'$B'))
        $outNm = $'$C' ind outline;
    nreturn;
}
/* ==================================================================================================================== */
function GenTab(pos) {
    GenTab = .dummy;
    pos = IDENT(pos) $'#L';
    if (~($'$B' = $'$B' ' ' DUPL(' ', pos - SIZE($'$B') - 1)))
        $'$B' = $'$B' ' ';
    nreturn;
}
/* ==================================================================================================================== */
function GenSetCont(cont) {
    GenSetCont = .dummy;
    $'$X' = ;
    $'$C' = cont;
    nreturn;
}
QizeWierd = bSlash bs ff nl cr tab;
/* ==================================================================================================================== */
function Ucvt(hex2) {
    Ucvt = CHAR(INTEGER('0X' hex2));
    return;
}
/* ==================================================================================================================== */
function Qize(str, part) {
    if (Qize = IDENT(str) "''") return;
    while (1) {
        if (IDENT(str)) return;
        Qize = DIFFER(Qize) Qize ' ';
        if (str ? (POS(0)
                  (  bSlash . *assign(.part, *'bSlash')
                  |  bs     . *assign(.part, *'bs')
                  |  ff     . *assign(.part, *'ff')
                  |  nl     . *assign(.part, *'nl')
                  |  cr     . *assign(.part, *'cr')
                  |  tab    . *assign(.part, *'tab')
                  )) = ) {
            Qize = Qize part;
        } else if (str ? (POS(0)
                         (BREAK('"' "'" QizeWierd) '"' ARBNO(NOTANY("'" QizeWierd))) . part
                         RTAB(0) . str)) {
            Qize = Qize "'" part "'";
        } else if (str ? (POS(0)
                         (BREAK("'" '"' QizeWierd) "'" ARBNO(NOTANY('"' QizeWierd))) . part
                         RTAB(0) . str)) {
            Qize = Qize '"' part '"';
        } else if (str ? (POS(0) BREAK(QizeWierd) . part) = ) {
            Qize = Qize "'" part "'";
        } else if (str ? (POS(0) REM . part) = ) {
            Qize = Qize "'" part "'";
        } else {
            error();
        }
    }
}
/* ==================================================================================================================== */
function SQize(str, part) {
    while (1) {
        if (IDENT(str)) return;
        SQize = DIFFER(SQize) SQize ' ';
        if (str ? (POS(0) BREAK("'") . part "'") = ) {
            SQize = SQize "'" part "'" ' "' "'" '"';
        } else if (str ? (POS(0) REM . part) = ) {
            SQize = SQize "'" part "'";
        } else {
            error();
        }
    }
}
/* ==================================================================================================================== */
function DQize(str, part) {
    while (1) {
        if (IDENT(str)) return;
        DQize = DIFFER(DQize) DQize ' ';
        if (str ? (POS(0) BREAK('"') . part '"') = ) {
            DQize = DQize '"' part '"' " '" '"' "'";
        } else if (str ? (POS(0) REM . part) = ) {
            DQize = DQize '"' part '"';
        } else {
            error();
        }
    }
}
/* ==================================================================================================================== */
function SqlSQize(str, part) {
    while (1) {
        if (IDENT(str)) return;
        if (str ? (POS(0) BREAK("'") . part "'") = ) {
            SqlSQize = SqlSQize part "''";
        } else if (str ? (POS(0) REM . part) = ) {
            SqlSQize = SqlSQize part;
        } else {
            error();
        }
    }
}
CQize_ctrl32 = '';
CQize_ci     = 1;
while (LT(CQize_ci, 32)) {
    CQize_ctrl32 = CQize_ctrl32 CHAR(CQize_ci);
    CQize_ci = CQize_ci + 1;
}
/* ==================================================================================================================== */
function CQize_nibble(n, hdig, hx) {
    hdig = '0123456789abcdef';
    hdig ? (TAB(n) LEN(1) . hx);
    CQize_nibble = hx;
    return;
}
/* ==================================================================================================================== */
function CQize_xNN(ch, junk, pos, hi, lo) {
    CQize_ctrl32 ? (BREAK(ch) . junk);
    pos = SIZE(junk) + 1;
    hi  = pos / 16;
    lo  = pos - (hi * 16);
    CQize_xNN = '\x' CQize_nibble(hi) CQize_nibble(lo);
    return;
}
/* ==================================================================================================================== */
function CQize(str, part, ch) {
    while (1) {
        if (IDENT(str)) return;
        if (str ? (POS(0) BREAK(bSlash '"' nl cr tab CQize_ctrl32) . part) = ) {
            CQize = CQize part;
        }
        if (IDENT(str)) return;
        if (str ? (POS(0) LEN(1) . ch) = ) {
            if (IDENT(ch, bSlash))                           { CQize = CQize bSlash bSlash; }
            else if (IDENT(ch, '"'))                         { CQize = CQize bSlash '"'; }
            else if (IDENT(ch, nl))                          { CQize = CQize bSlash 'n'; }
            else if (IDENT(ch, cr))                          { CQize = CQize bSlash 'r'; }
            else if (IDENT(ch, tab))                         { CQize = CQize bSlash 't'; }
            else if (ch ? (POS(0) ANY(CQize_ctrl32) RPOS(0))) { CQize = CQize CQize_xNN(ch); }
            else                                             { CQize = CQize ch; }
        } else {
            error();
        }
    }
}
/* ==================================================================================================================== */
function Intize(qqstr, iq, qqdlm) {
    if (~(qqstr ? (POS(0) ("'" | '"') $ qqdlm
                   ARBNO(
                      bSlash
                      (  bSlash . *assign(.Intize, *(Intize bSlash))
                      |  '"'    . *assign(.Intize, *(Intize '"'))
                      |  "'"    . *assign(.Intize, *(Intize "'"))
                      |  'b'    . *assign(.Intize, *(Intize bs))
                      |  'f'    . *assign(.Intize, *(Intize ff))
                      |  'n'    . *assign(.Intize, *(Intize lf))
                      |  'r'    . *assign(.Intize, *(Intize cr))
                      |  't'    . *assign(.Intize, *(Intize tab))
                      |  'u'
                         (  '00' LEN(2) . iq . *assign(.Intize, *(Intize Ucvt(iq)))
                         |  LEN(4) . iq . *assign(.Intize, *(Intize bSlash 'u' iq))
                         )
                      )
                   |  BREAK(*(qqdlm bSlash)) . iq . *assign(.Intize, *(Intize iq))
                   )
                   *qqdlm RPOS(0))))
        freturn;
    return;
}
/* ==================================================================================================================== */
function Extize(str) {
    return;
}
/* ==================================================================================================================== */
function PushNameFrom(varname) {
    PushName($varname);
    PushNameFrom = .dummy;
    nreturn;
}
/* ==================================================================================================================== */
function nTop()  { nTop  = TopCounter();             return; }
/* ==================================================================================================================== */
function TV(lvl, pat, name, omega) {
    omega = EQ(doParseTree, FALSE) "pat";
    omega = EQ(doParseTree, TRUE)  "(pat ~ 'identifier')";
    omega = omega ' $ tx *LEQ(lwr(tx), "' lwr(name) '")';
    if (~(TV = TZ(lvl, name, EVAL(omega)))) error();
    return;
}
/* ==================================================================================================================== */
function TW(lvl, pat, name, omega) {
    omega = EQ(doParseTree, FALSE) "pat";
    omega = EQ(doParseTree, TRUE)  "(pat ~ 'identifier')";
    omega = omega " $ tx *LEQ(upr(tx), '" upr(name) "')";
    if (~(TW = TZ(lvl, name, EVAL(omega)))) error();
    return;
}
/* ==================================================================================================================== */
function TX(lvl, pat, name, omega) {
    omega = EQ(doParseTree, FALSE) "pat";
    omega = EQ(doParseTree, TRUE)  "(pat ~ 'identifier')";
    omega = omega " $ tx *LEQ(tx, '" name "')";
    if (~(TX = TZ(lvl, name, EVAL(omega)))) error();
    return;
}
/* ==================================================================================================================== */
function TY(lvl, name, pat, omega) {
    if (TY = LE(xTrace, 0) pat
                @txOfs $ *assign(.t8Max, *(GT(txOfs, t8Max) txOfs)))
        return;
    omega = "pat $ tz"
            " @txOfs"
            " $ *T8Trace(" lvl ", " Qize(name ': ') " tz, txOfs)";
    if (~(TY = EVAL(omega))) error();
    return;
}
/* ==================================================================================================================== */
function TZ(lvl, name, pat, omega) {
    if (TZ = LE(xTrace, 0) pat
                @txOfs $ *assign(.t8Max, *(GT(txOfs, t8Max) txOfs)))
        return;
    omega = "@txOfs $ *T8Trace(" lvl ", '?' " Qize(name) ", txOfs)"
            " pat $ tz"
            " @txOfs"
            " $ *T8Trace(" lvl ", " Qize(name ': ') " tz, txOfs)";
    if (~(TZ = EVAL(omega))) error();
    return;
}
t8MaxLast = 0;
/* ==================================================================================================================== */
function T8Trace(lvl, str, ofs, t8p) {
    T8Trace = .dummy;
    if (~GT(doDebug, 0)) nreturn;
    if (~LE(lvl, doDebug)) nreturn;
    if (~GT(doDebug, 1)) {
        if (str ? (POS(0) '?')) nreturn;
    } else {
        if (~(str ? (POS(0) '?') = '? '))
            str ? (POS(0)) = '  ';
    }
    t8p = T8Pos(strOfs + ofs, t8Map);
    if (~GE(t8MaxLine, 621)) nreturn;
    if (~(t8MaxLast = GE(t8Max, t8MaxLast) t8Max)) nreturn;
    OUTPUT = t8p str;
    nreturn;
}
/* ==================================================================================================================== */
function T8Pos(t8Ofs, t8Map, i) {
    if (T8Pos = IDENT(t8Map) LPAD(t8Ofs, 8)) return;
    i = +t8Ofs;
    t8Max = GT(t8Ofs, t8Max) +t8Ofs;
    while (i = IDENT(t8Map[i]) i - 1)
        ;
    t8Line = t8Map[i];
    t8Pos = t8Ofs - i + 1;
    i = +t8Max;
    while (i = IDENT(t8Map[i]) i - 1)
        ;
    t8MaxLine = t8Map[i];
    t8MaxPos = t8Max - i + 1;
    T8Pos = '(' LPAD(t8MaxLine, 5)
                ', ' LPAD(t8MaxPos, 3)
                ', ' LPAD(t8Line, 5)
                ', ' LPAD(t8Pos, 3)
                ')';
    return;
}
/* PST-ICN-SC ✅ 2026-05-19 — Expr11 pure shift/reduce; zero violations. */
/* ==================================================================================================================== */
/* a $directive ($define, $include, $ifdef ...) is a whole line and only at a line's start: $( $) $< $> are brackets */
white        =   (  SPAN(' ' CHAR(9))
                 |  CHAR(10) FENCE(SPAN(' ' CHAR(9)) | epsilon) FENCE('$' FENCE(SPAN(' ' CHAR(9)) | epsilon) ANY(&LCASE &UCASE) BREAK(CHAR(10)) | epsilon)
                 |  POS(0) FENCE(SPAN(' ' CHAR(9)) | epsilon) '$' FENCE(SPAN(' ' CHAR(9)) | epsilon) ANY(&LCASE &UCASE) BREAK(CHAR(10))
                 |  '#' BREAK(CHAR(10))
                 );
White        =   *white FENCE(*White | epsilon);
Gray         =   FENCE(*White | epsilon);
$' '         =   Gray;
$'  '        =   White;
Id           = ANY(&UCASE &LCASE '_') FENCE(SPAN('0123456789' &UCASE &LCASE '_') | epsilon);
reserved     = POS(0) ('break' | 'by' | 'case' | 'create' | 'default' | 'do' | 'else' | 'end' | 'every' | 'fail'
                     | 'global' | 'if' | 'initial' | 'invocable' | 'link' | 'local' | 'next' | 'not' | 'of'
                     | 'procedure' | 'record' | 'repeat' | 'return' | 'static' | 'suspend' | 'then' | 'to'
                     | 'until' | 'while') RPOS(0);
ResT         = TABLE(29);
ResT['break'] = 1; ResT['by'] = 1; ResT['case'] = 1; ResT['create'] = 1; ResT['default'] = 1; ResT['do'] = 1; ResT['else'] = 1; ResT['end'] = 1;
ResT['every'] = 1; ResT['fail'] = 1; ResT['global'] = 1; ResT['if'] = 1; ResT['initial'] = 1; ResT['invocable'] = 1; ResT['link'] = 1;
ResT['local'] = 1; ResT['next'] = 1; ResT['not'] = 1; ResT['of'] = 1; ResT['procedure'] = 1; ResT['record'] = 1; ResT['repeat'] = 1;
ResT['return'] = 1; ResT['static'] = 1; ResT['suspend'] = 1; ResT['then'] = 1; ResT['to'] = 1; ResT['until'] = 1; ResT['while'] = 1;
id_pat       = *Id $ tx *IDENT(ResT[tx]);
int_pat      = SPAN('0123456789') FENCE(ANY('rR') SPAN('0123456789' &UCASE &LCASE) | epsilon);
exp_part     = (('e' | 'E') ('+' | '-' | '') SPAN('0123456789'));
real_pat     = (( SPAN('0123456789') '.' (SPAN('0123456789') | '') | '.' SPAN('0123456789') ) (*exp_part | '')
               | SPAN('0123456789') *exp_part
               );
str_pat      = ('"' BREAK('"') . strbody '"');
cset_pat     = ("'" BREAK("'") . csetbody "'");
strchars     = ARBNO(NOTANY('"\_') | '\^' LEN(1) | '\' LEN(1) | '_' CHAR(10) FENCE(SPAN(' ' CHAR(9)) | epsilon) | '_');
csetchars    = ARBNO(NOTANY("'\_") | '\^' LEN(1) | '\' LEN(1) | '_' CHAR(10) FENCE(SPAN(' ' CHAR(9)) | epsilon) | '_');
/* a literal's value is its DECODED text, as the C lexer stores it (icon_lex.c scan_string/scan_cset, icn_esc_simple):   */
/* \x up to 2 hex digits, \^c control, up to 3 octal digits, the simple letters either case, any other char itself;   */
/* in a string (not a cset) an underscore ending the line continues it, the next line's leading blanks dropped.       */
IcnEscT = TABLE(32);
IcnEscT['b'] = bs;  IcnEscT['B'] = bs;  IcnEscT['d'] = CHAR(127); IcnEscT['D'] = CHAR(127); IcnEscT['e'] = CHAR(27); IcnEscT['E'] = CHAR(27);
IcnEscT['f'] = ff;  IcnEscT['F'] = ff;  IcnEscT['l'] = nl; IcnEscT['L'] = nl; IcnEscT['n'] = nl; IcnEscT['N'] = nl;
IcnEscT['r'] = cr;  IcnEscT['R'] = cr;  IcnEscT['t'] = tab; IcnEscT['T'] = tab; IcnEscT['v'] = vt; IcnEscT['V'] = vt;
IcnEscT['8'] = bs;  IcnEscT['9'] = tab;
function IcnDigits(d, base, v, c) {
    v = 0;
    while (d ? (POS(0) LEN(1) . c) = ) {
        hex_digits ? (BREAK(c) . c);
        v = v * base + (GT(SIZE(c), 15) SIZE(c) - 6, SIZE(c));
    }
    IcnDigits = v;
    return;
}
/* an integer literal's value as the C lexer computes it (icon_lex.c scan_number): decimal, or <radix>r<digits> with   */
/* 0-9 a-z A-Z as digit values; past 9223372036854775807 it is a large integer, TT_FNC (TT_VAR integer) (TT_QLIT text). */
IcnDigV = TABLE(64);
IcnDigI = 0;
while (IcnDigI = LT(IcnDigI, 36) IcnDigI + 1) {
    IcnDigV[SUBSTR('0123456789abcdefghijklmnopqrstuvwxyz', IcnDigI, 1)] = IcnDigI - 1;
    IcnDigV[SUBSTR('0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ', IcnDigI, 1)] = IcnDigI - 1;
}
function IcnIntLit(x, radix, ds, txt, val, big, c, d) {
    IcnIntLit = .dummy;
    radix = 10; ds = x; txt = x;
    if (x ? (POS(0) SPAN(digits) . radix ANY('rR') REM . ds)) { radix = radix + 0; txt = radix 'r' ds; }
    val = 0; big = 0;
    while (ds ? (POS(0) LEN(1) . c) = ) {
        d = IcnDigV[c];
        if (EQ(big, 0)) {
            if (GT(val, (9223372036854775807 - d) / radix)) { big = 1; }
            else { val = val * radix + d; }
        }
    }
    if (EQ(big, 0)) { Shift('TT_ILIT', '' val); nreturn; }
    Shift('TT_VAR', 'integer');
    Shift('TT_QLIT', txt);
    Reduce('TT_FNC', 2);
    nreturn;
}
function IcnUnesc(s, cset, out, part, e, d, c) {
    if (~(s ? BREAK(bSlash '_'))) { IcnUnesc = s; return; }
    out = '';
    while (s ? (POS(0) BREAK(bSlash '_') . part LEN(1) . e) = ) {
        out = out part;
        if (IDENT(e, '_')) {
            if (DIFFER(cset)) { out = out '_'; }
            else if (s ? (POS(0) (cr | '') nl (SPAN(' ' tab) | '')) = ) { out = out; }
            else { out = out '_'; }
        } else if (s ? (POS(0) 'x' ((ANY(hex_digits) (ANY(hex_digits) | '')) | '') . d) = ) {
            out = out CHAR(IcnDigits(d, 16));
        } else if (s ? (POS(0) '^' LEN(1) . c) = ) {
            &ALPHABET ? (BREAK(c) . d);
            out = out CHAR(REMDR(SIZE(d), 32));
        } else if (s ? (POS(0) (ANY(oct_digits) (ANY(oct_digits) (ANY(oct_digits) | '') | '')) . d) = ) {
            out = out CHAR(REMDR(IcnDigits(d, 8), 256));
        } else if (s ? (POS(0) LEN(1) . c) = ) {
            d = IcnEscT[c];
            out = out (DIFFER(d) d, c);
        }
    }
    IcnUnesc = out s;
    return;
}
semi_opt     = FENCE(';' | epsilon);
$'if'        =  *$' ' *Id $ tx *IDENT(tx, 'if')       ;
$'then'      =  *$' ' *Id $ tx *IDENT(tx, 'then')     ;
$'else'      =  *$' ' *Id $ tx *IDENT(tx, 'else')     ;
$'while'     =  *$' ' *Id $ tx *IDENT(tx, 'while')    ;
$'do'        =  *$' ' *Id $ tx *IDENT(tx, 'do')       ;
$'every'     =  *$' ' *Id $ tx *IDENT(tx, 'every')    ;
$'return'    =  *$' ' *Id $ tx *IDENT(tx, 'return')   ;
$'end'       =  *$' ' *Id $ tx *IDENT(tx, 'end')      ;
$'procedure' =  *$' ' *Id $ tx *IDENT(tx, 'procedure');
$'until'     =  *$' ' *Id $ tx *IDENT(tx, 'until')    ;
$'repeat'    =  *$' ' *Id $ tx *IDENT(tx, 'repeat')   ;
$'break'     =  *$' ' *Id $ tx *IDENT(tx, 'break')    ;
$'next'      =  *$' ' *Id $ tx *IDENT(tx, 'next')     ;
$'case'      =  *$' ' *Id $ tx *IDENT(tx, 'case')     ;
$'of'        =  *$' ' *Id $ tx *IDENT(tx, 'of')       ;
$'default'   =  *$' ' *Id $ tx *IDENT(tx, 'default')  ;
$'to'        =  *$' ' *Id $ tx *IDENT(tx, 'to')       ;
$'by'        =  *$' ' *Id $ tx *IDENT(tx, 'by')       ;
$'global'    =  *$' ' *Id $ tx *IDENT(tx, 'global')   ;
$'local'     =  *$' ' *Id $ tx *IDENT(tx, 'local')    ;
$'static'    =  *$' ' *Id $ tx *IDENT(tx, 'static')   ;
$'record'    =  *$' ' *Id $ tx *IDENT(tx, 'record')   ;
$'initial'   =  *$' ' *Id $ tx *IDENT(tx, 'initial')  ;
$'suspend'   =  *$' ' *Id $ tx *IDENT(tx, 'suspend')  ;
$'fail'      =  *$' ' *Id $ tx *IDENT(tx, 'fail')     ;
$'not'       =  *$' ' *Id $ tx *IDENT(tx, 'not')      ;
$'create'    =  *$' ' *Id $ tx *IDENT(tx, 'create')   ;
$'link'      =  *$' ' *Id $ tx *IDENT(tx, 'link')     ;
$'invocable' =  *$' ' *Id $ tx *IDENT(tx, 'invocable');
$'('        =   *$' ' '(' *$' ';
$'['        =   *$' ' ('[' | '$<') *$' ';
$'{'        =   *$' ' ('{' | '$(') *$' ';
$')'        =   *$' ' ')';
$']'        =   *$' ' (']' | '$>');
$'}'        =   *$' ' ('}' | '$)');
$','        =   *$' ' ','   *$' ';
$';'        =   *$' ' ';'   *$' ';
$':'        =   *$' ' ':'   *$' ';
$'.'        =   *$' ' '.'   *$' ';
$'|||'      =   *$' ' '|||'   *$' ';
$'||'       =   *$' ' '||'    *$' ';
$'|'        =   *$' ' '|'     *$' ';
$'++'       =   *$' ' '++'    *$' ';
$'--'       =   *$' ' '--'    *$' ';
$'**'       =   *$' ' '**'    *$' ';
$'+'        =   *$' ' '+'     *$' ';
$'-'        =   *$' ' '-'     *$' ';
$'*'        =   *$' ' '*'     *$' ';
$'/'        =   *$' ' '/'     *$' ';
$'%'        =   *$' ' '%'     *$' ';
$'^'        =   *$' ' '^'     *$' ';
$'?'        =   *$' ' '?'     *$' ';
$'~'        =   *$' ' '~'     *$' ';
$'!'        =   *$' ' '!'     *$' ';
$'@'        =   *$' ' '@'     *$' ';
$'&'        =   *$' ' '&'     *$' ';
$'\\'      =   *$' ' '\'     *$' ';
$'~==='     =   *$' ' '~==='  *$' ';
$'~=='      =   *$' ' '~=='   *$' ';
$'~='       =   *$' ' '~='    *$' ';
$'==='      =   *$' ' '==='   *$' ';
$'=='       =   *$' ' '=='    *$' ';
$'='        =   *$' ' '='     *$' ';
$'<='       =   *$' ' '<='    *$' ';
$'>='       =   *$' ' '>='    *$' ';
$'<<='      =   *$' ' '<<='   *$' ';
$'<<'       =   *$' ' '<<'    *$' ';
$'>>='      =   *$' ' '>>='   *$' ';
$'>>'       =   *$' ' '>>'    *$' ';
$'<'        =   *$' ' '<' @lt_a FENCE(ANY('-=<') | epsilon) @lt_b *EQ(lt_a, lt_b) *$' ';
$'>'        =   *$' ' '>' @gt_a FENCE(ANY('=>')  | epsilon) @gt_b *EQ(gt_a, gt_b)  *$' ';
$':=:'      =   *$' ' ':=:'   *$' ';
$':='       =   *$' ' ':='    *$' ';
$'+:'       =   *$' ' '+:'    *$' ';
$'-:'       =   *$' ' '-:'    *$' ';
$'<->'      =   *$' ' '<->'   *$' ';
$'<-'       =   *$' ' '<-'    *$' ';
$'~==:='    =   *$' ' '~==:=' *$' ';
$'~=:='     =   *$' ' '~=:='  *$' ';
$'<<=:='    =   *$' ' '<<=:=' *$' ';
$'<<:='     =   *$' ' '<<:='  *$' ';
$'>>=:='    =   *$' ' '>>=:=' *$' ';
$'>>:='     =   *$' ' '>>:='  *$' ';
$'==:='     =   *$' ' '==:='  *$' ';
$'<=:='     =   *$' ' '<=:='  *$' ';
$'>=:='     =   *$' ' '>=:='  *$' ';
$'<:='      =   *$' ' '<:='   *$' ';
$'>:='      =   *$' ' '>:='   *$' ';
$'+:='      =   *$' ' '+:='   *$' ';
$'-:='      =   *$' ' '-:='   *$' ';
$'*:='      =   *$' ' '*:='   *$' ';
$'/:='      =   *$' ' '/:='   *$' ';
$'%:='      =   *$' ' '%:='   *$' ';
$'^:='      =   *$' ' '^:='   *$' ';
$'||:='     =   *$' ' '||:='  *$' ';
$'++:='     =   *$' ' '++:='  *$' ';
$'--:='     =   *$' ' '--:='  *$' ';
$'**:='     =   *$' ' '**:='  *$' ';
$'?:='      =   *$' ' '?:='   *$' ';
$'=:='      =   *$' ' '=:='   *$' ';
$'@:='      =   *$' ' '@:='   *$' ';
$'&:='      =   *$' ' '&:='   *$' ';
$'|||:='    =   *$' ' '|||:=' *$' ';
$'~===:='   =   *$' ' '~===:=' *$' ';
$'===:='    =   *$' ' '===:=' *$' ';
/* ==================================================================================================================== */
/* Leaf-push helpers: allowed by PST rules — set v.sval/v.dval from token capture, no child inspection. */
/* ==================================================================================================================== */
If     = ( *$'if' *If_rest );
If_rest          = (      *$'  ' *Expr  *$'then' *$' ' *Expr
           (  *$'else' *$' ' *Expr  . *Reduce('TT_IF', 3)
           |  epsilon . *Reduce('TT_IF', 2)
           )
         );
While  = ( *$'while' *While_rest );
While_rest       = (   *$'  ' *Expr
           (  *$'do' *$' ' *Expr  . *Reduce('TT_WHILE', 2)
           |  epsilon . *Reduce('TT_WHILE', 1)
           )
         );
Until  = ( *$'until' *Until_rest );
Until_rest       = (   *$'  ' *Expr
           (  *$'do' *$' ' *Expr  . *Reduce('TT_UNTIL', 2)
           |  epsilon . *Reduce('TT_UNTIL', 1)
           )
         );
Every  = ( *$'every' *Every_rest );
Every_rest       = (   *$' ' *Expr
           (  *$'do' *$' ' *Expr  . *Reduce('TT_EVERY', 2)
           |  epsilon . *Reduce('TT_EVERY', 1)
           )
         );
Repeat = ( *$'repeat' *Repeat_rest );
Repeat_rest      = (  *$' ' *Expr  . *Reduce('TT_REPEAT', 1) );
Create = ( *$'create' *Create_rest );
Create_rest      = (  *$' ' *Expr  . *Reduce('TT_CREATE', 1) );
ArgFirst  = ( *$' ' *Expr  . *IncCounter() );
/* an omitted argument f(a, , b) is &null, the C frontend's own leaf                                */
ArgRest   = ( *$',' (*Expr | epsilon . *Shift('TT_VAR', '&null')) . *IncCounter() );
NullFirst = ( *$' ' . *Shift('TT_VAR', '&null') . *IncCounter() *ArgRest );
CallArgs  = ( *ArgFirst ARBNO(*ArgRest) | *NullFirst ARBNO(*ArgRest) | epsilon );
Call      = ( epsilon . *PushCounter()
              *$' ' (*id_pat) . thx . *Shift('TT_VAR', thx)  . *IncCounter()
              *$'(' *CallArgs *$')'
              . *Reduce('TT_FNC', nTop())
              . *PopCounter()
            );
SeqRest   = ( *$';' *Expr  . *IncCounter() );
ConjRest  = ( *$',' (*Expr | epsilon . *Reduce('TT_NUL', 0)) . *IncCounter() );
/* (e1, e2) is mutual evaluation, TT_CONJ; (e1; e2) a sequence.                                */
Paren     = ( epsilon . *PushCounter()
              ( *$' ' *$'(' *Expr  . *IncCounter()
                ( *ConjRest ARBNO(*ConjRest) . *Reduce('TT_CONJ', nTop())
                | ARBNO(*SeqRest) . *Reduce('TT_SEQ_EXPR', *(GT(nTop(), 1) nTop()))
                )
                *$')'
              | *$' ' *$'(' *$')' . *Reduce('TT_SEQ_EXPR', 0)
              | *$' ' *$'(' . *Reduce('TT_NUL', 0) . *IncCounter() *ConjRest ARBNO(*ConjRest) . *Reduce('TT_CONJ', nTop()) *$')'
              )
              . *PopCounter()
            );
/* { s1; s2 } is C's parse_block_or_expr: each statement may take one trailing ';', a bare ';' is the leaf &null, and */
/* when the token before '}' is a ';' one more &null closes the block; {} is an empty TT_SEQ_EXPR, one item stands alone. */
/* The ';' is tracked by the deferred actions themselves (IcnSemi), which run in match order, inner blocks first.         */
function IcnSemi(f) { icnSemiFlag = f; IcnSemi = .dummy; nreturn; }
function IcnBlockEnd() {
    IcnBlockEnd = .dummy;
    if (IDENT(icnSemiFlag, 1)) { Shift('TT_VAR', '&null'); IncCounter(); }
    nreturn;
}
CompoundItem  = FENCE( *$' ' *$';' . *Shift('TT_VAR', '&null') . *IncCounter() . *IcnSemi(1)
                     | *$' ' *Expr . *IncCounter() *$' ' FENCE( *$';' . *IcnSemi(1) | epsilon . *IcnSemi(0) ) );
CompoundItems = FENCE( *CompoundItem *CompoundItems | epsilon );
Compound      = ( epsilon . *PushCounter()
                  *$'{'
                  ( *$' ' *$'}' | epsilon . *IcnSemi(0) *CompoundItems *$' ' *$'}' . *IcnBlockEnd() )
                  . *Reduce('TT_SEQ_EXPR', *(DIFFER(nTop(), 1) nTop()))
                  . *PopCounter()
                );
ListFirst = ( *$' ' *Expr  . *IncCounter() );
ListRest  = ( *$',' (*Expr | epsilon . *Shift('TT_NUL', '')) . *IncCounter() );
NullListFirst = ( *$' ' . *Shift('TT_NUL', '') . *IncCounter() *ListRest );
ListCtor  = ( epsilon . *PushCounter()
              *$' ' *$'['
              ( *ListFirst ARBNO(*ListRest) | *NullListFirst ARBNO(*ListRest) | epsilon )
              *$']'
              . *Reduce('TT_MAKELIST', nTop())
              . *PopCounter()
            );
/* FieldTail: shift field name as TT_VAR (source order: object already on stack below),
   then reduce('TT_FIELD', 2) gives children [object, TT_VAR(name)] in source order. */
FieldTail   = ( *$'.' (*id_pat) . thx . *Shift('TT_VAR', thx) . *Reduce('TT_FIELD', 2) );
/* any primary may be invoked: (!p)(), 1(a, b), f(x) -- the callee is already on the stack.    */
IdxStar     = FENCE( *$',' *Expr . *IncCounter() *IdxStar | epsilon );
/* f{e1, e2} invokes f with a list of co-expressions: TT_FNC(f, TT_MAKELIST(TT_CREATE e1, ...))      */
CoArg       = ( *$' ' *Expr . *Reduce('TT_CREATE', 1) . *IncCounter() );
Expr11tail  = ( epsilon . *PushCounter() *$'(' *CallArgs *$')' . *Reduce('TT_FNC', nTop() + 1) . *PopCounter()
              | epsilon . *PushCounter() *$'{' ( *CoArg ARBNO(*$',' *CoArg) | epsilon ) *$'}' . *Reduce('TT_MAKELIST', nTop()) . *Reduce('TT_FNC', 2) . *PopCounter()
              | epsilon . *PushCounter() . *IncCounter() *$'['
                ( *Expr . *IncCounter()
                  FENCE( *$' ' ('+:' *$' ' *Expr *$']' . *Reduce('TT_SECTION_PLUS', 3)
                       | '-:' *$' ' *Expr *$']' . *Reduce('TT_SECTION_MINUS', 3)
                       | ':' *$' '  *Expr *$']' . *Reduce('TT_SECTION', 3)
                       ) | *IdxStar *$']'   . *Reduce('TT_IDX', nTop())
                       )
                | epsilon . *Shift('TT_VAR', '&null') . *IncCounter() *$']' . *Reduce('TT_IDX', nTop())
                )
                . *PopCounter()
              | *FieldTail
              );
/* the blanks inside a case take the greedy form too: each clause sits in a FENCE, so a shortest-first  */
/* CaseGray that stopped before ` ;` could never be re-entered to take it                                */
CaseGray     = (*White | epsilon);
CaseClause   = ( *CaseGray *Expr *CaseGray *$':' *Expr *CaseGray . *IncCounter() . *IncCounter() );
CaseDefault  = ( *CaseGray *$'default' . *Reduce('TT_NUL', 0) . *IncCounter() *CaseGray *$':' *Expr *CaseGray . *IncCounter() );
CaseItem     = FENCE(*CaseDefault | *CaseClause);
CaseTail     = ( *$';' *CaseItem *CaseTail | epsilon );
Case         = ( *$'case' *Case_rest );
Case_rest        = ( epsilon . *PushCounter()
                  *$' ' *Expr  . *IncCounter()
                 *$'of' *CaseGray *$'{' *CaseGray
                 FENCE( *CaseItem *CaseTail | epsilon )
                 *CaseGray *$'}'
                 . *Reduce('TT_CASE', nTop())
                 . *PopCounter()
               );
/* return and suspend are expressions too (a | return b): DEFERRED, because they are defined below   */
/* and a by-value reference here would be the empty pattern, which matches everywhere (measured)     */
break_rest   = FENCE( SPAN(' ' CHAR(9)) *Expr . *Reduce('TT_LOOP_BREAK', 1) | *$' ' . *Reduce('TT_LOOP_BREAK', 0) );
next_rest    = *$' '  . *Reduce('TT_LOOP_NEXT', 0);
fail_rest    = *$' '  . *Reduce('TT_PROC_FAIL', 0);
KwT          = TABLE(12);
kw_expr      = *$' ' *Id $ tx *DIFFER(KwT[tx]) *KwT[tx];
Expr11 = (   *kw_expr
         |   *ListCtor
         |   *Call  |  *Paren  |  *Compound
         |   *$' ' "'" (*csetchars) . thx . *Shift('TT_CSET', IcnUnesc(thx, 1)) "'"
         |   *$' ' '"' (*strchars) . thx . *Shift('TT_QLIT', IcnUnesc(thx)) '"'
         |   *$' ' (*real_pat) . thx . *Shift('TT_FLIT', thx)
         |   *$' ' (*int_pat) . thx . *IcnIntLit(thx)
         |   *$' ' ('&' *Id) . thx . *Shift('TT_VAR', thx)
         |   *$' ' (*id_pat) . thx . *Shift('TT_VAR', thx)
         );
Expr10 = (   *$' ' ('-' *$' '        *Expr10 . *Reduce('TT_MNS', 1)
         |   '+' *$' '        *Expr10 . *Reduce('TT_PLS', 1)
         |   '~' *$' '        *Expr10 . *Reduce('TT_CSET_COMPL', 1)
         ) |   *$'\\'       *Expr10 . *Reduce('TT_NONNULL', 1)
         |   *$' ' ('!' *$' '        *Expr10 . *Reduce('TT_ITERATE', 1)
         |   '*' *$' '        *Expr10 . *Reduce('TT_SIZE', 1)
         |   '?' *$' '        *Expr10 . *Reduce('TT_RANDOM', 1)
         |   '/' *$' '        *Expr10 . *Reduce('TT_NULL', 1)
         |   '=' . *Shift('TT_VAR', 'tab') . *Shift('TT_VAR', 'match') *$' ' *Expr10 . *Reduce('TT_FNC', 2) . *Reduce('TT_FNC', 2)
         ) |   *$'not' *$' ' *Expr10 . *Reduce('TT_NOT', 1)
         |   *$' ' ('|' *$' '        *Expr10 . *Reduce('TT_REPALT', 1)
         |   '@' *$' '        *Expr10 . *Reduce('TT_ACTIVATE', 1)
         |   '^' *$' ' . *PushCounter() . *Shift('TT_VAR', 'ICN$REFRESH') . *IncCounter() *Expr10 . *IncCounter() . *Reduce('TT_FNC', nTop()) . *PopCounter()
         ) |   *Expr11  *Expr11rest
         |   *$'.'        *Expr10 . *Reduce('TT_DEREF', 1)
         );
Expr11rest = FENCE(*Expr11tail *Expr11rest | epsilon);
Expr9tail = FENCE( *$'\\' *Expr10 . *Reduce('TT_LIMIT', 2)
                 | *$' ' ('!' *$' '  *Expr10 . *Reduce('TT_BANG_BINARY', 2)
                 | '@' *$' '  *Expr10 . *Reduce('TT_ACTIVATE', 2)
                 ));
Expr9     = ( *Expr10 *Expr9rest );
Expr9rest = FENCE(*Expr9tail *Expr9rest | epsilon);
Expr8     = ( *Expr9 FENCE(*$'^' *Expr8 . *Reduce('TT_POW', 2) | epsilon) );
Expr7tail = FENCE( *$' ' ('**' *$' ' *Expr8 . *Reduce('TT_CSET_INTER', 2)
                 | '*' *$' '  *Expr8 . *Reduce('TT_MUL', 2)
                 | '/' *$' '  *Expr8 . *Reduce('TT_DIV', 2)
                 | '%' *$' '  *Expr8 . *Reduce('TT_MOD', 2)
                 ));
Expr7     = ( *Expr8 *Expr7rest );
Expr7rest = FENCE(*Expr7tail *Expr7rest | epsilon);
Expr6tail = FENCE( *$' ' ('++' *$' ' *Expr7 . *Reduce('TT_CSET_UNION', 2)
                 | '--' *$' ' *Expr7 . *Reduce('TT_CSET_DIFF', 2)
                 | '+' *$' '  *Expr7 . *Reduce('TT_ADD', 2)
                 | '-' *$' '  *Expr7 . *Reduce('TT_SUB', 2)
                 ));
Expr6     = ( *Expr7 *Expr6rest );
Expr6rest = FENCE(*Expr6tail *Expr6rest | epsilon);
Expr5tail = FENCE( *$' ' ('|||' *$' ' *Expr6 . *Reduce('TT_LCONCAT', 2) | '||' *$' ' *Expr6 . *Reduce('TT_CAT', 2) ));
Expr5     = ( *Expr6 *Expr5rest );
Expr5rest = FENCE(*Expr5tail *Expr5rest | epsilon);
Expr4tail = FENCE( *$' ' ('<<=' *$' '  *Expr5 . *Reduce('TT_LLE', 2) | '<<' *$' '   *Expr5 . *Reduce('TT_LLT', 2)
                 | '>>=' *$' '  *Expr5 . *Reduce('TT_LGE', 2) | '>>' *$' '   *Expr5 . *Reduce('TT_LGT', 2)
                 | '~===' *$' ' *Expr5 . *Reduce('TT_NIDENTICAL', 2)
                 | '~==' *$' '  *Expr5 . *Reduce('TT_LNE', 2)
                 | '===' *$' '  *Expr5 . *Reduce('TT_IDENTICAL', 2)
                 | '==' *$' '   *Expr5 . *Reduce('TT_LEQ', 2)
                 | '<=' *$' '   *Expr5 . *Reduce('TT_LE', 2) | '>=' *$' '   *Expr5 . *Reduce('TT_GE', 2)
                 | '~=' *$' '   *Expr5 . *Reduce('TT_NE', 2) ) | *$'<'    *Expr5 . *Reduce('TT_LT', 2)
                 | *$'>'    *Expr5 . *Reduce('TT_GT', 2) | *$'='    *Expr5 . *Reduce('TT_EQ', 2)
                 );
Expr4     = ( *Expr5 *Expr4rest );
Expr4rest = FENCE(*Expr4tail *Expr4rest | epsilon);
X3        = ( epsilon . *IncCounter() *Expr4 FENCE(*$'|' *X3 | epsilon) );
Expr3     = ( epsilon . *PushCounter() *X3 . *Reduce('TT_ALTERNATE', *(GT(nTop(), 1) nTop())) . *PopCounter() );
ToStar    = FENCE(  *$'to' *$'  ' *Expr3
                    FENCE( *$'by' *$'  ' *Expr3 . *Reduce('TT_TO_BY', 3)
                         | epsilon . *Reduce('TT_TO', 2)
                         )
                    *ToStar
                 |  epsilon
                 );
Expr2     = ( *Expr3 *ToStar );
Expr1     = ( *Expr2
              FENCE(
                  *$' ' ('|||:=' *$' ' *Expr1 . *Reduce('TT_AUGOP', 2, 'TT_LCONCAT')
              |   '~===:=' *$' ' *Expr1 . *Reduce('TT_AUGOP', 2, 'TT_NIDENTICAL')
              |   '===:=' *$' ' *Expr1 . *Reduce('TT_AUGOP', 2, 'TT_IDENTICAL')
              |   '<<=:=' *$' ' *Expr1 . *Reduce('TT_AUGOP', 2, 'TT_LLE')
              |   '>>=:=' *$' ' *Expr1 . *Reduce('TT_AUGOP', 2, 'TT_LGE')
              |   '~==:=' *$' ' *Expr1 . *Reduce('TT_AUGOP', 2, 'TT_LNE')
              |   '<=:=' *$' '  *Expr1 . *Reduce('TT_AUGOP', 2, 'TT_LE')
              |   '>=:=' *$' '  *Expr1 . *Reduce('TT_AUGOP', 2, 'TT_GE')
              |   '~=:=' *$' '  *Expr1 . *Reduce('TT_AUGOP', 2, 'TT_NE')
              |   '==:=' *$' '  *Expr1 . *Reduce('TT_AUGOP', 2, 'TT_LEQ')
              |   '<<:=' *$' '  *Expr1 . *Reduce('TT_AUGOP', 2, 'TT_LLT')
              |   '>>:=' *$' '  *Expr1 . *Reduce('TT_AUGOP', 2, 'TT_LGT')
              |   '||:=' *$' '  *Expr1 . *Reduce('TT_AUGOP', 2, 'TT_CAT')
              |   '++:=' *$' '  *Expr1 . *Reduce('TT_AUGOP', 2, 'TT_CSET_UNION')
              |   '--:=' *$' '  *Expr1 . *Reduce('TT_AUGOP', 2, 'TT_CSET_DIFF')
              |   '**:=' *$' '  *Expr1 . *Reduce('TT_AUGOP', 2, 'TT_CSET_INTER')
              |   '+:=' *$' '   *Expr1 . *Reduce('TT_AUGOP', 2, 'TT_ADD')
              |   '-:=' *$' '   *Expr1 . *Reduce('TT_AUGOP', 2, 'TT_SUB')
              |   '*:=' *$' '   *Expr1 . *Reduce('TT_AUGOP', 2, 'TT_MUL')
              |   '/:=' *$' '   *Expr1 . *Reduce('TT_AUGOP', 2, 'TT_DIV')
              |   '%:=' *$' '   *Expr1 . *Reduce('TT_AUGOP', 2, 'TT_MOD')
              |   '^:=' *$' '   *Expr1 . *Reduce('TT_AUGOP', 2, 'TT_POW')
              |   '?:=' *$' '   *Expr1 . *Reduce('TT_AUGOP', 2)
              |   '=:=' *$' '   *Expr1 . *Reduce('TT_AUGOP', 2, 'TT_EQ')
              |   '@:=' *$' '   *Expr1 . *Reduce('TT_AUGOP', 2, 'TT_ACTIVATE')
              |   '&:=' *$' '   *Expr1 . *Reduce('TT_AUGOP', 2, 'TT_CONJ')
              |   '<:=' *$' '   *Expr1 . *Reduce('TT_AUGOP', 2, 'TT_LT')
              |   '>:=' *$' '   *Expr1 . *Reduce('TT_AUGOP', 2, 'TT_GT')
              |   ':=:' *$' '   *Expr1 . *Reduce('TT_SWAP', 2)
              |   '<->' *$' '   *Expr1 . *Reduce('TT_REVSWAP', 2)
              |   '<-' *$' '    *Expr1 . *Reduce('TT_REVASSIGN', 2)
              |   ':=' *$' '    *Expr1 . *Reduce('TT_ASSIGN', 2)
              ) |   epsilon
              )
            );
ReturnExpr  = ( *$'return' *ReturnExpr_rest );
ReturnExpr_rest  = ( epsilon . *PushCounter()
                 *$' ' *Expr . *IncCounter()  . *Reduce('TT_RETURN', 1) . *PopCounter()
              |  *$' '                   . *Reduce('TT_RETURN', 0)
              );
SuspendExpr = ( *$'suspend' *SuspendExpr_rest );
SuspendExpr_rest = ( epsilon . *PushCounter()
                (  *$' ' *Expr . *IncCounter()
                  FENCE( *$'do' *$'  ' *Expr . *IncCounter() | epsilon )
                |  *$' ' . *Shift('TT_VAR', '&null') . *IncCounter()
                )
                . *Reduce('TT_SUSPEND', nTop()) . *PopCounter()
              );
Expr1a    = ( *Expr1 FENCE(*$'?' *Expr1a . *Reduce('TT_SCAN', 2) | epsilon) );
ExprSeqRest = ( *$'&' ( *ReturnExpr | *SuspendExpr | *Expr1a ) . *IncCounter() );
ExprSeqStar = FENCE(*ExprSeqRest *ExprSeqStar | epsilon);
Expr        = ( epsilon . *PushCounter()
                ( *ReturnExpr | *SuspendExpr
                | *Expr1a
                )
                . *IncCounter() *ExprSeqStar . *Reduce('TT_CONJ', *(GT(nTop(), 1) nTop())) . *PopCounter()
              );
Blank     = ( *$' ' );
ReturnStmt = ( *$'return' *$' ' *Expr *$' ' *$';' *$' ' . *Reduce('TT_RETURN', 1)
             | *$'return' *$' '  *$';' *$' '             . *Reduce('TT_RETURN', 0)
             );
DeclFirst  = ( *$' ' (*id_pat) . thx . *Shift('TT_VAR', thx) . *IncCounter() );
DeclRest   = ( *$','  (*id_pat) . thx . *Shift('TT_VAR', thx) . *IncCounter() );
DeclStar   = FENCE(*DeclRest *DeclStar | epsilon);
DeclIds    = ( *DeclFirst *DeclStar );
/* LocalDecl: collect var names, reduce to TT_LOCAL node, push bare (no STMT wrap). */
LocalDecl  = ( epsilon . *PushCounter() *$'local'  *$'  ' *DeclIds *$' ' *$';' *$' ' . *Reduce('TT_LOCAL', nTop()) . *PopCounter() );
StaticDecl = ( epsilon . *PushCounter() *$'static' *$'  ' *DeclIds *$' ' *$';' *$' ' . *Reduce('TT_STATIC_DECL', nTop()) . *PopCounter() );
InitialStmt = ( epsilon . *PushCounter() *$'initial' *$' ' *Expr . *IncCounter() *$' ' *$';' *$' '
                . *Reduce('TT_INITIAL', nTop())
                . *PopCounter()
              );
SuspendStmt = ( epsilon . *PushCounter()
                ( *$'suspend' *$' ' *Expr . *IncCounter()
                  FENCE( *$'do' *$'  ' *Expr . *IncCounter() | epsilon )
                | *$'suspend' *$' ' . *Shift('TT_VAR', '&null') . *IncCounter()
                )
                *$' ' *$';' *$' '
                . *Reduce('TT_SUSPEND', nTop()) . *PopCounter()
              );
FailStmt    = ( *$'fail'    *$' '         *$';' *$' '      . *Reduce('TT_PROC_FAIL', 0) );
StmtBody  = ( *LocalDecl . *IncCounter()
            | *StaticDecl . *IncCounter()
            | *InitialStmt . *IncCounter()
            | *ReturnStmt . *IncCounter()
            | *SuspendStmt . *IncCounter()
            | *FailStmt . *IncCounter()
            | *$' ' *Expr *$' ' *$';' *$' ' . *IncCounter()
            );
ParamFirst = ( *$' ' (*id_pat) . thx . *Shift('TT_VAR', thx)  . *IncCounter() );
ParamRest  = ( *$',' (*id_pat) . thx . *Shift('TT_VAR', thx)  . *IncCounter() );
Params     = ( *ParamFirst ARBNO(*ParamRest) FENCE(*$'[' *$']' | epsilon) | epsilon );
Prochead   = ( *$'procedure' *$'  ' (*id_pat) . icnProcNm . *Shift('TT_VAR', icnProcNm)  . *IncCounter()
               *$'(' epsilon . *PushCounter() *Params *$')' . *Reduce('TT_VLIST', nTop()) . *PopCounter() . *IncCounter() *$' ' *semi_opt *$' '
             );
ProcbodyEnd = ( *$'end' *$' ' (*$' ' | RPOS(0)) );
/* a statement, once matched, is never re-matched when a later one refuses: the refusal is linear  */
Procbody    = ( *ProcbodyEnd | FENCE(*StmtBody) *Procbody );
/* Proc: the C frontend's shape -- TT_PROC_DECL <name> (TT_VAR name) (TT_VLIST params) (TT_PROGRAM stmts), in TT_ATTR :subj, in TT_STMT. */
Proc        = ( epsilon . *PushCounter()  *Prochead  epsilon . *PushCounter() *Procbody . *Reduce('TT_PROGRAM', nTop()) . *PopCounter() . *IncCounter()
                . *Reduce('TT_PROC_DECL', nTop(), icnProcNm) . *Reduce('TT_ATTR', 1, ':subj') . *Reduce('TT_STMT', 1)
                . *PopCounter() FLUSH
              );
/* GlobalDecl: collect var names; reduce to TT_GLOBAL; wrap in TT_ATTR :subj then TT_STMT. */
GlobalDecl = ( epsilon . *PushCounter() *$'global' *$'  ' *DeclIds *$' ' *semi_opt *$' '
               . *Reduce('TT_GLOBAL', nTop()) . *Reduce('TT_ATTR', 1, ':subj') . *Reduce('TT_STMT', 1)
               . *PopCounter()
             );
RecordField = ( *$',' (*id_pat) . thx . *Shift('TT_VAR', thx) . *IncCounter() );
/* Record: the C frontend's shape -- TT_RECORD <name> with the fields as children; wrap in TT_ATTR :subj then TT_STMT. */
Record      = ( epsilon . *PushCounter()
                *$'record' *$'  ' (*id_pat) . icnRecNm
                *$'(' ( *$' ' (*id_pat) . thx . *Shift('TT_VAR', thx) . *IncCounter() ARBNO(*RecordField) | epsilon ) *$')'
                *$' '
                . *Reduce('TT_RECORD', nTop(), icnRecNm) . *Reduce('TT_ATTR', 1, ':subj') . *Reduce('TT_STMT', 1)
                . *PopCounter()
              );
KwT['if'] = If_rest; KwT['until'] = Until_rest; KwT['while'] = While_rest; KwT['every'] = Every_rest; KwT['repeat'] = Repeat_rest;
KwT['case'] = Case_rest; KwT['create'] = Create_rest; KwT['return'] = ReturnExpr_rest; KwT['suspend'] = SuspendExpr_rest;
KwT['break'] = break_rest; KwT['next'] = next_rest; KwT['fail'] = fail_rest;
/* link a, "b" and invocable all, "+": names as TT_VAR leaves, a quoted name too (the C frontend's shape). */
LinkName    = ( ( *$' ' '"' (BREAK('"')) . thx . *Shift('TT_VAR', thx) '"' | *$' ' (*id_pat) . thx . *Shift('TT_VAR', thx) ) FENCE(*$':' SPAN('0123456789') | epsilon) . *IncCounter() );
LinkStar    = FENCE( *$',' *LinkName *LinkStar | epsilon );
LinkDecl    = ( epsilon . *PushCounter() *$'link' *$'  ' *LinkName *LinkStar *$' ' *semi_opt *$' '
                . *Reduce('TT_LINK', nTop()) . *Reduce('TT_ATTR', 1, ':subj') . *Reduce('TT_STMT', 1)
                . *PopCounter()
              );
InvocableDecl = ( epsilon . *PushCounter() *$'invocable' *$'  ' *LinkName *LinkStar *$' ' *semi_opt *$' '
                . *Reduce('TT_INVOCABLE', nTop()) . *Reduce('TT_ATTR', 1, ':subj') . *Reduce('TT_STMT', 1)
                . *PopCounter()
              );
TopStar   = FENCE( epsilon . *IncCounter() *$' ' (*GlobalDecl | *Record | *Proc | *LinkDecl | *InvocableDecl) FLUSH *$' ' *TopStar | epsilon );
Compiland = ( epsilon . *PushCounter()
              POS(0) *$' ' *TopStar RPOS(0)
              . *Reduce('Parse', nTop())
              . *PopCounter()
            );
function ParseOne(ptree, i, n_kids) {
    pf_a = TIME();
    InitCounter();
    InitStack();
    if (Src ? *Compiland) {
        ptree = Pop();
        pf_parse = pf_parse + (TIME() - pf_a);
        if (DIFFER(ptree)) {
            i = 1;
            n_kids = n(ptree);
            while (LE(i, n_kids)) {
                TreeDump(c(ptree)[i]);
                i = i + 1;
            }
            TreeDumpEnd();
        } else OUTPUT = 'Parse Error';
    } else { pf_parse = pf_parse + (TIME() - pf_a); OUTPUT = 'Parse Error'; }
    return;
}
pf_list = HOST(4, 'PARSER_FILES');
if (IDENT(pf_list)) {
    INPUT(.INPUT, 9, '[-f0 -r16777215]');
    Src = INPUT;
    ParseOne();
} else {
    pf_n = 0;
    pf_bytes = 0;
    pf_parse = 0;
    pf_parse1 = 0;
    INPUT(.pf_names, 8, pf_list);
    while (pf_name = pf_names) {
        INPUT(.INPUT, 9, pf_name '[-r16777215]');
        Src = INPUT;
        ENDFILE(9);
        pf_bytes = pf_bytes + SIZE(Src);
        OUTPUT = '== ' pf_name;
        ParseOne();
        pf_n = pf_n + 1;
        if (EQ(pf_n, 1)) { pf_parse1 = pf_parse; }
    }
    TERMINAL = 'PARSER-METRICS files=' pf_n ' bytes=' pf_bytes ' parse_first_us=' pf_parse1 / 1000 ' parse_us=' pf_parse / 1000;
}

function ParseKernel(ZPN) {
    ZPI = 0;
ZPBL:
    InitCounter();
    InitStack();
    if (Src ? *Compiland) { ZPT = Pop(); }
    if (ZPI = LT(ZPI, ZPN) ZPI + 1) goto ZPBL;
    ParseKernel = ZPI;
    return;
}
// *BENCH kernel=ParseKernel check=1 bud=1000 flr=20
