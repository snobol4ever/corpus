// trace.sc — Snocone port of trace.inc
// T8Pos(t8Ofs, t8Map) — position formatter using line-map TABLE.
// T8Trace(lvl, str, ofs) — conditional debug trace output.
//
// Globals used: t8Max, t8MaxLine, t8MaxLast, t8MaxPos, t8Line, t8Pos,
//               doDebug, strOfs, t8Map.
// Caller must initialise: doDebug=0, strOfs=0, t8Max=0, t8MaxLine=0,
//                         t8MaxLast=0, t8Map=''.
//
// Conversion notes:
//   +expr (unary plus / numeric coerce) is a no-op in snocone x86 — dropped.
//   Use param name _map to avoid shadowing global t8Map.
//   t8Pos renamed t8Pos_v internally to avoid conflict with procedure name.
//   str POS(0) '?' = '? ' (subject replacement) → SUBSTR workaround.

t8MaxLast = 0;

procedure T8Pos(t8Ofs, _map, i) {
    if (IDENT(_map, '')) {
        T8Pos = LPAD(t8Ofs, 8);
        return;
    }
    i = t8Ofs;
    if (GT(t8Ofs, t8Max)) { t8Max = t8Ofs; }
    while (1) {
        if (~IDENT(_map[i], '')) { break; }
        i = i - 1;
        if (LT(i, 0)) { T8Pos = LPAD(t8Ofs, 8); return; }
    }
    t8Line = _map[i];
    _t8pos = t8Ofs - i + 1;
    i = t8Max;
    while (1) {
        if (~IDENT(_map[i], '')) { break; }
        i = i - 1;
        if (LT(i, 0)) { T8Pos = LPAD(t8Ofs, 8); return; }
    }
    t8MaxLine = _map[i];
    t8MaxPos  = t8Max - i + 1;
    T8Pos = '(' && LPAD(t8MaxLine, 5) && ', ' && LPAD(t8MaxPos, 3) &&
            ', ' && LPAD(t8Line, 5)   && ', ' && LPAD(_t8pos, 3) && ')';
    return;
}

procedure T8Trace(lvl, str, ofs) {
    T8Trace = .dummy;
    if (~GT(doDebug, 0)) { nreturn; }
    if (~LE(lvl, doDebug)) { nreturn; }
    if (~GT(doDebug, 1)) {
        // doDebug == 1: suppress ?-prefixed strings
        if (str ? (POS(0) && '?')) { nreturn; }
        nreturn;
    }
    // doDebug > 1: expand ?-prefix to '? ', else prepend '  '
    if (str ? (POS(0) && '?')) {
        str = '? ' && SUBSTR(str, 2);
    } else {
        str = '  ' && str;
    }
    _t8p = T8Pos(strOfs + ofs, t8Map);
    if (~GE(t8MaxLine, 621)) { nreturn; }
    if (GE(t8Max, t8MaxLast)) { t8MaxLast = t8Max; }
    OUTPUT = _t8p && str;
    nreturn;
}
