// trace.sc — runtime trace emitter, ported verbatim from beauty/trace.sc
// (which is itself a Snocone port of beauty/Trace.inc).
//
// PARSER-SN-INFRA-8 — Snocone-hosted runtime helper.
//
// Two functions, both no-ops when doDebug = 0 (the default set in
// global.sc).  Drivers that want trace output set doDebug > 0 and
// populate t8Map / strOfs before any pattern matches.
//
//   T8Trace(lvl, str, ofs)
//     Emits a single trace line decorated with a position fragment
//     '(maxLine, maxPos, line, pos)' produced by T8Pos.  Silent when
//     doDebug = 0 (the GT(doDebug, 0) guard short-circuits).
//
//   T8Pos(t8Ofs, t8Map)
//     Reverse-walks t8Map (int -> source-line lookup) to convert a
//     character offset into a (line, column) pair.  Updates t8Max as
//     a side effect so T8Trace can suppress trace output that hasn't
//     advanced past the previous high-water mark.
//
// Globals consumed (initialised in global.sc; drivers may override):
//   doDebug   trace verbosity level; 0 = silent
//   t8Map     TABLE() mapping char-offset -> source line number
//   strOfs    offset added to caller-supplied ofs before lookup
//   t8Max     running max char offset seen
//   t8MaxLast previous t8Max snapshot for advancement test
//   (t8MaxLine, t8MaxPos, t8Line, t8Pos are written by T8Pos)

//-----------------------------------------------------------------------------------------------------------------------
// Trace.inc
//---------- ----------------- ----- -------------------------------------------------------- ---------------------------
t8MaxLast = 0;
//-----------------------------------------------------------------------------------------------------------------------
function T8Trace(lvl, str, ofs, t8p) {
    T8Trace = .dummy;
    if (~GT(doDebug, 0)) nreturn;
    if (~LE(lvl, doDebug)) nreturn;
    if (~GT(doDebug, 1)) {
        if (str ? (POS(0) '?')) nreturn;
    } else {
        if (~(str ? (POS(0) '?') = '? '))
            str ? (POS(0)) = '  ';
    }
    t8p = T8Pos(strOfs + ofs, t8Map);
    if (~GE(t8MaxLine, 621)) nreturn;
    if (~(t8MaxLast = GE(t8Max, t8MaxLast) t8Max)) nreturn;
    OUTPUT = t8p str;
    nreturn;
}
//---------- ----------------- ----- -------------------------------------------------------- --------------------------
function T8Pos(t8Ofs, t8Map, i) {
    if (T8Pos = IDENT(t8Map) LPAD(t8Ofs, 8)) return;
    i = +t8Ofs;
    t8Max = GT(t8Ofs, t8Max) +t8Ofs;
    while (i = IDENT(t8Map[i]) i - 1)
        ;
    t8Line = t8Map[i];
    t8Pos = t8Ofs - i + 1;
    i = +t8Max;
    while (i = IDENT(t8Map[i]) i - 1)
        ;
    t8MaxLine = t8Map[i];
    t8MaxPos = t8Max - i + 1;
    T8Pos = '(' LPAD(t8MaxLine, 5)
                ', ' LPAD(t8MaxPos, 3)
                ', ' LPAD(t8Line, 5)
                ', ' LPAD(t8Pos, 3)
                ')';
    return;
}
