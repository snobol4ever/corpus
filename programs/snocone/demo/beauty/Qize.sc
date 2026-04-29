// Qize.sc — Snocone port of Qize.inc
// Quote-ize routines: turn a raw byte string into a SNOBOL4 source-level
// expression that re-creates it.
//
//   Qize(s)     — robust quote-ize, picks ' or " or named char-vars to fit
//   SQize(s)    — single-quote-ize (escape "'" by switching to double-quoted "'")
//   DQize(s)    — double-quote-ize (mirror of SQize for ")
//   SqlSQize(s) — SQL single-quote-ize: double "''" any embedded "'"
//   Intize(qq)  — un-quote a SNOBOL4-quoted string, processing \-escapes
//   LEQ, Ucvt   — small helpers
//
// Notes for the Snocone port:
//   * Destructive scan-and-strip uses the statement form `subj ? (PAT) = ;`
//     (replace match with empty), or capture-the-rest into `subj` via
//     `RTAB(0) . subj`. The `&& ''` tail in the previous translation was a
//     no-op and left `str` unchanged → infinite loop.
//   * QizeWierd is the set of "weird" characters (whitespace + bSlash) that
//     can never appear inside a SNOBOL4 string literal and must be emitted
//     via their named CHAR-vars.

procedure LEQ(a, b) {
    if (~DIFFER(a, b)) { LEQ = a; return; }
    if (LLT(a, b))     { LEQ = a; return; }
    freturn;
}

procedure Ucvt(hex2) {
    Ucvt = CHAR(INTEGER('0X' && hex2));
    return;
}

QizeWierd = bSlash && bs && ff && nl && cr && tab;

procedure Qize(str,   part) {
    if (~DIFFER(str)) { Qize = "''"; return; }
    while (DIFFER(str)) {
        if (DIFFER(Qize)) { Qize = Qize && ' '; }
        // Branch 1: leading "weird" char — emit as named CHAR-var.
        part = '';
        str ? (POS(0) && (bSlash | bs | ff | nl | cr | tab) . part) = ;
        if (DIFFER(part)) {
            if      (IDENT(part, bSlash)) { Qize = Qize && 'bSlash'; }
            else if (IDENT(part, bs))     { Qize = Qize && 'bs'; }
            else if (IDENT(part, ff))     { Qize = Qize && 'ff'; }
            else if (IDENT(part, nl))     { Qize = Qize && 'nl'; }
            else if (IDENT(part, cr))     { Qize = Qize && 'cr'; }
            else if (IDENT(part, tab))    { Qize = Qize && 'tab'; }
        }
        // Branch 2: leading run that includes a '"' but no "'" → wrap in '...'.
        else if (str ? (POS(0)
                     && (BREAK('"' && "'" && QizeWierd) && '"'
                         && ARBNO(NOTANY("'" && QizeWierd))) . part
                     && RTAB(0) . str)) {
            Qize = Qize && "'" && part && "'";
        }
        // Branch 3: leading run that includes a "'" but no '"' → wrap in "...".
        else if (str ? (POS(0)
                     && (BREAK("'" && '"' && QizeWierd) && "'"
                         && ARBNO(NOTANY('"' && QizeWierd))) . part
                     && RTAB(0) . str)) {
            Qize = Qize && '"' && part && '"';
        }
        // Branch 4: leading non-weird run (no quotes, no whitespace).
        else if (str ? (POS(0) && BREAK(QizeWierd) . part) = ) {
            Qize = Qize && "'" && part && "'";
        }
        // Branch 5: rest of string is short or pure ' — single-quote and finish.
        else {
            part = str;
            Qize = Qize && "'" && part && "'";
            str = '';
        }
    }
    return;
}

procedure SQize(str,   part) {
    if (~DIFFER(str)) { return; }
    while (DIFFER(str)) {
        if (DIFFER(SQize)) { SQize = SQize && ' '; }
        part = '';
        if (str ? (POS(0) && BREAK("'") . part && "'") = ) {
            SQize = SQize && "'" && part && "'" && ' "' && "'" && '"';
        } else {
            part = str;
            SQize = SQize && "'" && part && "'";
            str = '';
        }
    }
    return;
}

procedure DQize(str,   part) {
    if (~DIFFER(str)) { return; }
    while (DIFFER(str)) {
        if (DIFFER(DQize)) { DQize = DQize && ' '; }
        part = '';
        if (str ? (POS(0) && BREAK('"') . part && '"') = ) {
            DQize = DQize && '"' && part && '"' && " '" && '"' && "'";
        } else {
            part = str;
            DQize = DQize && '"' && part && '"';
            str = '';
        }
    }
    return;
}

procedure SqlSQize(str,   part) {
    SqlSQize = '';
    while (DIFFER(str)) {
        part = '';
        if (str ? (POS(0) && BREAK("'") . part && "'") = ) {
            SqlSQize = SqlSQize && part && "''";
        } else {
            SqlSQize = SqlSQize && str;
            str = '';
        }
    }
    return;
}

procedure Intize(qqstr,   iq, qqdlm) {
    Intize = '';
    qqdlm = '';
    if (~(qqstr ? (POS(0) && ("'" | '"') . qqdlm) = )) { freturn; }
    while (1) {
        // End-of-string marker (closing delim)?
        if (qqstr ? (POS(0) && *qqdlm && RPOS(0))) { return; }
        // Backslash escape?
        if (qqstr ? (POS(0) && bSlash) = ) {
            iq = '';
            if      (qqstr ? (POS(0) && bSlash) = ) { Intize = Intize && bSlash; }
            else if (qqstr ? (POS(0) && '"')    = ) { Intize = Intize && '"'; }
            else if (qqstr ? (POS(0) && "'")    = ) { Intize = Intize && "'"; }
            else if (qqstr ? (POS(0) && 'b')    = ) { Intize = Intize && bs; }
            else if (qqstr ? (POS(0) && 'f')    = ) { Intize = Intize && ff; }
            else if (qqstr ? (POS(0) && 'n')    = ) { Intize = Intize && lf; }
            else if (qqstr ? (POS(0) && 'r')    = ) { Intize = Intize && cr; }
            else if (qqstr ? (POS(0) && 't')    = ) { Intize = Intize && tab; }
            else if (qqstr ? (POS(0) && 'u' && '00' && LEN(2) . iq) = ) {
                Intize = Intize && Ucvt(iq);
            } else if (qqstr ? (POS(0) && 'u' && LEN(4) . iq) = ) {
                Intize = Intize && bSlash && 'u' && iq;
            } else {
                freturn;
            }
        } else {
            // Plain run up to next backslash or closing delim.
            iq = '';
            if (qqstr ? (POS(0) && BREAK(*qqdlm && bSlash) . iq) = ) {
                Intize = Intize && iq;
            } else {
                freturn;
            }
        }
    }
}

procedure Extize(str) {
    return;
}
