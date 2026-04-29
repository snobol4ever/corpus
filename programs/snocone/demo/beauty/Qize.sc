// Qize.sc — Snocone port of Qize.sno — no internal labels

procedure LEQ(a, b) {
    if (~DIFFER(a, b)) { LEQ = a; return; }
    if (LLT(a, b))     { LEQ = a; return; }
    freturn;
}

procedure Ucvt(hex2) {
    Ucvt = CHAR(INTEGER('0X' && hex2));
    return;
}

procedure Qize(str,   part) {
    if (~DIFFER(str)) { Qize = "''"; return; }
    while (DIFFER(str)) {
        if (DIFFER(Qize)) { Qize = Qize && ' '; }
        if (str ? (POS(0) && (bSlash | bs | ff | nl | cr | tab) . part && '')) {
            if      (IDENT(part, bSlash)) { Qize = Qize && 'bSlash'; }
            else if (IDENT(part, bs))     { Qize = Qize && 'bs'; }
            else if (IDENT(part, ff))     { Qize = Qize && 'ff'; }
            else if (IDENT(part, nl))     { Qize = Qize && 'nl'; }
            else if (IDENT(part, cr))     { Qize = Qize && 'cr'; }
            else if (IDENT(part, tab))    { Qize = Qize && 'tab'; }
        } else if (str ? (POS(0) && (BREAK('"' && "'" && bSlash && bs && ff && nl && cr && tab)
                   && '"' && ARBNO(NOTANY("'" && bSlash && bs && ff && nl && cr && tab))) . part
                   && RTAB(0) . str)) {
            Qize = Qize && "'" && part && "'";
        } else if (str ? (POS(0) && (BREAK("'" && '"' && bSlash && bs && ff && nl && cr && tab)
                   && "'" && ARBNO(NOTANY('"' && bSlash && bs && ff && nl && cr && tab))) . part
                   && RTAB(0) . str)) {
            Qize = Qize && '"' && part && '"';
        } else if (str ? (POS(0) && BREAK(bSlash && bs && ff && nl && cr && tab) . part && '')) {
            Qize = Qize && "'" && part && "'";
        } else {
            str ? (POS(0) && REM . part && '');
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
        if (str ? (POS(0) && BREAK("'") . part && "'" && '')) {
            SQize = SQize && "'" && part && "'" && ' "' && "'" && '"';
        } else {
            str ? (POS(0) && REM . part && '');
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
        if (str ? (POS(0) && BREAK('"') . part && '"' && '')) {
            DQize = DQize && '"' && part && '"' && " '" && '"' && "'";
        } else {
            str ? (POS(0) && REM . part && '');
            DQize = DQize && '"' && part && '"';
            str = '';
        }
    }
    return;
}

procedure SqlSQize(str,   part) {
    while (str ? (POS(0) && BREAK("'") . part && "'" && '')) {
        SqlSQize = SqlSQize && part && "''";
    }
    str ? (POS(0) && REM . part && '');
    SqlSQize = SqlSQize && part;
    return;
}

procedure Intize(qqstr,   iq, qqdlm) {
    if (~(qqstr ? (POS(0) && ("'" | '"') . qqdlm))) { freturn; }
    while (1) {
        if (qqstr ? (POS(0) && bSlash && '')) {
            if      (qqstr ? (POS(0) && bSlash && '')) { Intize = Intize && bSlash; }
            else if (qqstr ? (POS(0) && '"'    && '')) { Intize = Intize && '"'; }
            else if (qqstr ? (POS(0) && "'"    && '')) { Intize = Intize && "'"; }
            else if (qqstr ? (POS(0) && 'b'    && '')) { Intize = Intize && bs; }
            else if (qqstr ? (POS(0) && 'f'    && '')) { Intize = Intize && ff; }
            else if (qqstr ? (POS(0) && 'n'    && '')) { Intize = Intize && lf; }
            else if (qqstr ? (POS(0) && 'r'    && '')) { Intize = Intize && cr; }
            else if (qqstr ? (POS(0) && 't'    && '')) { Intize = Intize && tab; }
            else if (qqstr ? (POS(0) && 'u' && '00' && LEN(2) . iq && '')) {
                Intize = Intize && Ucvt(iq);
            } else if (qqstr ? (POS(0) && 'u' && LEN(4) . iq && '')) {
                Intize = Intize && bSlash && 'u' && iq;
            }
        } else if (qqstr ? (POS(0) && BREAK(*qqdlm && bSlash) . iq && '')) {
            Intize = Intize && iq;
        } else if (qqstr ? (POS(0) && *qqdlm && RPOS(0))) {
            return;
        } else {
            freturn;
        }
    }
}

procedure Extize(str) {
    return;
}
