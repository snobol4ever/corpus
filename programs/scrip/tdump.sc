// tdump.sc — slim Snocone port of beauty/TDump.inc covering TLump and
// TValue only, with a thin TDump wrapper that just calls TLump on a
// 1024-char line budget (no Gen line-wrap, no ReadWrite output routing).
//
// PARSER-SN-INFRA-3: deliverable stops at "printing the parsed syntax
// tree" — beauty's pp/ss/Gen/ReadWrite/XDump pretty-printer is NOT in
// scope.  TLump returning a one-line string is sufficient for crosscheck
// PASS/FAIL output.
//
// PARSER-SN-INFRA-7: swapped the placeholder "'" v(x) "'" in TValue for
// SqlSQize(v(x)) — strings/characters/datetimes are now properly escaped
// against embedded single quotes.  Requires qize.sc loaded earlier in the
// blob; the dependency is enforced by test_scrip.sh's load order.
//
// PARSER-SN-INFRA-5c — fixed.  eval_code.c::E_KEYWORD now uppercases the
// keyword name and looks it up directly in NV (no spurious '&' prefix),
// so &UCASE / &LCASE inside a function-arg E_SEQ no longer evaluate as
// empty.  Identifier character classes are inlined per beauty source style.

// TValue(x) — leaf-formatter for non-bracketed leaf types.  Returns the
// printable representation of x's value when t(x) is a recognized leaf
// type.  Falls through to t(x) (the type name itself) when the leaf has
// children — that case is then expanded by TLump's bracketed branch.
//
// PARSER-SN-2 extension (cross-pollinates to all six PARSER-* sessions):
// added leaf forms for the scrip IR kinds — E_VAR / E_ILIT / E_QLIT —
// rendered with both type tag and value (e.g. "E_VAR x", "E_ILIT 5",
// "E_QLIT \"hi\"") so a tree-on-stack PARSER produces dump output that
// matches scrip's canonical --dump-parse line-form byte-for-byte.
function TValue(x, i) {
    if (TValue = IDENT(v(x)) ".") { return; }
    if (TValue = IDENT(t(x), 'Name')       v(x))                   { return; }
    if (TValue = IDENT(t(x), 'float')      v(x))                   { return; }
    if (TValue = IDENT(t(x), 'integer')    v(x))                   { return; }
    if (TValue = IDENT(t(x), 'bool')       v(x))                   { return; }
    if (TValue = IDENT(t(x), 'datetime')   "'" SqlSQize(v(x)) "'") { return; }
    if (TValue = IDENT(t(x), 'character')  "'" SqlSQize(v(x)) "'") { return; }
    if (TValue = IDENT(t(x), 'string')     "'" SqlSQize(v(x)) "'") { return; }
    if (TValue = IDENT(t(x), 'identifier') v(x))                   { return; }
    // PARSER-SN: scrip IR leaves — render as "(Tag value)" verbatim.
    // The parens are part of the leaf's canonical printed form (matching
    // scrip --dump-parse output like `(E_VAR x)`); slot-wrappers do
    // NOT add their own parens around child renders, so this self-paren
    // is what makes `:subj (E_VAR x)` come out right.  E_QLIT uses
    // double-quotes (not SqlSQize'd single-quotes) because scrip's
    // --dump-parse uses double-quoted form for string literals.
    if (TValue = IDENT(t(x), 'E_VAR')      '(' t(x) ' ' v(x) ')')        { return; }
    if (TValue = IDENT(t(x), 'E_ILIT')     '(' t(x) ' ' v(x) ')')        { return; }
    if (TValue = IDENT(t(x), 'E_QLIT')     '(' t(x) ' "' v(x) '")')      { return; }
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
//
// PARSER-SN-2 extension: special handling for role-slot wrapper nodes
// (type tag starts with ':').  A 0-child wrapper with type ':foo'
// renders as the bare flag ":foo" (e.g. ":eq").  A 1-child wrapper
// with type ':foo' renders as ":foo " followed by the child's TLump
// (e.g. ":subj (E_VAR x)").  This is how the shared tree machinery
// encodes scrip's --dump-parse role keywords without extending the
// tree(t,v,n,c) shape itself.  All six PARSER-* sessions can share
// this convention.
function TLump(x, len, i, t, sub) {
    if (~GT(len, 0)) { freturn; }
    if (TLump = IDENT(x) '()') { return; }
    // Role-slot / flag wrapper: type tag starts with ':'.
    if (~(t(x) ? (POS(0) ':'))) { goto TLump_normal; }
    // 0 children → bare flag, e.g. ":eq".
    if (~DIFFER(n(x))) {
        TLump = t(x);
        if (LE(SIZE(TLump), len)) { return; }
        freturn;
    }
    // 1 child → ":role child" — the child's own TLump/TValue is
    // responsible for any parens it needs (IR-leaf kinds like E_VAR
    // self-paren; bare-Name leaves like END render without parens).
    // Stage the recursive call's result in `sub` first; assigning
    // `TLump = TLump TLump(...)` on one line confuses Snocone's
    // function-result variable across the recursive frame boundary.
    if (IDENT(n(x), 1)) {
        TLump = t(x) ' ';
        sub = TLump(c(x)[1], len - SIZE(TLump));
        if (~DIFFER(sub)) { freturn; }
        TLump = TLump sub;
        if (LE(SIZE(TLump), len)) { return; }
        freturn;
    }
    // Multiple children — fall through to normal bracketed render.
TLump_normal:
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
