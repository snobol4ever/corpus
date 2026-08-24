// driver.sc — test driver for TDump.sc (Snocone)
// Tests TLump (single-line) — TDump uses Gen which buffers, harder to verify

struct tree { t, v, n, c }

function TValue(x, i) {
    if (IDENT(v(x))) { TValue = '.'; }
    else if (IDENT(t(x), 'integer')) { TValue = v(x); return; }
    else if (IDENT(t(x), 'string')) { TValue = "'" v(x) "'"; return; }
    else if (DIFFER(t(x))) { TValue = t(x); return; }
    i = 0;
    while (LT(i, n(x))) {
        i = i + 1;
        if (DIFFER(TValue)) { TValue = TValue '.' v(c(x)[i]); }
        else { TValue = v(c(x)[i]); }
    }
    return;
}

function TLump(x, len, i, _t, _child) {
    if (~GT(len, 0)) { freturn; }
    if (IDENT(x)) { TLump = '()'; return; }
    if (IDENT(n(x))) {
        TLump = TValue(x);
        if (LE(SIZE(TLump), len)) { return; }
        freturn;
    }
    if (t(x) ? (POS(0) ANY(&UCASE &LCASE)
                  (SPAN(digits &UCASE '_' &LCASE) | epsilon) RPOS(0))) {
        _t = t(x);
    } else {
        _t = '"' t(x) '"';
    }
    TLump = '(' _t;
    i = 0;
    while (LT(i, n(x))) {
        i = i + 1;
        _child = TLump(c(x)[i], len - SIZE(TLump) - 2);
        if (IDENT(_child)) { freturn; }
        TLump = TLump ' ' _child;
    }
    TLump = TLump ')';
    return;
}

digits = '0123456789';
&STLIMIT = 1000000;

// 1: TValue on integer leaf
leaf1 = tree('integer', '42', '', '');
if (IDENT(TValue(leaf1), '42')) { OUTPUT = 'PASS: 1 TValue integer'; }
else { OUTPUT = 'FAIL: 1 TValue integer got=' TValue(leaf1); }

// 2: TValue on string leaf
leaf2 = tree('string', 'hi', '', '');
if (IDENT(TValue(leaf2), "'hi'")) { OUTPUT = 'PASS: 2 TValue string'; }
else { OUTPUT = 'FAIL: 2 TValue string got=' TValue(leaf2); }

// 3: TLump on null returns ()
if (IDENT(TLump('', 100), '()')) { OUTPUT = 'PASS: 3 TLump null'; }
else { OUTPUT = 'FAIL: 3 TLump null got=' TLump('', 100); }

// 4: TLump on integer leaf
if (IDENT(TLump(leaf1, 100), '42')) { OUTPUT = 'PASS: 4 TLump integer leaf'; }
else { OUTPUT = 'FAIL: 4 TLump integer leaf got=' TLump(leaf1, 100); }

// 5: TLump fails when len too small
r = TLump(leaf1, 1);
if (IDENT(r, '')) { OUTPUT = 'PASS: 5 TLump fails on tight len'; }
else { OUTPUT = 'FAIL: 5 TLump tight len got=' r; }

// 6: TLump on tree node
arr = ARRAY('1:1');
arr[1] = leaf1;
node = tree('Add', '', 1, arr);
if (IDENT(TLump(node, 100), '(Add 42)')) { OUTPUT = 'PASS: 6 TLump tree'; }
else { OUTPUT = 'FAIL: 6 TLump tree got=' TLump(node, 100); }
