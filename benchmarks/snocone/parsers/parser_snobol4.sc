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
E_Parse            = "'Parse'";
/* PST-SN4-1c (2026-05-16): goto node kinds renamed from TT_ATTR-style tags
   (':goS'/':goF'/':go') to dedicated TT_GOTO_* kinds, mirroring C stmt_ast.c. */
E_goU              = "'TT_GOTO_U'";
E_goS              = "'TT_GOTO_S'";
E_goF              = "'TT_GOTO_F'";
Functions   = 'ABS AND ANY APPEND APPLY ARBNO ARG ARRAY ATAN BACKSPACE '
              'BCHAR BREAK BREAKX BSIZE BUFFER CC CHAR CHOP CLEAR CODE '
              'COLLECT COMPL CONVERT COPY COS DATA DATATYPE DATE DEF DEFINE '
              'DEPTH DETACH DIFFER DUMP DUP DUPL EJECT ENDFILE EQ EVAL EXIT '
              'EXP FENCE FIELD FIX FREEZE FRONT FUNCTION GE GT HEIGHT HOR '
              'HOR_REG HOST IDENT INPUT INSERT INTEGER IT ITEM LABEL LE LEN '
              'LEQ LGE LGT LLE LLT LN LNE LOAD LOC LOCAL LPAD LRECL LT '
              'MERGE NE NODE NORM_REG NOTANY OPSYN OR OUTPUT OVY PAR POS '
              'PRINT PROTOTYPE REMDR REP REPLACE REVERSE REWIND RPAD RPOS '
              'RSORT RTAB SER SET SETEXIT SIN SIZE SLAB SORT SPAN SQRT '
              'STOPTR SUBSTR TAB TABLE TAN THAW TIME TRACE TRIM UNLOAD '
              'VALUE VDIFFER VER VER_REG WIDTH XOR ';
UnprotKwds  = 'ABEND ANCHOR CASE CODE COMPARE DUMP ERRLIMIT ERRTEXT ERRTYPE '
              'FATALLIMIT FILL FTRACE FULLSCAN GTRACE INPUT MAXLNGTH OUTPUT '
              'PROFILE STLIMIT TRACE TRIM ';
ProtKwds    = 'ABORT ALPHABET ARB BAL COMPNO DIGITS FAIL FATAL FENCE FILE '
              'FNCLEVEL GCTIME LASTFILE LASTLINE LASTNO LCASE LINE MAXINT '
              'PARM PI REM RTNTYPE STCOUNT STEXEC STFCOUNT STNO SUCCEED '
              'UCASE ';
BuiltinVars = 'ABORT ARB BAL FAIL REM SUCCEED TERMINAL ';
SpecialNms  = 'ABORT CONTINUE END FRETURN NRETURN RETURN SCONTINUE START ';
/* ==================================================================================================================== */
/* PST-SN4-2 (2026-05-16): sn_upr is the one tokenizer helper -- it builds no tree nodes; all stmt-building helpers
   (pp_stmt, strip_parens, make_goto_slot, push_qlit) are deleted and the grammar builds TT_STMT directly.
   Keyword classes are TABLE lookups, each table sized exactly to its list (Lon 2026-09-29: "use simple TABLE() lookups
   with exactly sized TABLE parameters") -- the upper-cased token is looked up once; the old list scan
   re-evaluated *sn_upr(tx) at every start position of an unanchored match over the whole list. */
/* -CASE control lines as snobol4.l reads them: honoured when folding is already on or the line is spelled -CASE; the digits */
/* after the blanks turn folding on when nonzero, anything else turns it off. The digits are captured twice: SnCaseNow at    */
/* scan time (the $ assignment, read by the next control line's guard) and SnCase at replay time (the . assignment, read by  */
/* every Shift that folds -- the deferred assignments replay in source order, so each token sees the state written before   */
/* it). Identifiers, labels, keywords, function names and goto targets fold as sno_fold does; strings never (case1.sno).     */
SnCaseNow = ;
SnCase    = ;
SnLblT    = TABLE(256);
SnLT        =  TABLE(10);
SnUT        =  TABLE(10);
SnLT[''] = 'a'; SnUT[''] = 'a';
SnLT['1'] = &LCASE; SnLT['2'] = &LCASE; SnLT['3'] = &LCASE; SnLT['4'] = &LCASE; SnLT['5'] = &LCASE; SnLT['6'] = &LCASE; SnLT['7'] = &LCASE; SnLT['8'] = &LCASE; SnLT['9'] = &LCASE;
SnUT['1'] = &UCASE; SnUT['2'] = &UCASE; SnUT['3'] = &UCASE; SnUT['4'] = &UCASE; SnUT['5'] = &UCASE; SnUT['6'] = &UCASE; SnUT['7'] = &UCASE; SnUT['8'] = &UCASE; SnUT['9'] = &UCASE;
/* the captured key is the first significant digit (atoi nonzero: '10' and '007' fold, '0' and '' do not); the two tables map */
/* it to the REPLACE character sets, the null key to an identity pair, so no selection sits inside a deferred expression      */
CaseCtl     =  ( '-CASE' | *NE(SnCaseNow, 0) '-' ANY('Cc') ANY('Aa') ANY('Ss') ANY('Ee') )
               ( ANY(' ' CHAR(9)) (SPAN(' ' CHAR(9)) | epsilon) (SPAN('0') | epsilon) ((ANY('123456789') | epsilon) $ SnCaseNow . SnCase) BREAK(CHAR(10) ';')
               | @cq (*IDENT(SUBSTR(Src, cq + 1, 1), CHAR(10)) | *IDENT(SUBSTR(Src, cq + 1, 1), ';') | RPOS(0)) (epsilon $ SnCaseNow . SnCase)
               );
FunctionsT   = TABLE(123);
UnprotKwdsT  = TABLE(21);
ProtKwdsT    = TABLE(28);
BuiltinVarsT = TABLE(7);
SpecialNmsT  = TABLE(8);
kw_s = Functions;    while (kw_s ? (POS(0) BREAK(' ') . kw_w ' ' REM . kw_s)) { FunctionsT[kw_w] = 1; }
kw_s = UnprotKwds;   while (kw_s ? (POS(0) BREAK(' ') . kw_w ' ' REM . kw_s)) { UnprotKwdsT[kw_w] = 1; }
kw_s = ProtKwds;     while (kw_s ? (POS(0) BREAK(' ') . kw_w ' ' REM . kw_s)) { ProtKwdsT[kw_w] = 1; }
kw_s = BuiltinVars;  while (kw_s ? (POS(0) BREAK(' ') . kw_w ' ' REM . kw_s)) { BuiltinVarsT[kw_w] = 1; }
kw_s = SpecialNms;   while (kw_s ? (POS(0) BREAK(' ') . kw_w ' ' REM . kw_s)) { SpecialNmsT[kw_w] = 1; }
Function    =  SPAN('.' '0123456789' &UCASE '_' &LCASE) $ tx *DIFFER(FunctionsT[REPLACE(tx, &LCASE, &UCASE)]);
BuiltinVar  =  SPAN('.' '0123456789' &UCASE '_' &LCASE) $ tx *DIFFER(BuiltinVarsT[REPLACE(tx, &LCASE, &UCASE)]);
SpecialNm   =  SPAN('.' '0123456789' &UCASE '_' &LCASE) $ tx *DIFFER(SpecialNmsT[REPLACE(tx, &LCASE, &UCASE)]);
ProtKwd     =  SPAN(&UCASE &LCASE)                $ tx *DIFFER(ProtKwdsT[REPLACE(tx, &LCASE, &UCASE)]);
UnprotKwd   =  SPAN(&UCASE &LCASE)                $ tx *DIFFER(UnprotKwdsT[REPLACE(tx, &LCASE, &UCASE)]);
Integer     =  SPAN('0123456789');
DQ          =  '"' (BREAK('"' CHAR(10))) . thx . *Shift('TT_QLIT', thx) '"';
SQ          =  "'" (BREAK("'" CHAR(10))) . thx . *Shift('TT_QLIT', thx) "'";
String      =  *SQ | *DQ;
Real        =  (  SPAN('0123456789')
                  FENCE('.' FENCE(SPAN('0123456789') | epsilon) | epsilon)
                  ('E' | 'e')
                  FENCE('+' | '-' | epsilon)
                  SPAN('0123456789')
               |  SPAN('0123456789') '.' FENCE(SPAN('0123456789') | epsilon)
               );
/* snobol4.l ALPHA [A-Za-z\x80-\xFF] and IDCONT: the bytes above 127 are letters to the C lexer (8bit2.sno) */
HiBytes     =  SUBSTR(&ALPHABET, 129, 128);
Id          =  ANY(&UCASE &LCASE HiBytes)
               FENCE(SPAN('.' '0123456789' &UCASE '_' &LCASE HiBytes) | epsilon);
/* snobol4.l W ({WS}|{CONT})+ with CONT \n[+.][ \t]*: continuation lines repeat, a bare '+' line among them (rc.sno) */
Cont        =  CHAR(10) ANY('+.') FENCE(SPAN(' ' CHAR(9)) | epsilon) FENCE(*Cont | epsilon);
White       =  (  SPAN(' ' CHAR(9)) FENCE(*Cont | epsilon)
               |  *Cont
               );
Gray        =  FENCE(*White | epsilon);
$'  '       =  White;
$' '        =  Gray;
$'='        =  *$'  ' '='  *$'  ';
$'?'        =  *$'  ' '?'  *$'  ';
$'|'        =  *$'  ' '|'  *$'  ';
$'+'        =  *$'  ' '+'  *$'  ';
$'-'        =  *$'  ' '-'  *$'  ';
$'/'        =  *$'  ' '/'  *$'  ';
$'*'        =  *$'  ' '*'  *$'  ';
$'^'        =  *$'  ' '^'  *$'  ';
$'!'        =  *$'  ' '!'  *$'  ';
$'**'       =  *$'  ' '**' *$'  ';
$'$'        =  *$'  ' '$'  *$'  ';
$'.'        =  *$'  ' '.'  *$'  ';
$'&'        =  *$'  ' '&'  *$'  ';
$'@'        =  *$'  ' '@'  *$'  ';
$'#'        =  *$'  ' '#'  *$'  ';
$'%'        =  *$'  ' '%'  *$'  ';
$'~'        =  *$'  ' '~'  *$'  ';
$','        =  *$' ' ',' *$' ';
$'('        =  '(' *$' ';
$'['        =  '[' *$' ';
$'<'        =  '<' *$' ';
$')'        =  *$' ' ')';
$']'        =  *$' ' ']';
$'>'        =  *$' ' '>';
/* ==================================================================================================================== */
/* THE EXPRESSION, as src/parsers/snobol4/snobol4.y builds it (Lon 2026-09-30: the C tree is canonical, and "the tree is */
/* built from tokens in the same order as they are recognized by the PATTERN ... directly and once only"): every left-     */
/* associative level is a tail loop that reduces as each right operand is recognised; =, ^ and ~ are right-recursive.     */
ArgTail     =  *$',' FENCE(*Expr | epsilon . *Reduce('TT_NUL', 0)) . *IncCounter() FENCE(*ArgTail | epsilon);
ArgList     =  FENCE(*Expr . *IncCounter() FENCE(*ArgTail | epsilon) | epsilon . *Reduce('TT_NUL', 0) . *IncCounter() *ArgTail);
Expr        =  *Expr0;
Expr0       =  *Expr1 FENCE(*$'=' *Expr0 . *Reduce('TT_ASSIGN', 2) | *$'  ' '=' (epsilon) . thx . *Shift('TT_QLIT', thx) . *Reduce('TT_ASSIGN', 2) | epsilon);
Expr1       =  *Expr2 *Expr1t;
Expr1t      =  FENCE(*$'?' *Expr2 . *Reduce('TT_SCAN', 2) *Expr1t | epsilon);
Expr2       =  *Expr3 *Expr2t;
Expr2t      =  FENCE(*$'&' *Expr3 . *Reduce('TT_OPSYN', 2, '&') *Expr2t | epsilon);
Expr3       =  *Expr4 *Expr3t;
Expr3t      =  FENCE(*$'|' *Expr4 . *Reduce('TT_ALT', 2) *Expr3t | epsilon);
Expr4       =  *Expr5 *Expr4t;
Expr4t      =  FENCE(*$'  ' *Expr5 . *Reduce('TT_SEQ', 2) *Expr4t | epsilon);
Expr5       =  *Expr6 *Expr5t;
Expr5t      =  FENCE(*$'@' *Expr6 . *Reduce('TT_OPSYN', 2, '@') *Expr5t | epsilon);
Expr6       =  *Expr7 *Expr6t;
Expr6t      =  FENCE(*$'  ' ('+' *$'  ' *Expr7 . *Reduce('TT_ADD', 2) | '-' *$'  ' *Expr7 . *Reduce('TT_SUB', 2)) *Expr6t | epsilon);
Expr7       =  *Expr8 *Expr7t;
Expr7t      =  FENCE(*$'#' *Expr8 . *Reduce('TT_OPSYN', 2, '#') *Expr7t | epsilon);
Expr8       =  *Expr9 *Expr8t;
Expr8t      =  FENCE(*$'/' *Expr9 . *Reduce('TT_DIV', 2) *Expr8t | epsilon);
Expr9       =  *Expr10 *Expr9t;
Expr9t      =  FENCE(*$'*' *Expr10 . *Reduce('TT_MUL', 2) *Expr9t | epsilon);
Expr10      =  *Expr11 *Expr10t;
Expr10t     =  FENCE(*$'%' *Expr11 . *Reduce('TT_OPSYN', 2, '%') *Expr10t | epsilon);
Expr11      =  *Expr12 FENCE(*$'  ' ('**' | '^' | '!') *$'  ' *Expr11 . *Reduce('TT_POW', 2) | epsilon);
Expr12      =  *Expr13 *Expr12tail;
Expr12tail  =  FENCE(*$'  ' ('$' *$'  ' *Expr13 . *Reduce('TT_CAPT_IMMED_ASGN', 2) *Expr12tail | '.' *$'  ' *Expr13 . *Reduce('TT_CAPT_COND_ASGN', 2) *Expr12tail ) | epsilon);
Expr13      =  *Expr14 FENCE(*$'~' *Expr13 . *Reduce('TT_OPSYN', 2, '~') | epsilon);
Expr14      =  '@' *Expr14 . *Reduce('TT_CAPT_CURSOR', 1)
            |  '~' *Expr14 . *Reduce('TT_NOT', 1)
            |  '?' *Expr14 . *Reduce('TT_INTERROGATE', 1)
            |  '&' (*ProtKwd) . thx . *Shift('TT_KEYWORD', REPLACE(thx, SnLT[SnCase], SnUT[SnCase]))
            |  '&' (*Id) . thx . *Shift('TT_KEYWORD', REPLACE(thx, SnLT[SnCase], SnUT[SnCase]))
            |  '&' *Expr14 . *Reduce('TT_OPSYN', 1, '&')
            |  '+' *Expr14 . *Reduce('TT_PLS', 1)
            |  '-' *Expr14 . *Reduce('TT_MNS', 1)
            |  '*' *Expr14 . *Reduce('TT_DEFER', 1)
            |  '$' *Expr14 . *Reduce('TT_INDIRECT', 1)
            |  '.' *Expr14 . *Reduce('TT_NAME', 1)
            |  '!' *Expr14 . *Reduce('TT_OPSYN', 1, '!')
            |  '^' *Expr14 . *Reduce('TT_OPSYN', 1, '^')
            |  '%' *Expr14 . *Reduce('TT_OPSYN', 1, '%')
            |  '/' *Expr14 . *Reduce('TT_OPSYN', 1, '/')
            |  '#' *Expr14 . *Reduce('TT_OPSYN', 1, '#')
            |  '=' *Expr14 . *Reduce('TT_OPSYN', 1, '=')
            |  '|' *Expr14 . *Reduce('TT_OPSYN', 1, '|')
            |  *Expr15;
Expr15      =  *Expr17 *Expr15t;
Expr15t     =  FENCE(  epsilon . *PushCounter() . *IncCounter() *$'[' FENCE(*ArgList | epsilon) *$']' . *Reduce('TT_IDX', nTop()) . *PopCounter() *Expr15t
                     | epsilon . *PushCounter() . *IncCounter() *$'<' FENCE(*ArgList | epsilon) *$'>' . *Reduce('TT_IDX', nTop()) . *PopCounter() *Expr15t
                     | epsilon);
/* a call: the name is held (PushVal) when its '(' is recognised and SnoCall builds the ONE node -- TT_FNC <name>, or the  */
/* pattern primitive's own kind for snobol4.y pat_prim_kind's names (exact case), ARB BAL REM FAIL SUCCEED ABORT keeping it */
SnoPrimT    =  TABLE(31);
SnoPrimT['ANY'] = 'TT_ANY'; SnoPrimT['NOTANY'] = 'TT_NOTANY'; SnoPrimT['SPAN'] = 'TT_SPAN'; SnoPrimT['BREAK'] = 'TT_BREAK';
SnoPrimT['BREAKX'] = 'TT_BREAKX'; SnoPrimT['LEN'] = 'TT_LEN'; SnoPrimT['POS'] = 'TT_POS'; SnoPrimT['RPOS'] = 'TT_RPOS';
SnoPrimT['TAB'] = 'TT_TAB'; SnoPrimT['RTAB'] = 'TT_RTAB'; SnoPrimT['ARBNO'] = 'TT_ARBNO'; SnoPrimT['FENCE'] = 'TT_FENCE';
SnoPrimT['FLUSH'] = 'TT_FLUSH'; SnoPrimT['ARB'] = 'TT_ARB'; SnoPrimT['BAL'] = 'TT_BAL'; SnoPrimT['REM'] = 'TT_REM';
SnoPrimT['FAIL'] = 'TT_FAIL'; SnoPrimT['SUCCEED'] = 'TT_SUCCEED'; SnoPrimT['ABORT'] = 'TT_ABORT';
SnoValT     =  TABLE(7);
SnoValT['ARB'] = 'ARB'; SnoValT['BAL'] = 'BAL'; SnoValT['REM'] = 'REM'; SnoValT['FAIL'] = 'FAIL'; SnoValT['SUCCEED'] = 'SUCCEED'; SnoValT['ABORT'] = 'ABORT';
/* the node's value (the name for TT_FNC and the six named primitives, none for the other primitives) is held under its    */
/* kind, chosen at scan time by the table test on the folded name, and the one Reduce pops the kind first and the value     */
/* second (arguments evaluate left to right)                                                                                */
Call        =  (*Id) $ tx . thx '('
               ( *DIFFER(SnoPrimT[REPLACE(tx, SnLT[SnCaseNow], SnUT[SnCaseNow])])
                 . *PushVal(SnoValT[REPLACE(thx, SnLT[SnCase], SnUT[SnCase])]) . *PushVal(SnoPrimT[REPLACE(thx, SnLT[SnCase], SnUT[SnCase])])
               | epsilon . *PushVal(REPLACE(thx, SnLT[SnCase], SnUT[SnCase])) . *PushVal('TT_FNC')
               )
               . *PushCounter() *$' ' FENCE(*ArgList | epsilon) *$')' . *Reduce(PopVal(), nTop(), PopVal()) . *PopCounter();
Expr17      =  FENCE(
                  *$'(' FENCE(  *$')' . *Reduce('TT_NUL', 0)
                             |  epsilon . *PushCounter() *Expr . *IncCounter() FENCE(*ArgTail *$')' . *Reduce('TT_VLIST', nTop()) | *$')') . *PopCounter()
                             |  epsilon . *PushCounter() . *Reduce('TT_NUL', 0) . *IncCounter() *ArgTail *$')' . *Reduce('TT_VLIST', nTop()) . *PopCounter()
                             )
               |  *Call
               |  (*Id) . thx . *Shift('TT_VAR', REPLACE(thx, SnLT[SnCase], SnUT[SnCase]))
               |  *String
               |  ((*Real) $ rtx *DIFFER(CONVERT(rtx, 'REAL'))) . thx . *Shift('TT_FLIT', thx)
               |  (*Integer) . thx . *Shift('TT_ILIT', '' (thx + 0))
               );
SGoto       =  ('S' | 's');
FGoto       =  ('F' | 'f');
/* a goto target as snobol4.y goto_label_expr: (L) and ($L) are the label's text, ($'s') the string, ($(e)) the           */
/* expression, (F(args)) a call, <e> TT_GOTO_DIRECT e                                                                      */
GoInner     =  FENCE(  '$' '(' *$' ' *Expr *$' ' ')'
                    |  '$' "'" (BREAK("'")) . thx . *Shift('TT_QLIT', thx) "'"
                    |  '$' '"' (BREAK('"')) . thx . *Shift('TT_QLIT', thx) '"'
                    |  '$' (*Id) . thx . *Shift('TT_QLIT', '$' REPLACE(thx, SnLT[SnCase], SnUT[SnCase]))
                    |  *Call
                    |  (*Id) . thx . *Shift('TT_QLIT', REPLACE(thx, SnLT[SnCase], SnUT[SnCase]))
                    );
Target      =  '(' *$' ' *GoInner *$' ' ')'
            |  '<' *$' ' *Expr *$' ' '>' . *Reduce('TT_GOTO_DIRECT', 1);
/* the gotos stand in the statement in written order, :F(x)S(y) as F then S (stmt_ast.c keeps the written order since this landing) */
Sgo         =  *SGoto *$' ' *Target . *Reduce('TT_GOTO_S', 1) . *IncCounter();
Fgo         =  *FGoto *$' ' *Target . *Reduce('TT_GOTO_F', 1) . *IncCounter();
Ugo         =  *Target . *Reduce('TT_GOTO_U', 1) . *IncCounter();
Goto        =  *$' ' ':'
               *$' '
               FENCE(
                  *Ugo
               |  *Sgo FENCE(*$' ' FENCE(':' *$' ' | epsilon) *Fgo | epsilon)
               |  *Fgo FENCE(*$' ' FENCE(':' *$' ' | epsilon) *Sgo | epsilon)
               );
Control     =  '-' BREAK(CHAR(10) ';');
SemiOk      =  @sq *(~(Src ? (TAB(sq) (SPAN(' ' CHAR(9)) | epsilon) CHAR(10) ANY('+.'))));
Comment     =  '*' BREAK(CHAR(10));
/* THE STATEMENT, as stmt_ast.c stmt_to_ast lays it out, built in recognition order: :lbl, then :subj -- a blank-separated */
/* or ?-separated pattern match is TT_SCAN subject pattern inside it (snobol4.y opt_subject) -- then :eq and :repl (an     */
/* empty replacement is the null string), then the gotos present.                                                         */
StmtLabel   =  (NOTANY(' ' CHAR(9) CHAR(10) ';') FENCE(BREAK(' ' CHAR(9) CHAR(10) ';') | REM)) $ ltx *IDENT(SnLblT[ltx]) *DIFFER((SnLblT[ltx] = 1));
StmtRepl    =  *$'  ' '=' . *Reduce('TT_ATTR', 0, ':eq') . *IncCounter() *$' '
               FENCE(*Expr | (epsilon) . thx . *Shift('TT_QLIT', thx)) . *Reduce('TT_ATTR', 1, ':repl') . *IncCounter();
/* a replacement needs a subject: a label followed by = is SPITBOL's "missing operand" and the C's syntax error (smoke_hello.sno) */
Stmt        =  epsilon . *PushCounter()
               FENCE((*StmtLabel) . thx . *Shift('TT_QLIT', REPLACE(thx, SnLT[SnCase], SnUT[SnCase])) . *Reduce('TT_ATTR', 1, ':lbl') . *IncCounter() | epsilon)
               FENCE(
                  FENCE(
                     *$'  ' *Expr14 *$'  ' *Expr2 . *Reduce('TT_SCAN', 2) . *Reduce('TT_ATTR', 1, ':subj') . *IncCounter()
                  |  *$'  ' *Expr2 *$'?' FENCE(*Expr3 . *Reduce('TT_SCAN', 2) | epsilon . *Reduce('TT_SCAN', 1)) . *Reduce('TT_ATTR', 1, ':subj') . *IncCounter()
                  |  *$'  ' *Expr5 . *Reduce('TT_ATTR', 1, ':subj') . *IncCounter()
                  )
                  FENCE(*StmtRepl | epsilon)
               |  epsilon
               )
               FENCE(*Goto | epsilon)
               . *Reduce('TT_STMT', nTop())
               . *PopCounter()
               *$' ';
/* END after the case map in force, as sbl -bf reads it: upper-case END ends the program and end or End is an ordinary label */
/* unless -CASE folding is on (the C lexer's strcmp after sno_fold; the coo's bisect of 2026-10-01 against ae0a91289)      */
EndStmt     =  ( ((ANY('Ee') ANY('Nn') ANY('Dd')) $ etx *IDENT(REPLACE(etx, SnLT[SnCaseNow], SnUT[SnCaseNow]), 'END')) . thx . *PushCounter() . *Shift('TT_QLIT', REPLACE(thx, SnLT[SnCase], SnUT[SnCase])) . *Reduce('TT_ATTR', 1, ':lbl') . *IncCounter()
                 FENCE(*$'  ' (*Id) . thx . *Shift('TT_QLIT', thx) . *Reduce('TT_ATTR', 1, ':entry') . *IncCounter() | epsilon)
               ) . *Reduce('TT_END', nTop()) . *PopCounter();
Commands    =  *Command FENCE(*Commands | epsilon);
Command     =  FENCE(
                  (*Comment) . thx . *Shift('TT_COMMENT', thx) . *IncCounter() . *Reduce('TT_COMMENT', 1) CHAR(10)
               |  (*CaseCtl | *Control) . thx . *Shift('TT_CONTROL', thx) . *IncCounter() . *Reduce('TT_CONTROL', 1) (CHAR(10) | ';')
               |  *Stmt . *IncCounter() (CHAR(10) | ';' *SemiOk | RPOS(0))
               );
/* a continuation line after a ;-ended statement is error 214 in SPITBOL and the C lexer (diag2.sno): the ; is refused when   */
/* the line's remainder is blank and the next line starts with + or . -- a lookahead from the cursor, the blanks left for the  */
/* next statement (a blank first keeps its first word from being a label); a program without END is refused by both (a bare   */
/* label END ends it, the text after it is never parsed)                                                                     */
Compiland   =  epsilon . *PushCounter()
               POS(0) ARBNO(*Command FLUSH) *EndStmt . *IncCounter() (ANY(' ' CHAR(9) CHAR(10)) | RPOS(0)) ARB RPOS(0)
               . *Reduce('Parse', nTop())
               . *PopCounter();
/* ==================================================================================================================== */
/* the driver: one file from stdin, or each file of PARSER_FILES in turn with a == header; the tree is dumped statement by  */
/* statement, or the parse refused with Parse Error                                                                        */
pf_list = HOST(4, 'PARSER_FILES');
pf_n = 0;
pf_bytes = 0;
pf_parse = 0;
pf_parse1 = 0;
if (IDENT(pf_list)) { INPUT(.INPUT, 9, '[-f0 -r16777215]'); } else { INPUT(.pf_names, 8, pf_list); }
while (LE(0, 1)) {
    if (IDENT(pf_list)) {
        Src = INPUT;
    } else {
        if (~(pf_name = pf_names)) break;
        INPUT(.INPUT, 9, pf_name '[-r16777215]');
        Src = INPUT;
        ENDFILE(9);
        pf_bytes = pf_bytes + SIZE(Src);
        OUTPUT = '== ' pf_name;
    }
    pf_a = TIME();
    InitCounter();
    InitStack();
    SnCaseNow = ;
    SnCase = ;
    SnLblT = TABLE(256);
    if (Src ? *Compiland) {
        ptree = Pop();
        pf_parse = pf_parse + (TIME() - pf_a);
        pf_i = 1;
        pf_nk = n(ptree);
        while (LE(pf_i, pf_nk)) {
            pf_cmd = ITEM(c(ptree), pf_i);
            if (t(pf_cmd) ? (POS(0) ('TT_STMT' | 'TT_END') RPOS(0))) { TreeDump(pf_cmd); }
            pf_i = pf_i + 1;
        }
        TreeDumpEnd();
    } else {
        pf_parse = pf_parse + (TIME() - pf_a);
        OUTPUT = 'Parse Error.';
    }
    pf_n = pf_n + 1;
    if (EQ(pf_n, 1)) { pf_parse1 = pf_parse; }
    if (IDENT(pf_list)) break;
}
if (DIFFER(pf_list)) TERMINAL = 'PARSER-METRICS files=' pf_n ' bytes=' pf_bytes ' parse_first_us=' pf_parse1 / 1000 ' parse_us=' pf_parse / 1000;

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
