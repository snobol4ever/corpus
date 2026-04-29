// trace.sc — Snocone port of trace.inc
//
// T8Trace / T8Pos: position-tracking trace helpers used by omega.sc when
// xTrace > 0 / doDebug > 0. Globals (doDebug, t8Map, strOfs, t8Max,
// t8MaxLine, t8MaxPos, t8Line, t8Pos) are assumed defined elsewhere.

t8MaxLast = 0;

procedure T8Trace(lvl, str, ofs,   t8p) {
    T8Trace = .dummy;
    if (~GT(doDebug, 0))      { nreturn; }
    if (~LE(lvl, doDebug))    { nreturn; }
    if (~GT(doDebug, 1)) {
        // doDebug == 1: only show '?' lines
        if (str ? (POS(0) && '?')) { } else { nreturn; }
    } else {
        // doDebug > 1: prefix '? ' or '  '
        if (str ? (POS(0) && '?')) {
            str ? (POS(0) && '?') = '? ';
        } else {
            str ? (POS(0)) = '  ';
        }
    }
    t8p = T8Pos(strOfs + ofs, t8Map);
    if (~GE(t8MaxLine, 621))                  { nreturn; }
    if (GE(t8Max, t8MaxLast)) { t8MaxLast = t8Max; } else { nreturn; }
    OUTPUT = t8p && str;
    nreturn;
}

procedure T8Pos(t8Ofs, t8Map,   i) {
    if (IDENT(t8Map)) { T8Pos = LPAD(t8Ofs, 8); return; }
    i = +t8Ofs;
    if (GT(t8Ofs, t8Max)) { t8Max = +t8Ofs; }
    while (IDENT(t8Map[i])) { i = i - 1; }
    t8Line = t8Map[i];
    t8Pos  = t8Ofs - i + 1;
    i = +t8Max;
    while (IDENT(t8Map[i])) { i = i - 1; }
    t8MaxLine = t8Map[i];
    t8MaxPos  = t8Max - i + 1;
    T8Pos = '(' && LPAD(t8MaxLine, 5)
                && ', ' && LPAD(t8MaxPos, 3)
                && ', ' && LPAD(t8Line, 5)
                && ', ' && LPAD(t8Pos, 3)
                && ')';
    return;
}
