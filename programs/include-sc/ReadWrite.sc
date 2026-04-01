// ReadWrite.sc — Snocone port of ReadWrite.inc
// Depends: global.sc (nl, cr)
// Read(fileName, rdMapName) — reads file into one string, builds line-offset map.
// Write(fileName, fileStr)  — writes string to file line-by-line.
// LineMap(str, lmMapName)   — builds offset→lineNo TABLE for a string.
//
// Conversion notes:
//   Subject replacement (str pat =) → SUBSTR restart approach for LineMap.
//   File I/O (INPUT/OUTPUT channel binding) → freturn on open failure.
//   ENDFILE(n) → omitted (no equivalent needed in snocone x86 runtime).

procedure LineMap(str, lmMapName, lmLineNo, lmMap, lmAbs, i, n, ch) {
    lmMap = TABLE();
    lmLineNo = 1;
    lmAbs = 0;
    n = SIZE(str);
    lmMap[0] = lmLineNo;
    i = 0;
    while (1) {
        i = i + 1;
        if (GT(i, n)) { break; }
        ch = SUBSTR(str, i, 1);
        if (IDENT(ch, nl)) {
            lmAbs = lmAbs + i;
            lmLineNo = lmLineNo + 1;
            lmMap[lmAbs] = lmLineNo;
            str = SUBSTR(str, i + 1);
            n = SIZE(str);
            i = 0;
        }
    }
    $lmMapName = lmMap;
    return;
}

procedure Read(fileName, rdMapName, rdMap, rdOfs, rdLineNo, rdContent, rdLine) {
    // Attempt to open file — freturn if inaccessible
    INPUT(.rdContent, 8, fileName);
    if (~DIFFER(rdContent)) { freturn; }
    rdMap = TABLE();
    rdOfs = 0;
    rdLineNo = 1;
    Read = '';
    rdMap[0] = rdLineNo;
    while (1) {
        rdLine = rdContent;
        if (~DIFFER(rdLine)) { break; }
        Read = Read && rdLine && nl;
        rdOfs = rdOfs + SIZE(rdLine) + 1;
        rdLineNo = rdLineNo + 1;
        rdMap[rdOfs] = rdLineNo;
    }
    if (DIFFER(rdMapName)) { $rdMapName = rdMap; }
    return;
}

procedure Write(fileName, fileStr, wrLine, wrOutput, i, n, ch) {
    OUTPUT(.wrOutput, 8, fileName);
    if (~DIFFER(wrOutput)) { freturn; }
    // Write line by line splitting on nl
    n = SIZE(fileStr);
    wrLine = '';
    i = 0;
    while (1) {
        i = i + 1;
        if (GT(i, n)) {
            if (DIFFER(wrLine)) { wrOutput = wrLine; }
            break;
        }
        ch = SUBSTR(fileStr, i, 1);
        if (IDENT(ch, nl)) {
            wrOutput = wrLine;
            wrLine = '';
        } else {
            wrLine = wrLine && ch;
        }
    }
    return;
}
