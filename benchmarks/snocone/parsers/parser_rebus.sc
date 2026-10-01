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
/* PST-RB-SC ✅ 2026-05-19 — already shift/reduce-pure; verified zero violations. */
&FULLSCAN = 1;
white       =   (  SPAN(' ' CHAR(9))
                |  '#'  BREAK(CHAR(10))
                |  '//' BREAK(CHAR(10))
                |  '/*' BREAK('*') '*' ARBNO('*' | NOTANY('/*') BREAK('*') '*') '/'
                );
White       =   *white ARBNO(*white);
Gray        =   *White | epsilon;
$'  '       =   White;
$' '        =   Gray;
Id      = ANY(&UCASE &LCASE '_') FENCE(SPAN(&UCASE &LCASE '0123456789' '_' '.') | epsilon);
Integer = SPAN('0123456789');
Real    = SPAN('0123456789') '.' SPAN('0123456789');
KW_open = '&';
KW_body = ANY(&UCASE &LCASE '_') FENCE(SPAN(&UCASE &LCASE '0123456789' '_') | epsilon);
DQ_body = BREAK('"');
SQ_body = BREAK("'");
$'('        =       '('        *$' ';  $')'        = *$' ' ')';
$'['        =       '['        *$' ';  $']'        = *$' ' ']';
$'.'        = *$' '  '.'        *$' ';
$','        = *$' '  ','        *$' ';
$':='       = *$' '  ':='       *$' ';
$'?'        = *$' '  '?'        *$' ';
$'|'        = *$' '  '|'        *$' ';
$'+'        = *$' '  '+'        *$' ';  $'-'        = *$' ' '-'  *$' ';
$'*'        = *$' '  '*'        *$' ';  $'/'        = *$' ' '/'  *$' ';
$'^'        = *$' '  '^'        *$' ';  $'**'       = *$' ' '**' *$' ';
$'%'        = *$' '  '%'        *$' ';
$'~=='      = *$' '  '~=='      *$' ';  $'=='       = *$' ' '=='  *$' ';
$'<<='      = *$' '  '<<='      *$' ';  $'>>='      = *$' ' '>>=' *$' ';
$'<<'       = *$' '  '<<'       *$' ';  $'>>'       = *$' ' '>>'  *$' ';
$'<='       = *$' '  '<='       *$' ';  $'>='       = *$' ' '>='  *$' ';
$'<'        = *$' '  '<'        *$'  ';  $'>'       = *$' ' '>'   *$'  ';
$'<-arrow'  = *$' '  '<-'       *$' ';
$'~='       = *$' '  '~='       *$' ';  $'='        = *$' ' '='   *$' ';
$'||'       = *$' '  '||'       *$' ';  $'&'        = *$' ' '&'   *$' ';
$'function' = *$' ' *Id $ tx *IDENT(tx, 'function') *$'  '; $'end'      = *$' ' *Id $ tx *IDENT(tx, 'end');
$'record'   = *$' ' *Id $ tx *IDENT(tx, 'record') *$'  ';
$'if'       = *$' ' *Id $ tx *IDENT(tx, 'if') *$'  '; $'then'     = *$' ' *Id $ tx *IDENT(tx, 'then') *$' ';
$'else'     = *$' ' *Id $ tx *IDENT(tx, 'else') *$' ';
$'unless'   = *$' ' *Id $ tx *IDENT(tx, 'unless') *$'  ';
$'for'      = *$' ' *Id $ tx *IDENT(tx, 'for') *$'  ';
$'from'     = *$' ' *Id $ tx *IDENT(tx, 'from') *$'  ';
$'to'       = *$' ' *Id $ tx *IDENT(tx, 'to') *$'  ';
$'by'       = *$' ' *Id $ tx *IDENT(tx, 'by') *$'  ';
$'while'    = *$' ' *Id $ tx *IDENT(tx, 'while') *$'  '; $'do'       = *$' ' *Id $ tx *IDENT(tx, 'do') *$' ';
$'until'    = *$' ' *Id $ tx *IDENT(tx, 'until') *$'  ';
$'repeat'   = *$' ' *Id $ tx *IDENT(tx, 'repeat') *$'  ';
$'return'   = *$' ' *Id $ tx *IDENT(tx, 'return') *$' ';
$'exit'     = *$' ' *Id $ tx *IDENT(tx, 'exit') *$' ';
$'fail'     = *$' ' *Id $ tx *IDENT(tx, 'fail') *$' ';
$'stop'     = *$' ' *Id $ tx *IDENT(tx, 'stop') *$' ';
$'next'     = *$' ' *Id $ tx *IDENT(tx, 'next') *$' ';
$'local'    = *$' ' *Id $ tx *IDENT(tx, 'local') *$'  ';
$'initial'  = *$' ' *Id $ tx *IDENT(tx, 'initial') *$'  ';
rb_case_kw  = *$' ' *Id $ tx *IDENT(tx, 'case') *$'  ';
$'of'       = *$' ' *Id $ tx *IDENT(tx, 'of') *$' ';
$'<-'       = *$' '  '<-'       *$' ';
$'?-'       = *$' '  '?-'       *$' ';
$';'        = *$' '  ';'        *$' ';
$'{'        = *$' '  '{'        *$' ';
$'}'        = *$' '  '}'        *$' ';
$':'        = *$' '  ':'        *$' ';
$'||:='     = *$' '  '||:='     *$' ';
$'+:='      = *$' '  '+:='      *$' ';
$'-:='      = *$' '  '-:='      *$' ';
$':=:'      = *$' '  ':=:'      *$' ';
$'+:'       = *$' '  '+:'       *$' ';
dot_capt    = *$'  '  '.'        *$' ';
dollar_capt = *$'  '  '$'        *$' ';
CMP_EQ       = 'CMP_EQ'; CMP_NE = 'CMP_NE';
CMP_LT       = 'CMP_LT'; CMP_LE = 'CMP_LE';
CMP_GT       = 'CMP_GT'; CMP_GE = 'CMP_GE';
CMP_SEQ      = 'CMP_SEQ'; CMP_SNE = 'CMP_SNE';
CMP_SLT      = 'CMP_SLT'; CMP_SLE = 'CMP_SLE';
CMP_SGT      = 'CMP_SGT'; CMP_SGE = 'CMP_SGE';
REMDR        = 'REMDR';
Parse        = 'Parse';
FUNC_DECL = 'FUNC_DECL';
REC_DECL  = 'REC_DECL';
PARAMS    = 'PARAMS';
FIELDS    = 'FIELDS';
LOCALS    = 'LOCALS';
BODY      = 'BODY';
ASSIGN    = 'ASSIGN';
ALT       = 'ALT';
MATCH     = 'MATCH';
IF        = 'IF';
IFELSE    = 'IFELSE';
WHILE     = 'WHILE';
UNLESS    = 'UNLESS';
UNTIL     = 'UNTIL';
REPEAT    = 'REPEAT';
RB_FOR    = 'RB_FOR';
CALL      = 'CALL';
RB_RETURN = 'RB_RETURN';
RB_RETURN_VAL = 'RB_RETURN_VAL';
RB_FAIL   = 'RB_FAIL';
RB_STOP   = 'RB_STOP';
RB_EXIT   = 'RB_EXIT';
RB_NEXT   = 'RB_NEXT';
RB_INITIAL = 'RB_INITIAL';
REPLACE   = 'REPLACE';
REPLN     = 'REPLN';
RB_CASE   = 'RB_CASE';
EXCHG       = 'EXCHG';
ADDASSIGN   = 'ADDASSIGN';
SUBASSIGN   = 'SUBASSIGN';
CATASSIGN   = 'CATASSIGN';
COMPOUND    = 'COMPOUND';
nTop_count   = 'nTop()';
/* the C lexer (rebus.l) upper-cases every identifier and keyword name before the grammar sees it */
function RbUp(x) { RbUp = REPLACE(x, &LCASE, &UCASE); return; }
X_sub = epsilon . *IncCounter() (*expr | epsilon . *Reduce('TT_NUL', 0)) FENCE(*$',' *X_sub | epsilon);
X_args   = epsilon . *IncCounter() *alt_expr FENCE(*$',' FENCE(*X_args | epsilon . *IncCounter() (epsilon) . thx . *Shift('TT_NUL', thx) FENCE(*$',' *X_args | epsilon)) | epsilon);
call_or_id = FENCE(  epsilon . *PushCounter() (*Id) . thx . *Shift('TT_VAR', RbUp(thx)) . *IncCounter() *$'(' FENCE(*X_args | epsilon) *$')' . *Reduce('TT_FNC', nTop()) . *PopCounter()
                   | (*Id) . thx . *Shift('TT_VAR', RbUp(thx))
                  );
primary = FENCE(  '"' (*DQ_body) . thx . *Shift('TT_QLIT', thx) '"'
                | "'" (*SQ_body) . thx . *Shift('TT_QLIT', thx) "'"
                | *KW_open (*KW_body) . thx . *Shift('TT_KEYWORD', RbUp(thx))
                | '@' (*Id) . thx . *Shift('TT_CAPT_CURSOR', RbUp(thx))
                | (*Real) . thx . *Shift('TT_FLIT', thx)
                | (*Integer) . thx . *Shift('TT_ILIT', thx)
                | *call_or_id
                | '(' *expr ')'
               );
/* rebus.y postfix_expr is left-recursive: any chain of [subscripts], [a +: b], . primary and $ primary */
postfix_tail = FENCE(  *$'[' *alt_expr *$'+:' *alt_expr *$']' . *Reduce('TT_IDX', 3) *postfix_tail
                     | *$'[' . *PushCounter() . *IncCounter() *X_sub *$']' . *Reduce('TT_IDX', nTop()) . *PopCounter() *postfix_tail
                     | *dot_capt    *primary . *Reduce('TT_CAPT_COND_ASGN', 2) *postfix_tail
                     | *dollar_capt *primary . *Reduce('TT_CAPT_IMMED_ASGN', 2) *postfix_tail
                     | epsilon
                    );
postfix_expr = *primary *postfix_tail;
unary_expr = FENCE(  *$'-'  *unary_expr . *Reduce('TT_MNS', 1)
                   | '+'   *unary_expr
                   | '~'   *unary_expr . *Reduce('TT_NOT', 1)
                   | '!'   *unary_expr . *Reduce('TT_ITERATE', 1)
                   | '/'   *unary_expr . *Reduce('TT_NONNULL', 1)
                   | '\'   *unary_expr . *Reduce('TT_NOT', 1)
                   | '$'   *unary_expr . *Reduce('TT_INDIRECT', 1)
                   | '.'   . *Reduce('TT_NUL', 0) *unary_expr . *Reduce('TT_CAPT_COND_ASGN', 2)
                   | *postfix_expr
                  );
pow_expr = *unary_expr FENCE(  *$'**' *pow_expr . *Reduce('TT_POW', 2)
                              | *$'^'  *pow_expr . *Reduce('TT_POW', 2)
                              | epsilon
                             );
mul_expr = *pow_expr *mul_tail;
mul_tail = ( *$'*' *pow_expr . *Reduce('TT_MUL', 2) *mul_tail
           | *$'/' *pow_expr . *Reduce('TT_DIV', 2) *mul_tail
           | *$'%' *pow_expr . *Reduce('TT_MOD', 2) *mul_tail
           | epsilon
           );
add_expr = *mul_expr *add_tail;
add_tail = ( *$'+' *mul_expr . *Reduce('TT_ADD', 2) *add_tail
           | *$'-' *mul_expr . *Reduce('TT_SUB', 2) *add_tail
           | epsilon
           );
cmp_expr = *add_expr FENCE(  *$'~==' *add_expr . *Reduce('TT_LNE', 2)
                             | *$'==' *add_expr . *Reduce('TT_LEQ', 2)
                             | *$'<<=' *add_expr . *Reduce('TT_LLE', 2)
                             | *$'>>=' *add_expr . *Reduce('TT_LGE', 2)
                             | *$'<<'  *add_expr . *Reduce('TT_LLT', 2)
                             | *$'>>'  *add_expr . *Reduce('TT_LGT', 2)
                             | *$'<='  *add_expr . *Reduce('TT_LE', 2)
                             | *$'>='  *add_expr . *Reduce('TT_GE', 2)
                             | *$'~='  *add_expr . *Reduce('TT_NE', 2)
                             | *$'='   *add_expr . *Reduce('TT_EQ', 2)
                             | *$'<'   *add_expr . *Reduce('TT_LT', 2)
                             | *$'>'   *add_expr . *Reduce('TT_GT', 2)
                             | epsilon
                            );
cat_expr = *cmp_expr *cat_tail;
cat_tail = ( *$'||' *cmp_expr . *Reduce('TT_CAT', 2) *cat_tail
           | *$'&'  *cmp_expr . *Reduce('TT_CAT', 2) *cat_tail
           | epsilon
           );
alt_tail = FENCE( *$'|' *cat_expr . *Reduce('TT_ALT', 2) *alt_tail | epsilon );
alt_expr = *cat_expr *alt_tail;
expr = *alt_expr FENCE(  *$' ' ('||:=' *$' ' *expr . *Reduce('TT_AUGOP', 2, 'TT_CAT')
                       | '+:=' *$' '  *expr . *Reduce('TT_AUGOP', 2, 'TT_ADD')
                       | '-:=' *$' '  *expr . *Reduce('TT_AUGOP', 2, 'TT_SUB')
                       | ':=:' *$' '  *expr . *Reduce('TT_SWAP', 2)
                       | ':=' *$' '   *expr . *Reduce('TT_ASSIGN', 2)
                       ) | epsilon
                      );
$'?-match'  = *$' '  '?-'  *$' ';
match_or_expr = *expr FENCE(*$'?-match' *expr . *Reduce('TT_NUL', 0) . *Reduce('TT_SCAN', 3)
                           | *$' ' ('?' *$' ' *expr *$'<-arrow' *expr . *Reduce('TT_SCAN', 3)
                           | '?' *$' ' *expr . *Reduce('TT_SCAN', 2)
                           ) | epsilon);
opt_nl = FENCE(CHAR(10) | epsilon);
StmtT     = TABLE(12);
kw_stmt   = *$' ' *Id $ tx *DIFFER(StmtT[tx]) *StmtT[tx];
stmt_body = *opt_nl *$' ' FENCE(*compound_stmt | *kw_stmt | *match_or_expr);
if_stmt    = *$'if' *if_stmt_rest;
if_stmt_rest = *$'  ' *match_or_expr *$'then' FENCE(*opt_nl *stmt_body *opt_nl *$'else' *opt_nl *stmt_body . *Reduce('TT_IF', 3) | *opt_nl *stmt_body . *Reduce('TT_IF', 2));
while_stmt = *$'while' *while_stmt_rest;
while_stmt_rest = *$'  ' *match_or_expr *$'do'   *opt_nl *stmt_body . *Reduce('TT_WHILE', 2);
unless_stmt = *$'unless' *unless_stmt_rest;
unless_stmt_rest = *$'  ' *match_or_expr *$'then' *opt_nl *stmt_body . *Reduce('TT_UNLESS', 2);
until_stmt  = *$'until' *until_stmt_rest;
until_stmt_rest = *$'  ' *match_or_expr *$'do'   *opt_nl *stmt_body . *Reduce('TT_UNTIL', 2);
repeat_stmt = *$'repeat' *repeat_stmt_rest;
repeat_stmt_rest = *$'  ' *opt_nl *stmt_body . *Reduce('TT_REPEAT', 1);
for_body = *$'do' *opt_nl *stmt_body;
for_stmt = *$'for' *for_stmt_rest;
for_stmt_rest = *$'  ' (*Id) . rbForVar *$'from' *match_or_expr *$'to' *match_or_expr
           FENCE(*$'by' *match_or_expr *for_body . *Reduce('TT_FOR', 4, RbUp(rbForVar)) | epsilon . *Reduce('TT_NUL', 0) *for_body . *Reduce('TT_FOR', 4, RbUp(rbForVar)));
return_stmt = *$'return' *return_stmt_rest;
return_stmt_rest = *$' ' FENCE(*match_or_expr . *Reduce('TT_RETURN', 1) | epsilon . *Reduce('TT_RETURN', 0));
exit_stmt   = *$'exit' *exit_stmt_rest;
exit_stmt_rest = *$' ' . *Reduce('TT_LOOP_BREAK', 0);
fail_stmt   = *$'fail' *fail_stmt_rest;
fail_stmt_rest = *$' ' . *Reduce('TT_PROC_FAIL', 0);
stop_stmt   = *$'stop' *stop_stmt_rest;
stop_stmt_rest = *$' ' . *Reduce('TT_END', 0);
next_stmt   = *$'next' *next_stmt_rest;
next_stmt_rest = *$' ' . *Reduce('TT_LOOP_NEXT', 0);
compound_end       = *$' ' '}';
compound_item      = epsilon . *IncCounter() *stmt_inline FENCE(*$';' *$' ' FENCE(CHAR(10) | epsilon) | *$' ' CHAR(10));
compound_body_tail = FENCE(*compound_end | *blank_line *compound_body_tail | *compound_item *compound_body_tail);
compound_stmt = *$' ' '{' *$' ' FENCE(CHAR(10) | epsilon) . *PushCounter() *compound_body_tail . *Reduce('TT_PROGRAM', nTop()) . *PopCounter();
CASE_CLAUSE   = 'CASE_CLAUSE';
CASE_DEFAULT  = 'CASE_DEFAULT';
stmt_inline = *$' ' FENCE(*compound_stmt | *kw_stmt | *match_or_expr) *$' ';
caseclause_guard   = epsilon . *IncCounter() . *IncCounter() *match_or_expr *$':' *stmt_inline;
rb_default_kw  = *$' '  'default'   *$' ';
caseclause_default = epsilon . *IncCounter() . *IncCounter() *rb_default_kw . *Reduce('TT_NUL', 0) *$':' *stmt_inline;
caseclause         = FENCE(*caseclause_default | *caseclause_guard);
caselist_tail = FENCE(FENCE(*$';' | epsilon) *$' ' CHAR(10) *$' ' FENCE(*caseclause *caselist_tail | *caselist_tail) | *$';' FENCE(*caseclause *caselist_tail | epsilon) | epsilon);
caselist      = *caseclause *caselist_tail;
case_stmt = *rb_case_kw *case_stmt_rest;
case_stmt_rest = *$'  ' . *PushCounter() . *IncCounter() *match_or_expr *$'of' *$'{' *opt_nl *$' ' *caselist *$'}' . *Reduce('TT_CASE', nTop()) . *PopCounter();
stmt = *$' ' FENCE(*compound_stmt | *kw_stmt | *match_or_expr) *$' ' FENCE(*$';' FENCE(CHAR(10) | epsilon) | CHAR(10));
func_end      = *$'end' *$' ' CHAR(10);
blank_line    = *$' ' CHAR(10);
func_body_stmt = FENCE(*blank_line *func_body_stmt | *func_end | epsilon . *IncCounter() *stmt *func_body_stmt);
func_body     = epsilon . *PushCounter() *func_body_stmt . *Reduce('TT_PROGRAM', nTop()) . *PopCounter();
X_params  = epsilon . *IncCounter() (*Id) . thx . *Shift('TT_VAR', RbUp(thx)) FENCE(*$',' *X_params | epsilon);
opt_params = epsilon . *PushCounter() FENCE(*X_params | epsilon) . *Reduce('TT_VLIST', nTop()) . *PopCounter();
X_fields  = epsilon . *IncCounter() (*Id) . thx . *Shift('TT_VAR', RbUp(thx)) FENCE(*$',' *X_fields | epsilon);
opt_fields = FENCE(*X_fields | epsilon);
X_locals   = epsilon . *IncCounter() (*Id) . thx . *Shift('TT_VAR', RbUp(thx)) FENCE(*$',' *X_locals | epsilon);
opt_locals = epsilon . *PushCounter() FENCE(*$'local' *X_locals FENCE(*$';' | epsilon) *$' ' CHAR(10) | epsilon) . *Reduce('TT_VLIST', nTop()) . *PopCounter();
init_expr   = *stmt_inline;
opt_initial = FENCE(epsilon . *PushCounter() *$'initial' *init_expr FENCE(*$';' | epsilon) *$' ' CHAR(10) . *PopCounter() | epsilon . *Reduce('TT_NUL', 0));
function_decl =
    *$'function' (*Id) . thx . *Shift('TT_VAR', RbUp(thx)) *$'(' *opt_params *$')' *$' ' CHAR(10)
    *opt_locals
    *opt_initial
    *func_body
    . *Reduce('TT_FUNCTION', 5);
record_decl =
    epsilon . *PushCounter() *$'record' (*Id) . thx . *Shift('TT_VAR', RbUp(thx)) . *IncCounter() *$'(' *opt_fields *$')' *$' ' CHAR(10)
    . *Reduce('TT_RECORD_DECL', nTop()) . *PopCounter();
func_cmd = epsilon . *IncCounter() *function_decl;
rec_cmd  = epsilon . *IncCounter() *record_decl;
blank    = *$' ' CHAR(10);
Command  = *func_cmd | *rec_cmd | *blank;
Compiland = epsilon . *PushCounter() POS(0) ARBNO(*Command FLUSH) RPOS(0) . *Reduce('Parse', nTop()) . *PopCounter();
StmtT['case'] = case_stmt_rest; StmtT['if'] = if_stmt_rest; StmtT['while'] = while_stmt_rest; StmtT['unless'] = unless_stmt_rest;
StmtT['until'] = until_stmt_rest; StmtT['repeat'] = repeat_stmt_rest; StmtT['for'] = for_stmt_rest; StmtT['return'] = return_stmt_rest;
StmtT['stop'] = stop_stmt_rest; StmtT['fail'] = fail_stmt_rest; StmtT['exit'] = exit_stmt_rest; StmtT['next'] = next_stmt_rest;
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
