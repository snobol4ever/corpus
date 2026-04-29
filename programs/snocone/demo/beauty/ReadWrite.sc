// ReadWrite.sc — Snocone port of ReadWrite.inc
// Read(fileName, rdMapName)    — read whole file into one string with line-offset map
// Write(fileName, fileStr)     — write multi-line string to file, line by line
// LineMap(str, lmMapName)      — build line-offset map for an in-memory string
//
// Notes for the Snocone port:
//   * Destructive match uses statement form `subj ? (PAT) = ;` (replace match
//     with empty), or `?`-with-capture-into-`subj`. Plain `?` in a predicate
//     does not consume; the `&& ''` tail in the previous translation was a no-op.
//   * `if (~ (subj ? (PAT)))` runs the match but discards captures even on
//     success (a Snocone emitter property). Use positive-form match instead
//     with an explicit else branch.

procedure Read(fileName, rdMapName,   rdInput, rdIn, rdLine, rdLineNo, rdMap, rdOfs) {
    if (~input__(.rdInput, 8, '', fileName)) { freturn; }
    rdMap    = TABLE();
    rdOfs    = 0;
    rdLineNo = 1;
    Read     = '';
    while (1) {
        rdMap[rdOfs] = rdLineNo;
        rdLine = '';
        rdIn = rdInput;
        while (DIFFER(rdIn)) {
            rdLine = rdLine && rdIn;
            if (~LT(SIZE(rdIn), 131072)) { break; }
            rdIn = rdInput;
        }
        if (~DIFFER(rdIn)) {
            ENDFILE(8);
            if (~DIFFER(rdMapName)) { return; }
            $rdMapName = rdMap;
            return;
        }
        rdLine ? (RPOS(1) && cr) = ;
        rdOfs    = rdOfs + SIZE(rdLine) + 1;
        rdLineNo = rdLineNo + 1;
        Read     = Read && rdLine && nl;
    }
}

procedure Write(fileName, fileStr,   wrLine, wrOutput) {
    if (~output__(.wrOutput, 8, '', fileName)) { freturn; }
    while (1) {
        if (fileStr ? (POS(0) && RPOS(0))) {
            ENDFILE(8); return;
        }
        // First try: extract a complete line ending in nl (destructive).
        wrLine = '';
        if (fileStr ? (POS(0) && BREAK(nl) . wrLine && nl)) {
            fileStr ? (POS(0) && BREAK(nl) && nl) = ;
            wrOutput = wrLine;
        } else {
            // No remaining nl — emit the trailing partial line and finish.
            wrLine = '';
            if (fileStr ? (POS(0) && RTAB(0) . wrLine)) {
                fileStr ? (POS(0) && RTAB(0)) = ;
                wrOutput = wrLine;
                ENDFILE(8); return;
            }
            freturn;
        }
    }
}

procedure LineMap(str, lmMapName,   lmLineNo, lmMap, lmOfs, xOfs) {
    lmMap    = TABLE();
    lmOfs    = 0;
    lmLineNo = 1;
    while (1) {
        lmMap[lmOfs] = lmLineNo;
        // Need both: capture cursor after nl, AND consume from str. Two-step.
        xOfs = '';
        if (str ? (POS(0) && BREAK(nl) && nl && @xOfs)) {
            str ? (POS(0) && BREAK(nl) && nl) = ;
            lmOfs    = lmOfs + xOfs;
            lmLineNo = lmLineNo + 1;
        } else {
            $lmMapName = lmMap;
            return;
        }
    }
}
