// TDump.sc — Snocone port of TDump.sno

procedure TValue(x,   i) {
    if (~DIFFER(v(x)))               { TValue = '.'; return; }
    if (IDENT(t(x), 'Name'))         { TValue = v(x); return; }
    if (IDENT(t(x), 'float'))        { TValue = v(x); return; }
    if (IDENT(t(x), 'integer'))      { TValue = v(x); return; }
    if (IDENT(t(x), 'bool'))         { TValue = v(x); return; }
    if (IDENT(t(x), 'datetime'))     { TValue = "'" && SqlSQize(v(x)) && "'"; return; }
    if (IDENT(t(x), 'character'))    { TValue = "'" && SqlSQize(v(x)) && "'"; return; }
    if (IDENT(t(x), 'string'))       { TValue = "'" && SqlSQize(v(x)) && "'"; return; }
    if (IDENT(t(x), 'identifier'))   { TValue = v(x); return; }
    if (DIFFER(t(x)))                { TValue = t(x); return; }
    i = 0;
    while (DIFFER(i = LT(i, n(x)) i + 1)) {
        TValue = TValue && (DIFFER(TValue) '.', '') && v(c(x)[i]);
    }
    return;
}

procedure TDump(x, outNm,   i, _t, _lump) {
    TDump = .dummy;
    if (~DIFFER(outNm)) { outNm = .OUTPUT; }
    if (IDENT(REPLACE(DATATYPE(x), &LCASE, &UCASE), 'NAME')) { x = $x; }
    _lump = TLump(x, 140 - GetLevel());
    if (DIFFER(_lump)) { Gen(_lump && nl, outNm); return; }
    if (~IDENT(REPLACE(DATATYPE(x), &LCASE, &UCASE), 'TREE')) {
        Gen(TValue(x) && nl, outNm); return;
    }
    if (t(x) ? (POS(0) && ANY(&UCASE && &LCASE)
                && (SPAN(digits && &UCASE && '_' && &LCASE) | epsilon) && RPOS(0))) {
        _t = t(x);
    } else {
        _t = '"' && t(x) && '"';
    }
    Gen('(' && _t && nl, outNm);
    IncLevel();
    i = 0;
    while (DIFFER(i = LT(i, n(x)) i + 1)) {
        TDump(c(x)[i], outNm);
    }
    DecLevel();
    Gen(')' && nl, outNm);
    return;
}

procedure TLump(x, len,   i, _t, _child) {
    if (~GT(len, 0)) { freturn; }
    if (~DIFFER(x))  { TLump = '()'; return; }
    if (~IDENT(REPLACE(DATATYPE(x), &LCASE, &UCASE), 'TREE')) {
        TLump = TValue(x);
        if (LE(SIZE(TLump), len)) { return; }
        freturn;
    }
    if (t(x) ? (POS(0) && ANY(&UCASE && &LCASE)
                && (SPAN(digits && &UCASE && '_' && &LCASE) | epsilon) && RPOS(0))) {
        _t = t(x);
    } else {
        _t = '"' && t(x) && '"';
    }
    TLump = '(' && _t;
    i = 0;
    while (DIFFER(i = LT(i, n(x)) i + 1)) {
        _child = TLump(c(x)[i], len - SIZE(TLump) - 2);
        if (~DIFFER(_child)) { freturn; }
        TLump = TLump && ' ' && _child;
    }
    TLump = TLump && ')';
    return;
}
