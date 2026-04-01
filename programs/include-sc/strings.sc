// strings.sc — Snocone string utility library
// Eight pure-value string functions — no subject replacement needed.
//
// Conversion notes:
//   ~IDENT(ch, ' ') inside while() is unreliable (see SC-16 notes).
//   Use DIFFER(ch, ' ') instead — works correctly inside loops.
//   Use a 'found' flag to distinguish "all whitespace" from "no input".

procedure Reverse(s, i, n, out) {
    // Return s reversed character by character.
    n = SIZE(s); out = ''; i = n + 1;
    while (GT(i, 1)) { i = i - 1; out = out && SUBSTR(s, i, 1); }
    Reverse = out; return;
}

procedure TrimLeft(s, i, n, ch, found) {
    // Strip leading spaces and tabs. Returns '' if all whitespace.
    n = SIZE(s); i = 0; found = 0;
    while (LT(i, n)) {
        i = i + 1;
        ch = SUBSTR(s, i, 1);
        if (DIFFER(ch, ' ') && DIFFER(ch, CHAR(9))) { found = 1; break; }
    }
    if (IDENT(found, 0)) { TrimLeft = ''; } else { TrimLeft = SUBSTR(s, i); }
    return;
}

procedure TrimRight(s, i, n, ch, found) {
    // Strip trailing spaces and tabs. Returns '' if all whitespace.
    n = SIZE(s); i = n + 1; found = 0;
    while (GT(i, 1)) {
        i = i - 1;
        ch = SUBSTR(s, i, 1);
        if (DIFFER(ch, ' ') && DIFFER(ch, CHAR(9))) { found = 1; break; }
    }
    if (IDENT(found, 0)) { TrimRight = ''; } else { TrimRight = SUBSTR(s, 1, i); }
    return;
}

procedure Trim(s) {
    // Strip leading and trailing whitespace.
    Trim = TrimLeft(TrimRight(s)); return;
}

procedure StartsWith(s, prefix) {
    // Succeeds if s begins with prefix; freturns otherwise.
    if (IDENT(SUBSTR(s, 1, SIZE(prefix)), prefix)) { return; } else { freturn; }
}

procedure EndsWith(s, suffix, n, sn) {
    // Succeeds if s ends with suffix; freturns otherwise.
    n = SIZE(s); sn = SIZE(suffix);
    if (GT(sn, n)) { freturn; }
    if (IDENT(SUBSTR(s, n - sn + 1, sn), suffix)) { return; } else { freturn; }
}

procedure Split(s, sep, i, n, slen, out_n, start, arr) {
    // Split s on sep → TABLE arr where arr[0]=count, arr[1..n]=parts.
    n = SIZE(s); slen = SIZE(sep); out_n = 0;
    arr = TABLE(); i = 1; start = 1;
    while (LE(i, n)) {
        if (IDENT(SUBSTR(s, i, slen), sep)) {
            out_n = out_n + 1;
            arr[out_n] = SUBSTR(s, start, i - start);
            i = i + slen; start = i;
        } else { i = i + 1; }
    }
    out_n = out_n + 1;
    arr[out_n] = SUBSTR(s, start, n - start + 1);
    arr[0] = out_n;
    Split = arr; return;
}

procedure Join(arr, sep, i, n, out) {
    // Join arr[1..arr[0]] with sep. arr[0] must be the count.
    n = arr[0]; out = ''; i = 0;
    while (LT(i, n)) {
        i = i + 1;
        if (GT(i, 1)) { out = out && sep; }
        out = out && arr[i];
    }
    Join = out; return;
}
