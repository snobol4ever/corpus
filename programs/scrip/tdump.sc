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
    // PARSER-RB-2: E_NUL before the empty-value "." check.
    if (TValue = IDENT(t(x), 'E_NUL') '(E_NUL)')                           { return; }
    // PARSER-PR-8d: E_CUT has empty value but must render as (E_CUT), not ".".
    if (TValue = IDENT(t(x), 'E_CUT') '(E_CUT)')                           { return; }
    // PARSER-SN-5: E_QLIT with empty value must render as `(E_QLIT "")`,
    // not the placeholder dot.  Oracle --dump-parse always emits the
    // typed quoted form even for empty replacements (`S 'a' = ` →
    // `:repl (E_QLIT "")`).  Must come BEFORE the empty-v(x) "." check.
    // PARSER-RK-5: value rendered through CQize (qize.sc) so backslashes,
    // embedded quotes, and \n/\r/\t are escaped to match the oracle's
    // src/ir/ir_print.c::print_escaped output byte-for-byte.
    if (TValue = IDENT(t(x), 'E_QLIT')     '(' t(x) ' "' CQize(v(x)) '")')      { return; }
    if (TValue = IDENT(t(x), 'E_CSET')     '(' t(x) ' "' CQize(v(x)) '")')      { return; }
    // E_FLIT: normalize trailing '.' from REAL() formatting (e.g. '100.' -> '100').
    // REAL() in Snocone produces '100.' for integral values like 1.0e2; oracle
    // uses C printf %g which omits the trailing dot.  Strip only when the value
    // is all-digits followed by a lone trailing dot; RPOS(0) works here (top level).
    if (IDENT(t(x), 'E_FLIT')) {
        fval = '' v(x);
        // Strip trailing '.' (e.g. '100.' -> '100'): capture digit prefix into pre,
        // then check if prefix is one char shorter than fval (meaning only '.' remains).
        // Avoids RPOS/LEN (RS-27 bug) and IDENT type mismatch (real vs string).
        fval SPAN(digits) . pre;
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
    // PARSER-SN-FW-1: generic IR-leaf branch — covers any kind whose type
    // tag starts with a letter and contains only letters/digits/underscore,
    // AND whose v(x) is non-empty.  Renders as "(TAG value)" — the canonical
    // self-paren form matching scrip's --dump-parse output.  Examples:
    //   E_VAR x     → (E_VAR x)
    //   E_ILIT 5    → (E_ILIT 5)
    //   IC_VAR foo  → (IC_VAR foo)
    //   PL_TERM bar → (PL_TERM bar)
    // Slot-wrappers do NOT add their own parens, so this self-paren is
    // what makes `:subj (E_VAR x)` come out right.
    // The per-kind E_VAR / E_ILIT branches are removed — generic catches them.
    if (DIFFER(v(x))) {
        if (t(x) ? (POS(0) ANY(&UCASE &LCASE) (SPAN(&UCASE &LCASE digits '_') | epsilon) RPOS(0))) {
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
    // 0 children → bare flag (e.g. ":eq", ":end") or label-valued flag
    // (e.g. ":goS LOOP", ":goF DONE", ":go NEXT").
    // When v(x) is non-empty the flag carries a target label; render as
    // ":tag label".  This is needed for PARSER-SN-4 goto slots.
    if (~DIFFER(n(x))) {
        if (DIFFER(v(x))) {
            TLump = t(x) ' ' v(x);
        } else {
            TLump = t(x);
        }
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
    // n>=2 with ':' prefix → ":role (child1 child2 ...)" — parenthesized
    // child list, convention picked from --dump-parse probe (PARSER-SN-FW-2).
    // Stage each child in `sub` to avoid the function-name-slot wart (FW-5).
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
    // Non-':' tags fall through to normal bracketed render.
TLump_normal:
    if (DIFFER(n(x))) { goto TLump0; }
    TLump = TValue(x);
    // typed 0-child node with empty v renders as tag only via TValue (e.g. 'STMT'),
    // but oracle emits bracketed form '(STMT)'.  Re-route through TLump0 when
    // TValue returned only the tag name (no value, no children).
    if (IDENT(TLump, t(x))) { goto TLump0; }
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
    // PARSER-IC-0 (cross-pollinates to all six PARSER-* sessions): when an
    // internal node carries a non-empty sval (v(x)), emit it as a label
    // immediately after the type tag — matches ir_print_node's generic-case
    // behaviour ("(KIND sval child1 child2 ...)").  Used by Icon's E_FNC
    // (function-name label), and reserved for future kinds with the same
    // convention.  Existing PARSER-* fixtures all pass v='' on internal
    // nodes, so this branch is a no-op for them.
    if (DIFFER(v(x))) {
        // E_FLIT: strip trailing '.' from REAL() output so oracle %g format matches.
        // e.g. '100.' -> '100'; '3.14' and '0.2' are unchanged (no trailing dot).
        // RPOS(0) works correctly here (regular return function, not nreturn).
        if (IDENT(t(x), 'E_FLIT')) {
            fval = '' v(x);
            fval SPAN(digits) . pre;
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

// TDump(x, outNm) — Gen-based recursive tree dump.  Tries TLump(x, 140 -
// GetLevel()) for an inline single-line form first (via Gen which flushes on
// nl); if TLump fails (tree too wide), falls back to multi-line indented form
// with IncLevel/DecLevel/recursive TDump — identical to beauty/TDump.sc.
//
// PARSER-SC-INFRA-1: upgraded from the INFRA-3 thin wrapper (TLump 1024) to
// the full Gen-based version.  Requires gen.sc loaded before tdump.sc.
// outNm defaults to .OUTPUT; callers may pass an alternate output variable.
//
// TValue and TLump carry all PARSER-* extensions unchanged (role-slot ':',
// E_QLIT double-quote branch, generic IR-leaf, PARSER-IC-0 internal sval).
function TDump(x, outNm, i, t) {
    outNm = IDENT(outNm) .OUTPUT;
    x = IDENT(DATATYPE(x), 'NAME') $x;
    if (Gen(TLump(x, 140 - GetLevel()) nl, outNm)) return;
    // PARSER-IC-3 fix: original `~(NULL *IDENT(n(x)))` was a no-op.  A
    // pattern-construction expression (NULL concatenated with a deferred
    // call) cannot fail at construction time — `~(pattern_value)` is
    // therefore always FAIL, the if-condition always succeeds, and we
    // ALWAYS enter the multi-line branch.  But the intent (per the
    // commented-out alternative `// | *IDENT(t(x), '.')`) is "internal
    // node, not a leaf" — i.e. n(x) is non-null.  Use DIFFER directly.
    // This bug never triggered before IC-3 because every prior PARSER-*
    // tree fit inside the 140-char one-line TLump budget; IC-3's
    // if/then/else trees are the first to exceed it and exercise the
    // multi-line fallback.  Verified at session #62 — see GOAL-PARSER-ICON.md.
    if (DIFFER(n(x))) {
        // Role-slot wrapper (':'-prefix tag) — mirror TLump's special
        // handling so the multi-line fallback renders identically to
        // the inline form.  `:role (child1 child2 ...)` for n>=2,
        // `:role child` for n=1 (no parens around the role).  Without
        // this, a wide tree like `(STMT :subj (E_FNC main ...))` falls
        // back to multi-line and the `:subj` slot gets quoted as
        // `":subj"` because the bare-identifier regex below rejects ':'.
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
                     (SPAN(&UCASE &LCASE digits '_') | epsilon) RPOS(0))))
            t = '"' t(x) '"';
        else
            t = t(x);
        // PARSER-IC-3 fix: emit internal-node sval after the type tag
        // (mirrors TLump's `if (DIFFER(v(x))) TLump = TLump ' ' v(x)`).
        // Without this, `(E_FNC main ...)` came out as `(E_FNC ...)` —
        // dropping the procedure-name label that scrip's --dump-ir emits.
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
