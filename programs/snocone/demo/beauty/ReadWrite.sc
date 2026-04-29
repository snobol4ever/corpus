// ReadWrite.sc — Snocone port of ReadWrite.sno — no internal labels

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
        rdLine ? (RPOS(1) && cr && '') = ;
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
        if (fileStr ? (POS(0) && BREAK(nl) . wrLine && nl && '')) {
            wrOutput = wrLine;
        } else if (fileStr ? (POS(0) && RTAB(0) . wrLine && '')) {
            wrOutput = wrLine;
            ENDFILE(8); return;
        } else {
            freturn;
        }
    }
}

procedure LineMap(str, lmMapName,   lmLineNo, lmMap, lmOfs, xOfs) {
    lmMap    = TABLE();
    lmOfs    = 0;
    lmLineNo = 1;
    while (str ? (POS(0) && BREAK(nl) && nl && @xOfs && '')) {
        lmMap[lmOfs] = lmLineNo;
        lmOfs    = lmOfs + xOfs;
        lmLineNo = lmLineNo + 1;
    }
    lmMap[lmOfs] = lmLineNo;
    $lmMapName = lmMap;
    return;
}
