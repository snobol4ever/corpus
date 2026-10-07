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
/* parser_pascal.sc — the seventh self-hosted parser: ISO 7185 Pascal in Snocone.
   Written 2026-09-16 by hq_snocone on Lon's order (CEO-770 row: all seven parser_*.sc
   parse their language's corpus into a proper tree_t with proper TT_* types).
   Shapes are NOT invented: every node kind and arity below was read off the C
   frontend's own `scrip --dump-ast` for a Pascal program, which Lon named as the
   comparison oracle for this row.
   ⛔ ONE NAMED DIVERGENCE FROM THAT ORACLE, and it is a property of the ORACLE, not a
   gap in this file: for Pascal the C frontend's --dump-ast is a LOWERED tree, not a
   pure parse tree.  It rewrites `a mod b` into TT_MOD(TT_ADD(TT_MOD(a,b),b),b) to force
   the non-negative Pascal remainder.  That rewrite DUPLICATES its right operand three
   times, and this library has no subtree-copy primitive (tree.sc offers Append,
   Prepend, Insert, Remove, Tree, Equal, Equiv, Find, Visit — no Copy), so it is not
   expressible in the shift/reduce idiom every other parser here is written in.  This
   file therefore emits the FAITHFUL TT_MOD(a,b) and a tree-diff against the C frontend
   will show exactly that one shape.  The other rewrites ARE reproduced below because
   they are fixed-arity and need no duplication.
   The rewrites reproduced, each read off the oracle:
     a and b   -> TT_MUL(a, b)              a or b  -> TT_ADD(a, b)
     not a     -> TT_EQ(a, TT_ILIT 0)       true    -> TT_EQ(TT_ILIT 1, TT_ILIT 1)
     a / b     -> TT_DIV(TT_MUL(a, TT_FLIT 1), b)   false -> TT_EQ(TT_ILIT 0, TT_ILIT 1)
     +a        -> a  (unary plus is elided by the oracle, no node)
   Runtime chain (same as every other parser_*.sc): global, case, assign, match, counter,
   stack, tree, ShiftReduce, tdump, gen, qize, semantic, omega, trace.
   ⛔ Pascal identifiers and keywords are CASE-INSENSITIVE, unlike every other language
   in this directory, so every keyword matcher folds through lwr() from case.sc. */
&FULLSCAN = 1;
reserved          = POS(0) ( 'and' | 'array' | 'begin' | 'case' | 'const' | 'div'
                           | 'do' | 'downto' | 'else' | 'end' | 'file' | 'for'
                           | 'function' | 'goto' | 'if' | 'in' | 'label' | 'mod'
                           | 'nil' | 'not' | 'of' | 'or' | 'packed' | 'procedure'
                           | 'program' | 'record' | 'repeat' | 'set' | 'then'
                           | 'to' | 'type' | 'until' | 'var' | 'while' | 'with' ) RPOS(0);
/* ==================================================================================================================== */
/* Lexical layer.  Pascal has TWO comment forms and neither nests; a CR is blank (CRLF files). */
white       =   (  SPAN(' ' CHAR(9) CHAR(10) CHAR(13))
                |  '{' BREAK('}') '}'
                |  '(*' FENCE(BREAKX('*') '*)')
                );
White       =   *white FENCE(*White | epsilon);
Gray        =   FENCE(*White | epsilon);
$'  '       =   White;
$' '        =   Gray;
Id          =   ANY(&UCASE &LCASE '_') FENCE(SPAN('0123456789' &UCASE '_' &LCASE) | epsilon);
$'and'      =   *$' ' *Id $ tx *IDENT(lwr(tx), 'and')       *$' ';
$'begin'    =   *$' ' *Id $ tx *IDENT(lwr(tx), 'begin')     *$' ';
$'div'      =   *$' ' *Id $ tx *IDENT(lwr(tx), 'div')       *$' ';
$'do'       =   *$' ' *Id $ tx *IDENT(lwr(tx), 'do')        *$' ';
$'downto'   =   *$' ' *Id $ tx *IDENT(lwr(tx), 'downto')    *$' ';
$'else'     =   *$' ' *Id $ tx *IDENT(lwr(tx), 'else')      *$' ';
$'end'      =   *$' ' *Id $ tx *IDENT(lwr(tx), 'end')       *$' ';
$'false'    =   *$' ' *Id $ tx *IDENT(lwr(tx), 'false')     *$' ';
$'for'      =   *$' ' *Id $ tx *IDENT(lwr(tx), 'for')       *$' ';
$'function' =   *$' ' *Id $ tx *IDENT(lwr(tx), 'function')  *$' ';
$'if'       =   *$' ' *Id $ tx *IDENT(lwr(tx), 'if')        *$' ';
$'mod'      =   *$' ' *Id $ tx *IDENT(lwr(tx), 'mod')       *$' ';
$'not'      =   *$' ' *Id $ tx *IDENT(lwr(tx), 'not')       *$' ';
$'or'       =   *$' ' *Id $ tx *IDENT(lwr(tx), 'or')        *$' ';
$'procedure' =  *$' ' *Id $ tx *IDENT(lwr(tx), 'procedure') *$' ';
$'program'  =   *$' ' *Id $ tx *IDENT(lwr(tx), 'program')   *$' ';
$'repeat'   =   *$' ' *Id $ tx *IDENT(lwr(tx), 'repeat')    *$' ';
$'then'     =   *$' ' *Id $ tx *IDENT(lwr(tx), 'then')      *$' ';
$'to'       =   *$' ' *Id $ tx *IDENT(lwr(tx), 'to')        *$' ';
$'true'     =   *$' ' *Id $ tx *IDENT(lwr(tx), 'true')      *$' ';
$'until'    =   *$' ' *Id $ tx *IDENT(lwr(tx), 'until')     *$' ';
$'var'      =   *$' ' *Id $ tx *IDENT(lwr(tx), 'var')       *$' ';
$'while'    =   *$' ' *Id $ tx *IDENT(lwr(tx), 'while')     *$' ';
$'with'     =   *$' ' *Id $ tx *IDENT(lwr(tx), 'with')      *$' ';
$'array'    =   *$' ' *Id $ tx *IDENT(lwr(tx), 'array')     *$' ';
$'case'     =   *$' ' *Id $ tx *IDENT(lwr(tx), 'case')      *$' ';
$'const'    =   *$' ' *Id $ tx *IDENT(lwr(tx), 'const')     *$' ';
$'file'     =   *$' ' *Id $ tx *IDENT(lwr(tx), 'file')      *$' ';
$'forward'  =   *$' ' *Id $ tx *IDENT(lwr(tx), 'forward')   *$' ';
$'goto'     =   *$' ' *Id $ tx *IDENT(lwr(tx), 'goto')      *$' ';
$'in'       =   *$' ' *Id $ tx *IDENT(lwr(tx), 'in')        *$' ';
$'label'    =   *$' ' *Id $ tx *IDENT(lwr(tx), 'label')     *$' ';
$'nil'      =   *$' ' *Id $ tx *IDENT(lwr(tx), 'nil')       *$' ';
$'of'       =   *$' ' *Id $ tx *IDENT(lwr(tx), 'of')        *$' ';
$'packed'   =   *$' ' *Id $ tx *IDENT(lwr(tx), 'packed')    *$' ';
$'record'   =   *$' ' *Id $ tx *IDENT(lwr(tx), 'record')    *$' ';
$'set'      =   *$' ' *Id $ tx *IDENT(lwr(tx), 'set')       *$' ';
$'type'     =   *$' ' *Id $ tx *IDENT(lwr(tx), 'type')      *$' ';
/* Literals.  A Pascal string is single-quoted and doubles an embedded quote.            */
Integer     =   ('$' SPAN('0123456789' 'abcdefABCDEF') | SPAN('0123456789')) . token;
Real        =   ( SPAN('0123456789')
                  FENCE(
                    '.'
                    SPAN('0123456789')
                    FENCE(ANY('eE') FENCE(ANY('+-') | epsilon) SPAN('0123456789') | epsilon)
                  | ANY('eE')
                    FENCE(ANY('+-') | epsilon)
                    SPAN('0123456789')
                  )
                ) . token;
/* a string's characters, a doubled quote among them, are taken greedily: shortest-first, '''' read as the  */
/* empty string first, and inside a FENCE'd operand (x <> '''') that choice was never retried              */
StrChars    =   FENCE((NOTANY("'") | "''") *StrChars | epsilon);
Quoted      =   "'" *StrChars "'";
String      =   "'" (*StrChars) . thx . *Shift('TT_QLIT', thx) "'";
ResT        =   TABLE(35);
ResT['and'] = 1; ResT['array'] = 1; ResT['begin'] = 1; ResT['case'] = 1; ResT['const'] = 1; ResT['div'] = 1; ResT['do'] = 1; ResT['downto'] = 1;
ResT['else'] = 1; ResT['end'] = 1; ResT['file'] = 1; ResT['for'] = 1; ResT['function'] = 1; ResT['goto'] = 1; ResT['if'] = 1; ResT['in'] = 1;
ResT['label'] = 1; ResT['mod'] = 1; ResT['nil'] = 1; ResT['not'] = 1; ResT['of'] = 1; ResT['or'] = 1; ResT['packed'] = 1; ResT['procedure'] = 1;
ResT['program'] = 1; ResT['record'] = 1; ResT['repeat'] = 1; ResT['set'] = 1; ResT['then'] = 1; ResT['to'] = 1; ResT['type'] = 1; ResT['until'] = 1;
ResT['var'] = 1; ResT['while'] = 1; ResT['with'] = 1;
Ident       =   *Id $ tx *IDENT(ResT[lwr(tx)]) . token;
/* Punctuation.                                                                          */
$'('        =   *$' ' '(' *$' ';
$')'        =   *$' ' ')';
$'['        =   *$' ' '[' *$' ';
$']'        =   *$' ' ']';
$','        =   *$' ' ',' *$' ';
$';'        =   *$' ' ';' *$' ';
$':'        =   *$' ' ':' *$' ';
$'.'        =   *$' ' '.' *$' ';
$'..'       =   *$' ' '..' *$' ';
$'^'        =   *$' ' '^' *$' ';
$'@'        =   *$' ' '@' *$' ';
$':='       =   *$' ' ':=' *$' ';
$'='        =   *$' ' '=' *$' ';
$'<>'       =   *$' ' '<>' *$' ';
$'<='       =   *$' ' '<=' *$' ';
$'>='       =   *$' ' '>=' *$' ';
$'<'        =   *$' ' '<' *$' ';
$'>'        =   *$' ' '>' *$' ';
$'+'        =   *$' ' '+' *$' ';
$'-'        =   *$' ' '-' *$' ';
$'*'        =   *$' ' '*' *$' ';
$'/'        =   *$' ' '/' *$' ';
/* ==================================================================================================================== */
/* Expression grammar.  Pascal precedence, lowest first:                                 */
/*   relational (= <> < <= > >=) · adding (+ - or) · multiplying (* / div mod and)        */
/*   · unary (+ - not) · primary                                                          */
/* ==================================================================================================================== */
/* Swap exchanges the two top stack nodes: `x in s` must come out as the oracle's                */
/* TT_FNC(TT_VAR __pas_in, x, s), callee first, and the callee is only known after x.           */
function Swap(a, b) {
    a = Pop();
    b = Pop();
    Push(a);
    Push(b);
    Swap = .dummy;
    nreturn;
}
swap            =   epsilon . *Swap();
ArgFirst        =   *Expr0 . *IncCounter();
ArgRest         =   *$',' *Expr0 . *IncCounter();
CallArgs        =   *ArgFirst ARBNO(*ArgRest);
/* A write/writeln call lowers to TT_FNC(TT_VAR __pas_write[ln], args…, TT_ILIT -1) --   */
/* the trailing -1 is the oracle's own field-width sentinel, read off its dump.          */
WriteName       =   *$' ' *Id $ tx *IDENT(lwr(tx), 'write')   *$' '
                    . *Shift('TT_VAR', '__pas_write') . *IncCounter();
WritelnName     =   *$' ' *Id $ tx *IDENT(lwr(tx), 'writeln') *$' '
                    . *Shift('TT_VAR', '__pas_writeln') . *IncCounter();
WriteArg        =   *Expr0 . *IncCounter() FENCE(*$':' *Expr0 . *IncCounter() FENCE(*$':' *Expr0 . *IncCounter() | epsilon) | epsilon);
WriteArgs       =   *WriteArg ARBNO(*$',' *WriteArg);
WriteCall       =   epsilon . *PushCounter() (*WriteName | *WritelnName)
                    FENCE(*$'(' *WriteArgs *$')' | epsilon)
                    . *Shift('TT_ILIT', '-1') . *IncCounter()
                    . *Reduce('TT_FNC', nTop()) . *PopCounter();
/* An ordinary call: the callee is a TT_VAR leaf and is itself one of the children.      */
/* In an expression a call carries its parentheses; a bare identifier there is a TT_VAR.  */
ProcCall        =   epsilon . *PushCounter() (*Ident) . thx . *Shift('TT_VAR', thx) . *IncCounter()
                    FENCE(*$'(' *CallArgs *$')' | epsilon)
                    . *Reduce('TT_FNC', nTop()) . *PopCounter();
FuncCall        =   epsilon . *PushCounter() (*Ident) . thx . *Shift('TT_VAR', thx) . *IncCounter()
                    *$'(' *CallArgs *$')'
                    . *Reduce('TT_FNC', nTop()) . *PopCounter();
/* A set constructor [a, b..c] -> TT_FNC(TT_VAR __pas_set, a, TT_TO(b, c)), the callee first.  */
SetMember       =   *Expr0 FENCE(*$'..' *Expr0 . *Reduce('TT_TO', 2) | epsilon) . *IncCounter();
SetTail         =   FENCE(*$',' *SetMember *SetTail | epsilon);
SetCtor         =   epsilon . *PushCounter() *$'[' . *Shift('TT_VAR', '__pas_set') . *IncCounter()
                    FENCE(*SetMember *SetTail | epsilon) *$']'
                    . *Reduce('TT_FNC', nTop()) . *PopCounter();
/* A subscripted variable: a[i] -> TT_IDX(a, i…); the leading nInc counts a itself.        */
IdxTail         =   epsilon . *IncCounter() *$'[' *ArgFirst ARBNO(*ArgRest) *$']';
/* A variable access is a primary and any number of postfixes: a[i], r.f, p^.               */
Postfix         =   ( epsilon . *PushCounter() *IdxTail . *Reduce('TT_IDX', nTop()) . *PopCounter()
                    | *$' ' ('.' *$' ' (*Ident) . thx . *Shift('TT_VAR', thx) . *Reduce('TT_FIELD', 2)
                    | '^' *$' ' . *Reduce('TT_DEREF', 1)
                    ));
PostStar        =   FENCE(*Postfix *PostStar | epsilon);
Primary         =   ( *$'(' *Expr0 *$')'
                    | *WriteCall
                    | *$'true'   . *Shift('TT_ILIT', '1') . *Shift('TT_ILIT', '1') . *Reduce('TT_EQ', 2)
                    | *$'false'  . *Shift('TT_ILIT', '0') . *Shift('TT_ILIT', '1') . *Reduce('TT_EQ', 2)
                    | *$'nil'    . *Shift('TT_NULL', 'nil')
                    | epsilon . *PushCounter() '#' . *Shift('TT_VAR', '__pas_chrlit') . *IncCounter() (*Integer) . thx . *Shift('TT_ILIT', thx) . *IncCounter()
                      . *Reduce('TT_FNC', nTop()) . *PopCounter()
                    | *SetCtor
                    | (*Real) . thx . *Shift('TT_FLIT', thx)
                    | (*Integer) . thx . *Shift('TT_ILIT', thx)
                    | *String
                    | *FuncCall
                    | (*Ident) . thx . *Shift('TT_VAR', thx)
                    );
Expr4           =   *Primary *PostStar;
Expr3           =   *$'-'   *Expr3 . *Reduce('TT_MNS', 1)
                |   *$'@'   . *PushCounter() . *Shift('TT_VAR', '__pas_addr') . *IncCounter() *Expr3 . *IncCounter() . *Reduce('TT_FNC', nTop()) . *PopCounter()
                |   *$'+'   *Expr3
                |   *$'not' *Expr3 . *Shift('TT_ILIT', '0') . *Reduce('TT_EQ', 2)
                |   *Expr4;
/* Multiplying operators.  `/` forces a real result the way the oracle does, by folding  */
/* the LEFT operand with a 1.0 before dividing.  `mod` is the named divergence above.    */
MulOp           =   ( *$' ' ('*' *$' '   *Expr3 . *Reduce('TT_MUL', 2)
                    | '/' *$' '   . *Shift('TT_FLIT', '1') . *Reduce('TT_MUL', 2)
                             *Expr3 . *Reduce('TT_DIV', 2)
                    ) | *$'div' *Expr3 . *Reduce('TT_DIV', 2)
                    | *$'mod' *Expr3 . *Reduce('TT_MOD', 2)
                    | *$'and' *Expr3 . *Reduce('TT_MUL', 2)
                    );
Expr2           =   *Expr3 *MulStar;
MulStar         =   FENCE(*MulOp *MulStar | epsilon);
AddOp           =   ( *$' ' ('+' *$' '  *Expr2 . *Reduce('TT_ADD', 2)
                    | '-' *$' '  *Expr2 . *Reduce('TT_SUB', 2)
                    ) | *$'or' *Expr2 . *Reduce('TT_ADD', 2)
                    );
Expr1           =   *Expr2 *AddStar;
AddStar         =   FENCE(*AddOp *AddStar | epsilon);
RelOp           =   ( *$' ' ('<>' *$' ' *Expr1 . *Reduce('TT_NE', 2)
                    | '<=' *$' ' *Expr1 . *Reduce('TT_LE', 2)
                    | '>=' *$' ' *Expr1 . *Reduce('TT_GE', 2)
                    | '=' *$' '  *Expr1 . *Reduce('TT_EQ', 2)
                    | '<' *$' '  *Expr1 . *Reduce('TT_LT', 2)
                    | '>' *$' '  *Expr1 . *Reduce('TT_GT', 2)
                    ) | *$'in' . *Shift('TT_VAR', '__pas_in') *swap *Expr1 . *Reduce('TT_FNC', 3)
                    );
Expr0           =   *Expr1 FENCE(*RelOp | epsilon);
/* ==================================================================================================================== */
/* Statement grammar.                                                                    */
/* ==================================================================================================================== */
/* assignment: v := e  ->  TT_ASSIGN(v, e).  The target may be subscripted.              */
AssignTarget    =   *Primary *PostStar;
assign_cmd      =   *AssignTarget *$':=' *Expr0 . *Reduce('TT_ASSIGN', 2);
/* compound: begin S1; S2; … end -> TT_SEQ_EXPR(S1, S2, …)                               */
StmtFirst       =   *Command . *IncCounter();
StmtRest        =   *$';' FENCE(*Command . *IncCounter() | epsilon);
/* the statements of a sequence repeat greedily: a refusal further on fails at once instead of    */
/* backtracking through every earlier statement (46 lines took over 60 s that way)                */
StmtStar        =   FENCE(*StmtRest *StmtStar | epsilon);
compound_cmd_rest =   epsilon . *PushCounter() *$' ' FENCE(*StmtFirst *StmtStar | epsilon) *$'end'
                    . *Reduce('TT_SEQ_EXPR', nTop()) . *PopCounter();
/* if C then S [else S] -> TT_IF(C, S[, S])                                              */
if_cmd_rest     =   *$' ' *Expr0 *$'then' *Command
                    FENCE( *$'else' *Command . *Reduce('TT_IF', 3)
                         | epsilon . *Reduce('TT_IF', 2) );
/* while C do S -> TT_WHILE(C, S)                                                        */
while_cmd_rest  =   *$' ' *Expr0 *$'do' *Command . *Reduce('TT_WHILE', 2);
/* repeat S… until C -> TT_REPEAT(S…, C).  The body is a statement sequence.             */
repeat_cmd_rest =   epsilon . *PushCounter() *$' ' FENCE(*StmtFirst *StmtStar | epsilon) *$'until'
                    *Expr0 . *IncCounter() . *Reduce('TT_REPEAT', nTop()) . *PopCounter();
/* for v := a to|downto b do S -> TT_FOR(v, a, b, S)                                     */
for_cmd_rest    =   *$' ' (*Ident) . thx . *Shift('TT_VAR', thx) *$':=' *Expr0
                    (*$'to' | *$'downto') *Expr0 *$'do' *Command
                    . *Reduce('TT_FOR', 4);
/* case e of c1, c2: S; … end -> TT_CASE(e, TT_ALT(c1, c2), S, …): an arm's constants are one TT_ALT */
CaseConst       =   *Expr0 FENCE(*$'..' *Expr0 . *Reduce('TT_TO', 2) | epsilon) . *IncCounter();
/* the constants and the arms repeat greedily: an arm, once parsed, is never re-parsed when a later one refuses */
ConstStar       =   FENCE(*$',' *CaseConst *ConstStar | epsilon);
CaseArm         =   epsilon . *PushCounter() *CaseConst *ConstStar . *Reduce('TT_ALT', nTop()) . *PopCounter() . *IncCounter()
                    *$':' *Command . *IncCounter();
ArmStar         =   FENCE(*$';' *CaseArm *ArmStar | epsilon);
case_cmd_rest   =   epsilon . *PushCounter() *$' ' *Expr0 . *IncCounter() *$'of'
                    *CaseArm *ArmStar FENCE(*$';' | epsilon)
                    FENCE(*$'else' *Command . *IncCounter() FENCE(*$';' | epsilon) | epsilon)
                    *$'end' . *Reduce('TT_CASE', nTop()) . *PopCounter();
/* with r1, r2 do S -> TT_FNC(TT_VAR __pas_with, r1, r2, S), the oracle's naming for a lowered form  */
with_cmd_rest   =   epsilon . *PushCounter() *$' ' . *Shift('TT_VAR', '__pas_with') . *IncCounter()
                    *Expr0 . *IncCounter() ARBNO(*$',' *Expr0 . *IncCounter()) *$'do' *Command . *IncCounter()
                    . *Reduce('TT_FNC', nTop()) . *PopCounter();
/* goto 20 -> (TT_GOTO_U 20); 10: S -> TT_LABEL_DEF(TT_ILIT 10, S)                          */
goto_cmd_rest   =   *$' ' (*Integer) . thx . *Shift('TT_GOTO_U', thx);
label_cmd       =   (*Integer) . thx . *Shift('TT_ILIT', thx) *$':' *Command . *Reduce('TT_LABEL_DEF', 2);
/* an empty statement is legal Pascal wherever a statement may appear: the oracle's TT_SUCCEED */
empty_cmd       =   *$' ' *IDENT(epsilon, epsilon) . *Shift('TT_SUCCEED', '');
CmdT            =   TABLE(8);
kw_cmd          =   *$' ' *Id $ tx *DIFFER(CmdT[lwr(tx)]) *CmdT[lwr(tx)];
Command         =   *$' ' ( *kw_cmd
                    | *label_cmd
                    | *assign_cmd
                    | *WriteCall
                    | *ProcCall
                    | *empty_cmd
                    );
/* ==================================================================================================================== */
/* Declarations.  var/const/type declare no tree of their own -- the oracle's dump shows  */
/* them absorbed, so they are PARSED AND DISCARDED here rather than silently skipped.     */
/* ==================================================================================================================== */
TypeName        =   *$' ' *Id *$' ' FENCE(*$'[' BREAK(']') ']' *$' ' | epsilon);
/* A type denoter, ISO 7185 6.4: parsed and discarded like the rest of the declarations.  */
IdList          =   *Ident ARBNO(*$',' *Ident);
SConst          =   FENCE(*$' ' ('-' *$' ' | '+' *$' ' ) | epsilon) (*Real | *Integer | *Quoted | *Ident);
SimpleType      =   ( *$'(' *IdList *$')'
                    | *SConst *$'..' *SConst
                    | *TypeName
                    );
FixedField      =   *IdList *$':' *TypeSpec;
VariantArm      =   *SConst ARBNO(*$',' *SConst) *$':' *$'(' *FieldList *$')';
VariantTail     =   FENCE(*$';' *VariantArm *VariantTail | epsilon);
VariantPart     =   *$'case' FENCE(*Ident *$':' | epsilon) *Ident *$'of'
                    *VariantArm *VariantTail FENCE(*$';' | epsilon);
FieldList       =   FENCE(*FixedField FENCE(*$';' *FieldList | epsilon) | *VariantPart | epsilon);
TypeSpec        =   FENCE(*$'packed' | epsilon)
                    ( *$'array' *$'[' *SimpleType ARBNO(*$',' *SimpleType) *$']' *$'of' *TypeSpec
                    | *$'record' *FieldList *$'end'
                    | *$'set' *$'of' *SimpleType
                    | *$'file' FENCE(*$'of' *TypeSpec | epsilon)
                    | *$'^' *Ident
                    | *SimpleType
                    );
/* label, const and type parts declare no tree either; a constant is ISO 7185 6.3's.      */
label_part      =   *$'label' *Integer ARBNO(*$',' *Integer) *$';';
ConstDecl       =   *Ident *$'=' *SConst *$';';
ConstDecls      =   FENCE(*ConstDecl *ConstDecls | epsilon);
const_part      =   *$'const' *ConstDecls;
TypeDecl        =   *Ident *$'=' *TypeSpec *$';';
TypeDecls       =   FENCE(*TypeDecl *TypeDecls | epsilon);
type_part       =   *$'type' *TypeDecls;
VarGroup        =   *Ident ARBNO(*$',' *Ident) *$':' *TypeSpec *$';';
VarGroups       =   *VarGroup FENCE(*VarGroups | epsilon);
var_part        =   *$'var' *VarGroups;
/* A parameter list contributes TT_VAR leaves to the procedure's TT_VLIST.                */
ParamFirst      =   ( (*$'procedure' | *$'function') (*Ident) . thx . *Shift('TT_VAR', thx) . *IncCounter()
                      FENCE(*$'(' BREAK(')') ')' *$' ' | epsilon) FENCE(*$':' *TypeName | epsilon)
                    | FENCE(*$'var' | epsilon) (*Ident) . thx . *Shift('TT_VAR', thx) . *IncCounter()
                      ARBNO(*$',' (*Ident) . thx . *Shift('TT_VAR', thx) . *IncCounter()) *$':' *TypeName );
ParamRest       =   *$';' *ParamFirst;
Params          =   epsilon . *PushCounter() FENCE(*$'(' *ParamFirst ARBNO(*ParamRest) *$')' | epsilon)
                    . *Reduce('TT_VLIST', nTop()) . *PopCounter();
/* procedure/function P(params); <decls> begin … end;  or  ...; forward;                  */
/*   -> TT_PROC_DECL(TT_VAR P, TT_VLIST(params), <nested TT_PROC_DECL…>, TT_PROGRAM(body), TT_VLIST()) */
SubBody         =   epsilon . *PushCounter() *$'begin' FENCE(*StmtFirst *StmtStar | epsilon) *$'end'
                    . *Reduce('TT_PROGRAM', nTop()) . *PopCounter();
proc_decl       =   epsilon . *PushCounter() (*$'procedure' | *$'function') (*Ident) . thx . *Shift('TT_VAR', thx) . *IncCounter()
                    *Params . *IncCounter() FENCE(*$':' *TypeName | epsilon) *$';'
                    ( *$'forward' *$';' . *PushCounter() . *Reduce('TT_PROGRAM', nTop()) . *PopCounter() . *IncCounter()
                    | *Decls *SubBody . *IncCounter() *$';' )
                    . *PushCounter() . *Reduce('TT_VLIST', nTop()) . *PopCounter() . *IncCounter()
                    . *Reduce('TT_PROC_DECL', nTop()) . *PopCounter();
/* A block's declaration parts in ISO 7185 6.2.1's order: label, const, type, var, then the   */
/* procedures and functions; the C frontend refuses any other order, and so does this.          */
ProcDecls       =   FENCE(*proc_decl . *IncCounter() FLUSH *ProcDecls | epsilon);
Decls           =   FENCE(*label_part | epsilon) FENCE(*const_part | epsilon) FENCE(*type_part | epsilon)
                    FENCE(*var_part | epsilon) *ProcDecls;
/* ==================================================================================================================== */
/* Compiland — program header, declarations, main block.  The main block is emitted as    */
/* a TT_PROC_DECL named `main`, which is the shape the C frontend's dump carries.         */
/* ==================================================================================================================== */
MainBody        =   epsilon . *PushCounter() *$'begin' FENCE(*StmtFirst *StmtStar | epsilon) *$'end'
                    . *Reduce('TT_PROGRAM', nTop()) . *PopCounter();
program_head    =   FENCE(*$'program' *Ident FENCE(*$'(' BREAK(')') ')' | epsilon) *$';' | epsilon);
main_decl       =   epsilon . *Shift('TT_VAR', 'main')
                    . *PushCounter() . *Reduce('TT_VLIST', nTop()) . *PopCounter()
                    *MainBody
                    . *PushCounter() . *Reduce('TT_VLIST', nTop()) . *PopCounter()
                    . *Reduce('TT_PROC_DECL', 4);
Compiland       =   epsilon . *PushCounter() POS(0) *$' ' *program_head
                    *Decls
                    *main_decl . *IncCounter()
                    *$' ' FENCE(*$'.' | epsilon) *$' ' RPOS(0)
                    . *Reduce('Parse', nTop()) . *PopCounter();
/* ==================================================================================================================== */
/* Driver — byte-identical in shape to the other six parsers.                             */
CmdT['begin'] = compound_cmd_rest; CmdT['if'] = if_cmd_rest; CmdT['while'] = while_cmd_rest; CmdT['repeat'] = repeat_cmd_rest;
CmdT['for'] = for_cmd_rest; CmdT['case'] = case_cmd_rest; CmdT['with'] = with_cmd_rest; CmdT['goto'] = goto_cmd_rest;
/* ==================================================================================================================== */
/* Preprocess: text to text. The conditional-compilation pass of FPC (define undef setc, ifdef ifndef if ifc ifopt elseif else elsec endif ifend endc, */
/* include) generates the compiland text; the Compiland pattern above parses ONLY that text (Lon 2026-10-03, CEO-1483; semantics answered by hq_pascal). */
/* Every other directive passes through as the comment it is. A dropped or consumed span keeps its newlines, so line numbers hold.               */
struct ppdef { pv }
/* ==================================================================================================================== */
/* the patterns are built the first time a source carries a conditional directive: a program with none runs the Compiland alone, as before */
function PPPat() {
    pp_spc   = ' ' CHAR(9) CHAR(10) CHAR(13);
    pp_nl    = CHAR(10);
    pp_sp    = "'{(/";
    pp_num   = ( POS(0) FENCE('-' | epsilon) SPAN('0123456789') FENCE('.' SPAN('0123456789') | epsilon)
                 FENCE(ANY('eE') FENCE(ANY('+-') | epsilon) SPAN('0123456789') | epsilon) RPOS(0) );
    pp_dir   = ( ( '{$' BREAK('}') '}' | '(*$' BREAKX('*') '*)' ) . pp_t . *PPDir(pp_t) );
    pp_cmt   = ( '{' BREAK('}') '}' | '(*' FENCE(BREAKX('*') '*)') | '//' FENCE(BREAK(pp_nl) | REM) );
    pp_str   = ( "'" ARBNO(NOTANY("'" pp_nl) | "''") "'" );
    pp_oth   = ( NOTANY(pp_sp) FENCE(BREAK(pp_sp) | REM) | ANY(pp_sp) );
    pp_txt   = ( ( pp_cmt | pp_str | pp_oth ) . pp_t . *PPTxt(pp_t) );
    Preprocess = ( POS(0) ARBNO(FENCE(pp_dir | pp_txt)) RPOS(0) );
    pp_ready = 1;
    return;
}
/* ==================================================================================================================== */
function PPInit(w, s) {
    if (IDENT(pp_ready)) { PPPat(); }
    pp_sym = TABLE(31);
    pp_inc = TABLE(31);
    pp_stk = TABLE(31);
    pp_sn = 0;
    pp_base = 0;
    pp_skip = '';
    pp_err = '';
    pp_out = '';
    pp_buf = '';
    s = 'fpc unix linux cpu64 cpux86_64 endian_little ';
    while (s ? (POS(0) BREAK(' ') . w ' ') = ) { pp_sym[w] = ppdef('1'); }
    return;
}
/* ==================================================================================================================== */
function PPErr(msg) {
    TERMINAL = 'Preprocess: ' pp_t ': ' msg;
    pp_err = 1;
    return;
}
/* ==================================================================================================================== */
function PPEmit(s) {
    pp_buf = pp_buf s;
    if (GT(SIZE(pp_buf), 2048)) { pp_out = pp_out pp_buf; pp_buf = ''; }
    return;
}
/* ==================================================================================================================== */
function PPNls(s, out) {
    out = '';
    if (s ? pp_nl) { while (s ? (BREAK(pp_nl) pp_nl) = ) { out = out pp_nl; } }
    PPNls = out;
    return;
}
/* ==================================================================================================================== */
function PPTxt(tl) {
    PPTxt = .dummy;
    if (IDENT(pp_skip)) { PPEmit(tl); } else { PPEmit(PPNls(tl)); }
    nreturn;
}
/* ==================================================================================================================== */
function PPDirOf(f, d, p) {
    d = '';
    while (f ? (POS(0) BREAK('/') . p '/') = ) { d = d p '/'; }
    PPDirOf = d;
    return;
}
/* ==================================================================================================================== */
function PPOpen(path, t) {
    PPOpen = ;
    if (INPUT(.PPIN, 10, path '[-r16777215]')) {
        t = '';
        t = PPIN;
        ENDFILE(10);
        PPOpen = t;
        return;
    }
    freturn;
}
/* ==================================================================================================================== */
function PPFind(nm, t, lp, dir) {
    PPFind = ;
    if (t = PPOpen(nm)) { PPFind = t; return; }
    if (DIFFER(pp_cur)) { if (t = PPOpen(pp_cur nm)) { PPFind = t; return; } }
    lp = HOST(4, 'LPATH');
    while (DIFFER(lp)) {
        if (lp ? (POS(0) BREAK(': ') . dir ANY(': ')) = ) { ; } else { dir = lp; lp = ''; }
        if (t = PPOpen(dir '/' nm)) { PPFind = t; return; }
    }
    freturn;
}
/* ==================================================================================================================== */
function PPRead(nm, t) {
    PPRead = ;
    if (t = PPFind(nm)) { PPRead = t; return; }
    if (nm ? '.') { freturn; }
    if (t = PPFind(nm '.inc')) { PPRead = t; return; }
    freturn;
}
/* ==================================================================================================================== */
/* the arm's expression: defined/undefined, not, and, or, comparison, integer/real/boolean literals, symbols that carry a value (define X := v, setc);  */
/* declared() sizeof() option() `in` and an unknown identifier are not decided here: the arm is taken as false and one line names the directive         */
function PPWs() {
    pp_e ? (POS(0) SPAN(pp_spc)) = ;
    return;
}
/* ==================================================================================================================== */
function PPKw(k, w) {
    PPWs();
    w = '';
    pp_e ? (POS(0) Id . w);
    if (IDENT(w, k)) { pp_e ? (POS(0) Id) = ; return; }
    freturn;
}
/* ==================================================================================================================== */
function PPTruth(v) {
    PPTruth = 'false';
    if (IDENT(v, 'true')) { PPTruth = 'true'; }
    else if (v ? pp_num) { if (NE(v, 0)) { PPTruth = 'true'; } }
    return;
}
/* ==================================================================================================================== */
function PPAtom(w, v, q) {
    PPWs();
    if (pp_e ? (POS(0) '(') = ) {
        v = PPOr();
        PPWs();
        if (pp_e ? (POS(0) ')') = ) { ; } else { pp_bad = 'expression'; }
        PPAtom = v;
        return;
    }
    if (pp_e ? (POS(0) (SPAN('0123456789') FENCE('.' SPAN('0123456789') | epsilon) FENCE(ANY('eE') FENCE(ANY('+-') | epsilon) SPAN('0123456789') | epsilon)) . w) = ) {
        PPAtom = w;
        return;
    }
    if (pp_e ? (POS(0) Id . w) = ) {
        if (w ? (POS(0) ('defined' | 'undefined') RPOS(0))) {
            q = '';
            if (pp_e ? (POS(0) FENCE(SPAN(pp_spc) | epsilon) '(' FENCE(SPAN(pp_spc) | epsilon) Id . q FENCE(SPAN(pp_spc) | epsilon) ')') = ) { ; }
            else if (pp_e ? (POS(0) SPAN(pp_spc) Id . q) = ) { ; }
            else { pp_bad = w; }
            v = 'false';
            if (DIFFER(pp_sym[q])) { v = 'true'; }
            if (IDENT(w, 'undefined')) { if (IDENT(v, 'true')) { v = 'false'; } else { v = 'true'; } }
            PPAtom = v;
            return;
        }
        if (w ? (POS(0) ('declared' | 'sizeof' | 'option') RPOS(0))) {
            pp_e ? (POS(0) FENCE(SPAN(pp_spc) | epsilon) '(' BREAK(')') ')') = ;
            pp_bad = w;
            PPAtom = 'false';
            return;
        }
        if (w ? (POS(0) ('true' | 'false') RPOS(0))) { PPAtom = w; return; }
        if (DIFFER(pp_sym[w])) { PPAtom = pv(pp_sym[w]); return; }
        pp_bad = 'identifier ' w;
        PPAtom = 'false';
        return;
    }
    pp_bad = 'expression';
    pp_e = '';
    PPAtom = 'false';
    return;
}
/* ==================================================================================================================== */
function PPCmp(a, b, op, n, r) {
    a = PPAtom();
    PPWs();
    if (pp_e ? (POS(0) 'in' ANY(pp_spc '['))) { pp_bad = 'in'; pp_e = ''; PPCmp = 'false'; return; }
    if (pp_e ? (POS(0) ('<>' | '<=' | '>=' | '<' | '>' | '=') . op) = ) {
        b = PPAtom();
        n = '';
        if (a ? pp_num) { if (b ? pp_num) { n = 1; } }
        r = 'false';
        if (DIFFER(n)) {
            if (IDENT(op, '<>')) { if (NE(a, b)) { r = 'true'; } }
            else if (IDENT(op, '<=')) { if (LE(a, b)) { r = 'true'; } }
            else if (IDENT(op, '>=')) { if (GE(a, b)) { r = 'true'; } }
            else if (IDENT(op, '<')) { if (LT(a, b)) { r = 'true'; } }
            else if (IDENT(op, '>')) { if (GT(a, b)) { r = 'true'; } }
            else { if (EQ(a, b)) { r = 'true'; } }
        } else {
            if (IDENT(op, '<>')) { if (DIFFER(a, b)) { r = 'true'; } }
            else if (IDENT(op, '<=')) { if (LLE(a, b)) { r = 'true'; } }
            else if (IDENT(op, '>=')) { if (LGE(a, b)) { r = 'true'; } }
            else if (IDENT(op, '<')) { if (LLT(a, b)) { r = 'true'; } }
            else if (IDENT(op, '>')) { if (LGT(a, b)) { r = 'true'; } }
            else { if (IDENT(a, b)) { r = 'true'; } }
        }
        PPCmp = r;
        return;
    }
    PPCmp = a;
    return;
}
/* ==================================================================================================================== */
function PPNot(w, v) {
    PPWs();
    w = '';
    pp_e ? (POS(0) Id . w);
    if (IDENT(w, 'not')) {
        pp_e ? (POS(0) Id) = ;
        v = PPNot();
        if (IDENT(PPTruth(v), 'true')) { PPNot = 'false'; } else { PPNot = 'true'; }
        return;
    }
    PPNot = PPCmp();
    return;
}
/* ==================================================================================================================== */
function PPAnd(v, b) {
    v = PPNot();
    while (PPKw('and')) {
        b = PPNot();
        if (IDENT(PPTruth(v), 'true')) { v = PPTruth(b); } else { v = 'false'; }
    }
    PPAnd = v;
    return;
}
/* ==================================================================================================================== */
function PPOr(v, b) {
    v = PPAnd();
    while (PPKw('or')) {
        b = PPAnd();
        if (IDENT(PPTruth(v), 'true')) { v = 'true'; } else { v = PPTruth(b); }
    }
    PPOr = v;
    return;
}
/* ==================================================================================================================== */
function PPCond(e, v) {
    pp_e = lwr(e);
    pp_bad = '';
    v = PPOr();
    PPWs();
    if (DIFFER(pp_e)) { if (IDENT(pp_bad)) { pp_bad = 'expression'; } }
    if (DIFFER(pp_bad)) {
        TERMINAL = 'Preprocess: ' pp_t ': unsupported ' pp_bad ', the arm is taken as false';
        PPCond = 'wait';
        return;
    }
    if (IDENT(PPTruth(v), 'true')) { PPCond = ''; } else { PPCond = 'wait'; }
    return;
}
/* ==================================================================================================================== */
/* pp_skip: '' emitting; 'wait' skipping, no arm taken yet; 'done' skipping, an arm was taken; 'off' inside a skipped arm of an outer conditional */
function PPDir(tx, b, cmd, rest, sym, val, nm, t, sv, st, md, inc) {
    PPDir = .dummy;
    pp_t = tx;
    if (tx ? (POS(0) '{$' REM . b)) { b ? (ANY('}') RPOS(0)) = ; } else { tx ? (POS(0) '(*$' REM . b); b ? ('*)' RPOS(0)) = ; }
    b ? (POS(0) FENCE(SPAN(pp_spc) | epsilon) FENCE(Id . cmd | epsilon) FENCE(SPAN(pp_spc) | epsilon) REM . rest);
    cmd = lwr(cmd);
    rest ? (SPAN(pp_spc) RPOS(0)) = ;
    inc = '';
    if (cmd ? (POS(0) ('i' | 'include') RPOS(0))) { if (DIFFER(rest)) { if (~(rest ? (POS(0) ANY('+-,')))) { inc = 1; } } }
    if (cmd ? (POS(0) ('ifdef' | 'ifndef') RPOS(0))) {
        pp_sn = pp_sn + 1;
        pp_stk[pp_sn] = pp_skip;
        if (DIFFER(pp_skip)) { pp_skip = 'off'; }
        else {
            sym = '';
            rest ? (POS(0) Id . sym);
            st = 'wait';
            if (DIFFER(pp_sym[lwr(sym)])) { st = ''; }
            if (IDENT(cmd, 'ifndef')) { if (IDENT(st)) { st = 'wait'; } else { st = ''; } }
            pp_skip = st;
        }
        PPEmit(PPNls(tx));
    } else if (cmd ? (POS(0) ('if' | 'ifc' | 'ifopt') RPOS(0))) {
        pp_sn = pp_sn + 1;
        pp_stk[pp_sn] = pp_skip;
        if (DIFFER(pp_skip)) { pp_skip = 'off'; }
        else if (IDENT(cmd, 'ifopt')) { TERMINAL = 'Preprocess: ' tx ': unsupported ifopt, the arm is taken as false'; pp_skip = 'wait'; }
        else { pp_skip = PPCond(rest); }
        PPEmit(PPNls(tx));
    } else if (IDENT(cmd, 'elseif')) {
        if (LE(pp_sn, pp_base)) { PPErr('no corresponding $if...'); }
        else if (IDENT(pp_skip)) { pp_skip = 'done'; }
        else if (IDENT(pp_skip, 'wait')) { pp_skip = PPCond(rest); }
        PPEmit(PPNls(tx));
    } else if (cmd ? (POS(0) ('else' | 'elsec') RPOS(0))) {
        if (LE(pp_sn, pp_base)) { PPErr('no corresponding $if...'); }
        else if (IDENT(pp_skip)) { pp_skip = 'done'; }
        else if (IDENT(pp_skip, 'wait')) { pp_skip = ''; }
        PPEmit(PPNls(tx));
    } else if (cmd ? (POS(0) ('endif' | 'ifend' | 'endc') RPOS(0))) {
        if (LE(pp_sn, pp_base)) { PPErr('no corresponding $if...'); }
        else { pp_skip = pp_stk[pp_sn]; pp_sn = pp_sn - 1; }
        PPEmit(PPNls(tx));
    } else if (DIFFER(pp_skip)) {
        PPEmit(PPNls(tx));
    } else if (cmd ? (POS(0) ('define' | 'definec' | 'setc') RPOS(0))) {
        if (rest ? (POS(0) Id . sym FENCE(SPAN(pp_spc) | epsilon) FENCE((':=' | '=') FENCE(SPAN(pp_spc) | epsilon) REM . val | epsilon))) {
            if (IDENT(val)) { val = '1'; }
            pp_sym[lwr(sym)] = ppdef(lwr(val));
        } else { PPErr('syntax error'); }
        PPEmit(PPNls(tx));
    } else if (cmd ? (POS(0) ('undef' | 'undefc') RPOS(0))) {
        if (rest ? (POS(0) Id . sym)) { pp_sym[lwr(sym)] = ; } else { PPErr('syntax error'); }
        PPEmit(PPNls(tx));
    } else if (DIFFER(inc)) {
        PPEmit(PPNls(tx));
        if (rest ? (POS(0) "'" BREAK("'") . nm "'")) { ; }
        else if (rest ? (POS(0) (NOTANY(pp_spc "'") FENCE(BREAK(pp_spc) | REM)) . nm)) { ; }
        else { nm = ''; }
        if (IDENT(nm)) { PPErr('syntax error'); }
        else if (DIFFER(pp_inc[nm])) { PPErr('circular reference to ' nm); }
        else if (t = PPRead(nm)) {
            pp_inc[nm] = 1;
            sv = pp_base;
            pp_base = pp_sn;
            t ? *Preprocess;
            if (NE(pp_sn, pp_base)) { PPErr('$if(s) without $endif(s)'); pp_skip = pp_stk[pp_base + 1]; pp_sn = pp_base; }
            pp_base = sv;
            pp_inc[nm] = ;
        } else { TERMINAL = 'Preprocess: ' tx ': cannot open ' nm ', the include is dropped'; }
    } else if (IDENT(cmd, 'mode')) {
        md = '';
        rest ? (POS(0) Id . md);
        md = lwr(md);
        pp_sym['fpc_iso'] = ;
        pp_sym['fpc_objfpc'] = ;
        pp_sym['fpc_delphi'] = ;
        pp_sym['fpc_tp'] = ;
        pp_sym['fpc_macpas'] = ;
        if (md ? (POS(0) ('iso' | 'objfpc' | 'delphi' | 'tp' | 'macpas') RPOS(0))) { pp_sym['fpc_' md] = ppdef('1'); }
        PPEmit(tx);
    } else {
        PPEmit(tx);
    }
    nreturn;
}
/* ==================================================================================================================== */
function ParseOne(ptree, i, n_kids) {
    if (Src ? ('{$' | '(*$')) {
        if (lwr(Src) ? (('{$' | '(*$') ('if' | 'else' | 'endif' | 'endc' | 'define' | 'undef' | 'setc' | 'include' | 'i' ANY(' ' CHAR(9) CHAR(10) CHAR(13))))) {
            PPInit();
            pp_cur = '';
            if (DIFFER(pf_name)) { pp_cur = PPDirOf(pf_name); }
            if (Src ? *Preprocess) { ; } else { pp_err = 1; }
            if (NE(pp_sn, 0)) { PPErr('$if(s) without $endif(s)'); }
            if (DIFFER(pp_err)) { OUTPUT = 'Parse Error'; return; }
            Src = pp_out pp_buf;
        }
    }
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
        }
        TreeDumpEnd();
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
