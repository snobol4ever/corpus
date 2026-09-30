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
function TreeDumpValue(x, t, v, fval, zeros, pre) {
    t = t(x); v = v(x);
    if (t ? (POS(0) ('TT_QLIT' | 'TT_CSET') RPOS(0))) { v ? (BREAK(nul) . v); TreeDumpValue = ' "' CQize(v) '"'; return; }
    if (~DIFFER(v)) { TreeDumpValue = ; return; }
    if (IDENT(t, 'TT_FLIT')) { TreeDumpValue = ' ' TreeDumpG(CONVERT(v, 'REAL')); return; }
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
E_Parse  = "'Parse'";
white   =   (  SPAN(' ' CHAR(9) CHAR(10))
            |  '%'  ARBNO(NOTANY(CHAR(10))) (CHAR(10) | RPOS(0))
            |  '/*' BREAK('*') '*' ARBNO('*' | NOTANY('/*') BREAK('*') '*') '/'
            );
White   =   *white FENCE(*White | epsilon);
Gray    =   FENCE(*White | epsilon);
$' '    =   Gray;
$'  '   =   White;
Atom_first = ANY(&LCASE SUBSTR(&ALPHABET, 129, 128));
Atom_rest  = SPAN('0123456789' &UCASE &LCASE '_' SUBSTR(&ALPHABET, 129, 128));
Atom       = (*Atom_first FENCE(*Atom_rest | epsilon));
Qchars     = FENCE((NOTANY("'\") | "''" | '\' ('x' SPAN('0123456789AaBbCcDdEeFf') '\' | SPAN('01234567') '\' | LEN(1))) *Qchars | epsilon);
Qatom      = ("'" *Qchars . q_body "'");
Qatom_h    = ("'" BREAK("'") . h_body "'");
Var_first  = ANY(&UCASE '_');
Var_rest   = SPAN('0123456789' &UCASE &LCASE '_');
Var        = (*Var_first FENCE(*Var_rest | epsilon));
Float      = (SPAN('0123456789') '.' SPAN('0123456789') FENCE('e' FENCE(ANY('+-') | epsilon) SPAN('0123456789') | 'E' FENCE(ANY('+-') | epsilon) SPAN('0123456789') | epsilon));
Char_code  = ("0'" NOTANY(CHAR(10)));
Int        = SPAN('0123456789') FENCE(('_' FENCE(SPAN(' ' CHAR(9) CHAR(10)) | epsilon) | ' ') *Int | epsilon);
Str        = ('"' BREAK('"') . s_body '"');
$'('   =       '('  *$' ';  $')'  = *$' ' ')';
$'['   =       '['  *$' ';  $']'  = *$' ' ']';
$','   = *$' '  ','  *$' ';  $';'  = *$' ' ';' *$' ';
$'|'   = *$' '  '|'  *$' ';
$'.'   = *$' '  '.';
$':-'  = *$' '  ':-' *$' ';  $':'  = *$' '  ':'  . op_name_ @la_c *DIFFER(SUBSTR(Src, la_c + 1, 1), '-') *$' ';  $'='  = *$' ' '='  *$' ';
$'+'   = *$' '  '+'  *$' ';  $'-'   = *$' ' '-' @la_m *DIFFER(SUBSTR(Src, la_m + 1, 1), '>') *DIFFER(SUBSTR(Src, la_m + 1, 2), '->') *$' ';
$'*'   = *$' '  '*' @la_s *DIFFER(SUBSTR(Src, la_s + 1, 2), '->') *$' ';  $'/'  = *$' ' '/'  *$' ';
$'is'  = *$'  ' 'is' *$'  ';
$'*->' = *$' ' '*->' . op_name_ *$' ';
$'as'  = *$'  ' 'as' . op_name_ *$'  ';
$'-->' = *$' ' '-->' *$' ';
$'{'   = *$' '  '{'  *$' ';  $'}'  = *$' ' '}'  *$' ';
Tk_cut = *$' ' '!' *$' ';
$'=:=' = *$' ' '=:=' *$' ';  $'=\=' = *$' ' '=\=' *$' ';
$'=='  = *$' ' '=='  *$' ';  $'\==' = *$' ' '\==' *$' ';
$'>='  = *$' ' '>='  *$' ';  $'=<'  = *$' ' '=<'  *$' ';
$'>'   = *$' ' '>'   *$' ';  $'<'   = *$' ' '<'   *$' ';
$'\='  = *$' ' '\='  *$' ';
$'=..' = *$' ' '=..' *$' ';
$'=@=' = *$' ' '=@=' . op_name_ *$' ';  $'\=@=' = *$' ' '\=@=' . op_name_ *$' ';
$'@>=' = *$' ' '@>=' . op_name_ *$' ';  $'@=<' = *$' ' '@=<' . op_name_ *$' ';
$'@>'  = *$' ' '@>'  . op_name_ *$' ';  $'@<'  = *$' ' '@<'  . op_name_ *$' ';
$'**'  = *$' ' '**'  . op_name_ *$' ';  $'^'   = *$' '  '^'  . op_name_ *$' ';
$'//'  = *$' ' '//'  *$' ';
$'/\' = *$' ' '/\' . op_name_ *$' ';  $'\/' = *$' ' '\/' . op_name_ *$' ';
$'>>'  = *$' ' '>>'  . op_name_ *$' ';  $'<<'  = *$' ' '<<'  . op_name_ *$' ';
$'mod' = *$'  ' 'mod' . op_name_ *$'  ';
$'rem' = *$'  ' 'rem' . op_name_ *$'  ';
$'xor' = *$'  ' 'xor' . op_name_ *$'  ';
$'div' = *$'  ' 'div' . op_name_ *$'  ';
$'rdiv' = *$'  ' 'rdiv' . op_name_ *$'  ';
$'\'   = *$' ' '\' . op_name_;
$'->'  = *$' ' '->' *$' ';
Graphic_first = ANY('\\@#^~?=<>+\-*/:.$&`');
Graphic_rest  = SPAN('\\+\-*/^<>=~?@#&:.$`');
Graphic_atom  = (*Graphic_first FENCE(*Graphic_rest | epsilon));
Graphic_atom2 = (*Graphic_first *Graphic_first FENCE(*Graphic_rest | epsilon));
hex_value = TABLE();
hex_i = 0;
while (LE(hex_i, 35)) {
    hex_value[SUBSTR('0123456789abcdefghijklmnopqrstuvwxyz', hex_i + 1, 1)] = hex_i;
    hex_value[SUBSTR('0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ', hex_i + 1, 1)] = hex_i;
    hex_i = hex_i + 1;
}
ascii_table = TABLE();
ascii_i = 0;
while (LE(ascii_i, 127)) {
    ascii_table[CHAR(ascii_i)] = ascii_i;
    ascii_i = ascii_i + 1;
}
ascii_table["''"] = 39;  ascii_table['\\'] = 92;  ascii_table["\'"] = 39;  ascii_table['\"'] = 34;  ascii_table['\`'] = 96;
ascii_table['\n'] = 10;  ascii_table['\r'] = 13;   ascii_table['\t'] = 9;    ascii_table['\a'] = 7;    ascii_table['\b'] = 8;
ascii_table['\f'] = 12;  ascii_table['\v'] = 11;   ascii_table['\0'] = 0;    ascii_table['\e'] = 27;   ascii_table['\s'] = 32;
/* ==================================================================================================================== */
function unescape_q(raw, out, i, n, c, prev_was_quote) {
    out = '';  n = SIZE(raw);  i = 1;  prev_was_quote = 0;
    while (LE(i, n)) {
        c = SUBSTR(raw, i, 1);
        if (IDENT(c, "'")) {
            if (EQ(prev_was_quote, 1)) { out = out "'";  prev_was_quote = 0; }
            else                       { prev_was_quote = 1; }
        } else {
            if (EQ(prev_was_quote, 1)) { out = out "'";  prev_was_quote = 0; }
            out = out c;
        }
        i = i + 1;
    }
    unescape_q = out;
    return;
}
/* ==================================================================================================================== */
/* radix value helpers — pure computation, no stack ops */
function compute_hex(raw, n, i, len, s) {
    n = 0;  i = 1;  len = SIZE(raw);
    while (LE(i, len)) {
        n = n * 16 + hex_value[SUBSTR(raw, i, 1)];
        i = i + 1;
    }
    (n '') ? SPAN('0123456789') . s;
    compute_hex = s;
    return;
}
/* ==================================================================================================================== */
function compute_bin(raw, n, i, len, s) {
    n = 0;  i = 1;  len = SIZE(raw);
    while (LE(i, len)) {
        n = n * 2 + SUBSTR(raw, i, 1) + 0;
        i = i + 1;
    }
    (n '') ? SPAN('0123456789') . s;
    compute_bin = s;
    return;
}
/* ==================================================================================================================== */
function compute_oct(raw, n, i, len, s) {
    n = 0;  i = 1;  len = SIZE(raw);
    while (LE(i, len)) {
        n = n * 8 + SUBSTR(raw, i, 1) + 0;
        i = i + 1;
    }
    (n '') ? SPAN('0123456789') . s;
    compute_oct = s;
    return;
}
/* ==================================================================================================================== */
/* an integer in radix r (10 for a plain or digit-grouped one): a digit group's _ and blanks have no hex_value and are skipped */
function compute_radix(r, raw, n, i, len, d, s) {
    n = 0;  i = 1;  len = SIZE(raw);
    while (LE(i, len)) {
        d = hex_value[SUBSTR(raw, i, 1)];
        if (DIFFER(d)) n = n * r + d;
        i = i + 1;
    }
    (n '') ? SPAN('0123456789') . s;
    compute_radix = s;
    return;
}
/* ==================================================================================================================== */
/* op/3: the user operator table -- uop_band[name] is the band key ('in700', 'pre500', 'post'); uop_on is FAIL until the first */
/* op/3 goal declares, then the one token pattern, and each site checks its own key by *IDENT at match time; no pattern is built */
uop_band = TABLE();
uop_tok  = *$' ' ((((*Atom | *Graphic_atom) $ uop_tx) . thx) . *Shift('TT_FNC', thx)) *$' ';
uop_on   = FAIL;
op_infix   = epsilon . *OpSwap(3);
op_postfix = epsilon . *OpSwap(2);
/* ==================================================================================================================== */
function OpSwap(n, x, k, f) {
    Reduce('TT_COMPOUND', n);
    x = Pop();  k = c(x);  f = k[1];  k[1] = k[2];  k[2] = f;  Push(x);
    OpSwap = .dummy;
    nreturn;
}
/* ==================================================================================================================== */
function DeclareOp(p, t, n, b) {
    DeclareOp = .dummy;
    if (LE(p, 0)) { uop_band[n] = ;  nreturn; }
    b = 900;  b = LE(p, 700) 700;  b = LE(p, 600) 600;  b = LE(p, 500) 500;  b = LE(p, 400) 400;  b = LE(p, 200) 200;
    if (EQ(SIZE(t), 3))                    uop_band[n] = 'in' b;
    else if (IDENT(SUBSTR(t, 1, 1), 'f'))  uop_band[n] = 'pre' b;
    else                                   uop_band[n] = 'post';
    uop_on = uop_tok;
    nreturn;
}
/* ==================================================================================================================== */
arg       = ( *arg_top | (*Graphic_atom | ';') . b_name . *Shift('TT_FNC', b_name) );
arg_ite   = ( *unify_expr FENCE( *$'->' *arg_ite  . *Reduce('TT_IFTHEN', 2) | epsilon ) );
arg_disj  = ( *arg_ite    FENCE( *$';'  *arg_disj . *Reduce('TT_DISJ', 2) | epsilon ) );
arg_top   = ( *arg_disj   FENCE( *$':-' *arg_disj . *Reduce('TT_CLAUSE', 2) | epsilon ) );
args      = ( epsilon . *IncCounter() *arg FENCE(*args_tail | epsilon) );
args_tail = ( *$',' . *IncCounter() *arg FENCE(*args_tail | epsilon) );
list_body_tail = ( *$',' . *IncCounter() *arg FENCE( *list_body_tail | epsilon ) );
list_body      = ( epsilon . *IncCounter() *arg FENCE( *list_body_tail | epsilon ) );
/* list: nil → TT_MAKELIST(0 children); [h|t] or [h,..] → TT_MAKELIST(n+1: elems then tail) */
list = (    *$'['
            FENCE(
              *$']'                    . *Reduce('TT_MAKELIST', 0)
            | epsilon . *PushCounter()
                  *list_body
                  FENCE( *$'|' *arg
                       | epsilon           . *Reduce('TT_MAKELIST', 0)
                       )
                  *$']'
                                       . *Reduce('TT_MAKELIST', nTop() + 1)
              . *PopCounter()
            )
       );
/* ==================================================================================================================== */
/* primary: leaf atoms, variables, numbers, compound terms, parenthesised expr, list */
primary = (   *Atom . p_name *$'('
                  . *PushCounter()
                  . *Shift('TT_FNC', p_name) . *IncCounter()
                  FENCE(*args | epsilon) *$')'
                  . *Reduce('TT_COMPOUND', nTop())
              . *PopCounter()
          |   *$' ' (*Graphic_atom | ';') . g_name *$'('
                  . *PushCounter()
                  . *Shift('TT_FNC', g_name) . *IncCounter()
                  *args *$')'
                  . *Reduce('TT_COMPOUND', nTop())
              . *PopCounter()
          |   *$' ' '-' *Float . p_negf
                  . *Shift('TT_FLIT', '-' p_negf)
          |   *$' ' '-' *Int . p_negi
                  . *Shift('TT_ILIT', '-' p_negi)
          |   *uop_on *IDENT(uop_band[uop_tx], 'pre200') *primary     . *Reduce('TT_COMPOUND', 2)
          |   *uop_on *IDENT(uop_band[uop_tx], 'pre400') *pow_expr    . *Reduce('TT_COMPOUND', 2)
          |   *uop_on *IDENT(uop_band[uop_tx], 'pre500') *mul_expr    . *Reduce('TT_COMPOUND', 2)
          |   *uop_on *IDENT(uop_band[uop_tx], 'pre600') *add_expr    . *Reduce('TT_COMPOUND', 2)
          |   *uop_on *IDENT(uop_band[uop_tx], 'pre700') *colon_expr  . *Reduce('TT_COMPOUND', 2)
          |   *uop_on *IDENT(uop_band[uop_tx], 'pre900') *unify_expr  . *Reduce('TT_COMPOUND', 2)
          |   *$' ' '\+' *$' ' *unify_expr    . *Reduce('TT_NAF', 1)
          |   (*Graphic_atom2) . thx . *Shift('TT_FNC', thx)
          |   *Tk_cut                  . *Reduce('TT_CUT', 0)
          |   "0'\x" SPAN('0123456789AaBbCcDdEeFf') . p_radix FENCE('\' | epsilon)
                  . *Shift('TT_ILIT', compute_hex(p_radix))
          |   "0'" ("''" | '\' LEN(1) | NOTANY(CHAR(10))) . p_cc
                  . *Shift('TT_ILIT', ascii_table[p_cc])
          |   SPAN('0123456789') . p_rad "'" SPAN('0123456789' &LCASE &UCASE) . p_rdig
                  . *Shift('TT_ILIT', compute_radix(p_rad, p_rdig))
          |   (*Float) . thx . *Shift('TT_FLIT', thx)
          |   '0x' SPAN('0123456789AaBbCcDdEeFf') . p_radix
                  . *Shift('TT_ILIT', compute_hex(p_radix))
          |   '0b' SPAN('01') . p_radix
                  . *Shift('TT_ILIT', compute_bin(p_radix))
          |   '0o' SPAN('01234567') . p_radix
                  . *Shift('TT_ILIT', compute_oct(p_radix))
          |   *Int . p_int
                  . *Shift('TT_ILIT', compute_radix(10, p_int))
          |   (*Atom) . thx . *Shift('TT_FNC', thx)
          |   *Qatom *$'('
                  . *PushCounter()
                  . *Shift('TT_FNC', unescape_q(q_body)) . *IncCounter()
                  *args *$')'
                  . *Reduce('TT_COMPOUND', nTop())
              . *PopCounter()
          |   *Qatom
                  . *Shift('TT_FNC', unescape_q(q_body))
          |   *Str
                  . *Shift('TT_FNC', s_body)
          |   *Var . p_text
                  . *Shift('TT_VAR', p_text)
          |   *$'(' *unify_expr *$')'
          |   *$'(' *unify_expr *$':-' *body *$')'  . *Reduce('TT_CLAUSE', 2)
          |   *$'(' *unify_expr FENCE(*$',' *unify_expr . *Reduce('TT_CONJ', 2) | epsilon) *$'-->' *dcg_body *$')'  . *Reduce('TT_DCG_RULE', 2)
          |   *$'(' *$':-' *body *$')'              . *Reduce('TT_DIRECTIVE', 1)
          |   *$'(' *body *$')'
          |   *$'(' (*Graphic_atom | ';') . b_name *$')'
                  . *Shift('TT_FNC', b_name)
          |   *$'{' *$'}'             . *Reduce('TT_DCG_IL', 0)
          |   *$'{' *body *$'}'       . *Reduce('TT_DCG_IL', 1)
          |   *list
          |   *$'\' *$' ' *primary            . *Reduce('TT_BINOP', 2)
          |   *$' ' '-' *$' ' *primary   . *Reduce('TT_UMINUS', 1)
          |   *$' ' '+' *$' ' *primary   . *Reduce('TT_UPLUS', 1)
          );
pow_expr  = (   *primary
                FENCE( *$'^'  *pow_expr  . *Reduce('TT_BINOP', 2)
                     | *$'**' *primary   . *Reduce('TT_BINOP', 2)
                     | *uop_on *IDENT(uop_band[uop_tx], 'in200') *pow_expr *op_infix
                     | *uop_on *IDENT(uop_band[uop_tx], 'post') *op_postfix
                     | epsilon
                     )
            );
mul_expr  = (   *pow_expr *mul_tail );
mul_tail  = FENCE( FENCE( *$'mod' *pow_expr  . *Reduce('TT_BINOP', 2)
                         | *$'rem' *pow_expr  . *Reduce('TT_BINOP', 2)
                         | *$'div' *pow_expr  . *Reduce('TT_BINOP', 2)
                         | *$'rdiv' *pow_expr . *Reduce('TT_BINOP', 2)
                         | *$'>>'  *pow_expr  . *Reduce('TT_BINOP', 2)
                         | *$'<<'  *pow_expr  . *Reduce('TT_BINOP', 2)
                         | *$'*'   *pow_expr  . *Reduce('TT_MUL', 2)
                         | *$'//'  *pow_expr  . *Reduce('TT_IDIV', 2)
                         | *$'/\'  *pow_expr  . *Reduce('TT_BINOP', 2)
                         | *$'/'   *pow_expr  . *Reduce('TT_DIV', 2)
                         | *uop_on *IDENT(uop_band[uop_tx], 'in400') *pow_expr *op_infix
                         ) *mul_tail | epsilon );
add_expr  = (   *mul_expr *add_tail );
add_tail  = FENCE( FENCE( *$'+' *mul_expr  . *Reduce('TT_ADD', 2)
                         | *$'-' *mul_expr  . *Reduce('TT_SUB', 2)
                         | *$'\/' *mul_expr . *Reduce('TT_BINOP', 2)
                         | *$'xor' *mul_expr . *Reduce('TT_BINOP', 2)
                         | *uop_on *IDENT(uop_band[uop_tx], 'in500') *mul_expr *op_infix
                         ) *add_tail | epsilon );
colon_expr = (  *add_expr
                FENCE( *$':' *colon_expr  . *Reduce('TT_BINOP', 2)
                     | *uop_on *IDENT(uop_band[uop_tx], 'in600') *colon_expr *op_infix
                     | epsilon
                     )
             );
is_expr   = (   *colon_expr
                FENCE( *$'is' *colon_expr  . *Reduce('TT_IS', 2)
                     | epsilon
                     )
            );
cmp_expr  = (   *is_expr
                FENCE( *$'as'  *is_expr  . *Reduce('TT_BINOP', 2)
                     | *$'=@=' *is_expr  . *Reduce('TT_BINOP', 2)
                     | *$'\=@=' *is_expr . *Reduce('TT_BINOP', 2)
                     | *$'=:=' *is_expr  . *Reduce('TT_EQQ', 2)
                     | *$'=\=' *is_expr  . *Reduce('TT_NE2', 2)
                     | *$'\==' *is_expr  . *Reduce('TT_NE3', 2)
                     | *$'@>=' *is_expr  . *Reduce('TT_BINOP', 2)
                     | *$'@=<' *is_expr  . *Reduce('TT_BINOP', 2)
                     | *$'@>'  *is_expr  . *Reduce('TT_BINOP', 2)
                     | *$'@<'  *is_expr  . *Reduce('TT_BINOP', 2)
                     | *$'>='  *is_expr  . *Reduce('TT_GE', 2)
                     | *$'=<'  *is_expr  . *Reduce('TT_LE', 2)
                     | *$'>'   *is_expr  . *Reduce('TT_GT', 2)
                     | *$'<'   *is_expr  . *Reduce('TT_LT', 2)
                     | *$'\='  *is_expr  . *Reduce('TT_NE1', 2)
                     | *$'=='  *is_expr  . *Reduce('TT_ID', 2)
                     | *uop_on *IDENT(uop_band[uop_tx], 'in700') *is_expr  *op_infix
                     | epsilon
                     )
            );
eq_expr    = (  *cmp_expr
                FENCE( *$'=..' *cmp_expr  . *Reduce('TT_UNIV', 2)
                     | *$'='   *cmp_expr  . *Reduce('TT_UNIFY', 2)
                     | epsilon
                     )
             );
unify_expr = ( *eq_expr *op_tail );
op_tail    = FENCE( *uop_on *IDENT(uop_band[uop_tx], 'in900') *eq_expr *op_infix *op_tail | epsilon );
/* ==================================================================================================================== */
pfx_kw_name = (   "dynamic" | "discontiguous" | "meta_predicate" | "multifile"
              |   "module_transparent" | "thread_local" | "volatile"
              |   "initialization" | "thread_initialization" | "public" | "table" | "record"
              );
op_type = ( 'xfx' | 'xfy' | 'yfx' | 'fy' | 'fx' | 'xf' | 'yf' );
op_goal = (   *$' ' 'op' *$'(' . *PushCounter() . *Shift('TT_FNC', 'op') . *IncCounter()
              (*Int $ op_p) . thx . *Shift('TT_ILIT', thx) . *IncCounter() *$','
              (*op_type $ op_t) . thx . *Shift('TT_FNC', thx) . *IncCounter() *$','
              *$' ' ( "'" (BREAK("'") $ op_n . thx) "'" | (*Atom | *Graphic_atom) $ op_n . thx ) . *Shift('TT_FNC', thx) . *IncCounter()
              *$')' epsilon $ *DeclareOp(op_p, op_t, op_n)
              . *Reduce('TT_COMPOUND', nTop()) . *PopCounter()
          );
body_goal = (   *$' ' *pfx_kw_name . pfx_kw *$'  ' *unify_expr
                    . *Reduce('TT_PFX', 1)
            |   *$' ' '\+' *$' ' *body_goal  . *Reduce('TT_NAF', 1)
            |   *op_goal
            |   *unify_expr
            |   *$'(' *body *$')'
            );
conj = (    epsilon . *PushCounter()
                . *IncCounter() *body_goal
                *conj_tail
                                   . *Reduce('TT_CONJ', nTop())
            . *PopCounter()
        );
conj_tail = FENCE( *$',' . *IncCounter() *body_goal *conj_tail | epsilon );
conj_arrow = ( *conj FENCE( *$'->' *conj_arrow  . *Reduce('TT_IFTHEN', 2)  | *$'*->' *conj_arrow  . *Reduce('TT_BINOP', 2)  | epsilon ) );
disj_tail = ( *$';' . *IncCounter() *conj_arrow FENCE( *disj_tail | epsilon ) );
disj = (    epsilon . *PushCounter()
                . *IncCounter() *conj_arrow
                FENCE( *disj_tail | epsilon )
                                   . *Reduce('TT_DISJ', nTop())
            . *PopCounter()
        );
body = *disj;
/* head: reduces to a single TT_COMPOUND node (functor + args as children) */
head = *unify_expr;
dcg_goal = (   *list
           |   *$'{' *body *$'}'       . *Reduce('TT_DCG_IL', 1)
           |   *Tk_cut               . *Reduce('TT_CUT', 0)
           |   *$'(' *dcg_body *$')'
           |   *unify_expr
           );
dcg_conj = (   epsilon . *PushCounter()
                   . *IncCounter() *dcg_goal
                   *dcg_conj_tail
                                      . *Reduce('TT_CONJ', nTop())
               . *PopCounter()
           );
dcg_disj = (   epsilon . *PushCounter()
                   . *IncCounter() *dcg_conj
                   *dcg_disj_tail
                                      . *Reduce('TT_DISJ', nTop())
               . *PopCounter()
           );
dcg_conj_tail = FENCE( *$',' . *IncCounter() *dcg_goal *dcg_conj_tail | epsilon );
dcg_disj_tail = FENCE( *$';' . *IncCounter() *dcg_conj *dcg_disj_tail | epsilon );
dcg_body = *dcg_disj;
/* a pushback after the head is a comma sequence of terms, right-nested as Prolog reads ','(A, ','(B, C)) */
dcg_push  = (   *unify_expr FENCE(*$',' *dcg_push . *Reduce('TT_CONJ', 2) | epsilon) );
dcg_rule  = (   *head FENCE(*$',' *dcg_push . *Reduce('TT_CONJ', 2) | epsilon) *$'-->'
                *dcg_body *$'.'
                                      . *Reduce('TT_DCG_RULE', 2)
            );
clause    = (   *head
                ( *$':-' *body         . *Reduce('TT_CLAUSE', 2)
                | epsilon            . *Reduce('TT_CLAUSE', 1)
                )
                *$'.'
            );
directive = (   *$':-'
                *body *$'.'
                                     . *Reduce('TT_DIRECTIVE', 1)
            );
top_form  = (*directive | *clause | *dcg_rule);
/* ==================================================================================================================== */
/* SCT-pivot (2026-05-17): nInc() must fire AFTER top_form commits, not before. */
Compiland = epsilon . *PushCounter()
            POS(0) ARBNO( FENCE(*$' ' *top_form . *IncCounter()) FLUSH ) *$' ' RPOS(0)
            . *Reduce('Parse', nTop())
            . *PopCounter();
function ParseOne(ptree, i, n_kids) {
    /* SCT-pivot (2026-05-17): strip the trailing nl added by the loop. */
    if (GT(SIZE(Src), 0)) Src = SUBSTR(Src, 1, SIZE(Src) - 1);
    pf_a = TIME();
    InitCounter();
    InitStack();
    if (Src ? *Compiland) {
        ptree = Pop();
        pf_parse = pf_parse + (TIME() - pf_a);
        if (DIFFER(ptree)) {
            i = 1; n_kids = n(ptree);
            while (LE(i, n_kids)) { TreeDump(c(ptree)[i]); i = i + 1; }
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
