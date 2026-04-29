// TDump.sc — Snocone port of TDump.inc
// TValue(x)         — short string form of node x's value (or recursive concat for compound)
// TDump(x, outNm)   — emit tree x to outNm (default OUTPUT) one-per-line indented
// TLump(x, len)     — try to format tree x as a single line of length ≤ len; fail if too long
//
// Notes for the Snocone port:
//   * Loops use idiomatic `while (cond) { ... i = i + 1; ... }` — the SNOBOL4
//     `i = LT(i, n) i + 1` juxtaposition does not compose in Snocone.
//   * Tree-vs-leaf detection uses `IDENT(DATATYPE(x), 'tree')` — in SNOBOL4
//     this was the deferred-eval `NULL *IDENT(n(x))` trick, catching the
//     field-access error on non-tree arguments.
//   * The `(DIFFER(t) '.', '')` SNOBOL4 conditional-value form does not parse
//     in Snocone; we expand it inline with an if/else instead.

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
    // Compound: walk children, separator '.' between pieces.
    i = 0;
    while (LT(i, n(x))) {
        i = i + 1;
        if (DIFFER(TValue)) {
            TValue = TValue && '.' && v(c(x)[i]);
        } else {
            TValue = v(c(x)[i]);
        }
    }
    return;
}

procedure TDump(x, outNm,   i, _t, _lump) {
    TDump = .dummy;
    if (~DIFFER(outNm)) { outNm = .OUTPUT; }
    if (IDENT(DATATYPE(x), 'NAME')) { x = $x; }
    _lump = TLump(x, 140 - GetLevel());
    if (DIFFER(_lump)) { Gen(_lump && nl, outNm); return; }
    // Not a tree (or no children) — emit value form.
    if (~IDENT(DATATYPE(x), 'tree')) {
        Gen(TValue(x) && nl, outNm); return;
    }
    // Multi-line tree form.
    if (t(x) ? (POS(0) && ANY(&UCASE && &LCASE)
                && (SPAN(digits && &UCASE && '_' && &LCASE) | epsilon) && RPOS(0))) {
        _t = t(x);
    } else {
        _t = '"' && t(x) && '"';
    }
    Gen('(' && _t && nl, outNm);
    IncLevel();
    i = 0;
    while (LT(i, n(x))) {
        i = i + 1;
        TDump(c(x)[i], outNm);
    }
    DecLevel();
    Gen(')' && nl, outNm);
    return;
}

procedure TLump(x, len,   i, _t, _child) {
    if (~GT(len, 0)) { freturn; }
    if (~DIFFER(x))  { TLump = '()'; return; }
    if (~IDENT(DATATYPE(x), 'tree')) {
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
    while (LT(i, n(x))) {
        i = i + 1;
        _child = TLump(c(x)[i], len - SIZE(TLump) - 2);
        if (~DIFFER(_child)) { freturn; }
        TLump = TLump && ' ' && _child;
    }
    TLump = TLump && ')';
    return;
}
