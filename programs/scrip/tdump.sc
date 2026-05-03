// tdump.sc — slim Snocone port of beauty/TDump.inc covering TLump and
// TValue only, with a thin TDump wrapper that just calls TLump on a
// 1024-char line budget (no Gen line-wrap, no ReadWrite output routing).
//
// PARSER-SN-INFRA-3: deliverable stops at "printing the parsed syntax
// tree" — beauty's pp/ss/Gen/ReadWrite/XDump pretty-printer is NOT in
// scope.  TLump returning a one-line string is sufficient for crosscheck
// PASS/FAIL output.
//
// TODO(INFRA-7): swap the placeholder "'" v(x) "'" in TValue for proper
// SqlSQize(v(x)) once Qize.sc lands.  Until then, strings/characters/
// datetimes are not quote-escaped.
//
// PARSER-SN-INFRA-5c — fixed.  eval_code.c::E_KEYWORD now uppercases the
// keyword name and looks it up directly in NV (no spurious '&' prefix),
// so &UCASE / &LCASE inside a function-arg E_SEQ no longer evaluate as
// empty.  Identifier character classes are inlined per beauty source style.

// TValue(x) — leaf-formatter for non-bracketed leaf types.  Returns the
// printable representation of x's value when t(x) is a recognized leaf
// type.  Falls through to t(x) (the type name itself) when the leaf has
// children — that case is then expanded by TLump's bracketed branch.
function TValue(x, i) {
    if (TValue = IDENT(v(x)) ".") { return; }
    if (TValue = IDENT(t(x), 'Name')       v(x))           { return; }
    if (TValue = IDENT(t(x), 'float')      v(x))           { return; }
    if (TValue = IDENT(t(x), 'integer')    v(x))           { return; }
    if (TValue = IDENT(t(x), 'bool')       v(x))           { return; }
    if (TValue = IDENT(t(x), 'datetime')   "'" v(x) "'")   { return; }  // TODO INFRA-7: SqlSQize
    if (TValue = IDENT(t(x), 'character')  "'" v(x) "'")   { return; }  // TODO INFRA-7: SqlSQize
    if (TValue = IDENT(t(x), 'string')     "'" v(x) "'")   { return; }  // TODO INFRA-7: SqlSQize
    if (TValue = IDENT(t(x), 'identifier') v(x))           { return; }
    TValue = t(x);
    i = 0;
    while (i = LT(i, n(x)) i + 1) {
        TValue = TValue (DIFFER(TValue) '.', '') v(c(x)[i]);
    }
    return;
}

// TLump(x, len) — one-line lisp-paren string for tree x.  Recursive:
// leaf → TValue, internal node → "(t child1 child2 ...)".  Fails when
// the cumulative size exceeds len; callers that need always-success
// invoke with a generous budget (TDump uses 1024).
function TLump(x, len, i, t) {
    if (~GT(len, 0)) { freturn; }
    if (TLump = IDENT(x) '()') { return; }
    if (DIFFER(n(x))) { goto TLump0; }
    TLump = TValue(x);
    if (LE(SIZE(TLump), len)) { return; }
    freturn;
TLump0:
    TLump = '(';
    if (t(x) ? (POS(0) ANY(&UCASE &LCASE) (SPAN(digits &UCASE '_' &LCASE) | '') RPOS(0))) {
        t = t(x);
    } else {
        t = '"' t(x) '"';
    }
    TLump = TLump t;
    i = 0;
    while (i = LT(i, n(x)) i + 1) {
        if (~(TLump = TLump ' ' TLump(c(x)[i], len - SIZE(TLump) - 2))) { freturn; }
    }
    TLump = TLump ')';
    return;
}

// TDump(x) — INFRA-3 thin wrapper.  Beauty's TDump uses Gen() to wrap
// long lines across multiple OUTPUT calls; here we just emit one long
// line via TLump with a generous budget.  INFRA-3 deliverable stops at
// printing the tree; line-wrap is not in scope for crosscheck output.
function TDump(x) {
    OUTPUT = TLump(x, 1024);
    return;
}
