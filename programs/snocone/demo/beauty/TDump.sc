//---------------------------------------------------------------------------------------------------
// TDump(x) - Recursive routine to dump tree x to output in a lisp-like parenthetical
// representation. Uses TLump(x, len) to build string for output on one line, but if it will
// not fit then uses multiple line format.
//
// TLump(x) - Recursive function to return as a string tree x in a
// lisp-like parenthetical representation.
//---------------------------------------------------------------------------------------------------
function TValue(x, i) {
    // DIFFER(t(x), '.') :F(TValue3)
    if (TValue = IDENT(v(x)) ".")               return;
    if (TValue = IDENT(t(x), 'Name')       v(x))                       return;
    if (TValue = IDENT(t(x), 'float')      v(x))                       return;
    if (TValue = IDENT(t(x), 'integer')    v(x))                       return;
    if (TValue = IDENT(t(x), 'bool')       v(x))                       return;
    if (TValue = IDENT(t(x), 'datetime')   "'" SqlSQize(v(x)) "'")     return;
    if (TValue = IDENT(t(x), 'character')  "'" SqlSQize(v(x)) "'")     return;
    if (TValue = IDENT(t(x), 'string')     "'" SqlSQize(v(x)) "'")     return;
    if (TValue = IDENT(t(x), 'identifier') v(x))                       return;
    if (TValue = t(x))                                                 return;
    i = 0;
    while (i = LT(i, n(x)) i + 1)
        TValue = TValue (DIFFER(TValue) '.', '') v(c(x)[i]);
    return;
}
//---------------------------------------------------------------------------------------------------
function TDump(x, outNm, i, t) {
    outNm = IDENT(outNm) .OUTPUT;
    x = IDENT(DATATYPE(x), 'NAME') $x;
    if (Gen(TLump(x, 140 - GetLevel()) nl, outNm)) return;
    if (~(NULL *IDENT(n(x)))) {                  //  | *IDENT(t(x), '.')
        if (~(t(x) ? (POS(0) ANY(&UCASE &LCASE)
                     (SPAN(digits &UCASE '_' &LCASE) | epsilon) RPOS(0))))
            t = '"' t(x) '"';
        else
            t = t(x);
        Gen('(' t nl, outNm);
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
//---------------------------------------------------------------------------------------------------
function TLump(x, len, i, t) {
    if (~GT(len, 0)) freturn;
    if (TLump = IDENT(x) '()') return;
    if (NULL *IDENT(n(x))) {                     //  | *IDENT(t(x), '.')
        TLump = TValue(x);
        if (LE(SIZE(TLump), len)) return;
        freturn;
    }
    TLump = '(';
    if (~(t(x) ? (POS(0) ANY(&UCASE &LCASE)
                 (SPAN(digits &UCASE '_' &LCASE) | epsilon) RPOS(0))))
        t = '"' t(x) '"';
    else
        t = t(x);
    TLump = TLump t;
    i = 0;
    while (i = LT(i, n(x)) i + 1)
        if (~(TLump = TLump ' ' TLump(c(x)[i], len - SIZE(TLump) - 2)))
            freturn;
    TLump = TLump ')';
    return;
}
