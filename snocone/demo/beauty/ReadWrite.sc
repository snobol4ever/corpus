//---------------------------------------------------------------------------------------------------
// Read(fileName, rdMapName) - Read the specified file into one string with lines seperated
// by newline characters. Also create a map table indexed by offsets of each line with its
// corresponding line number.
//---------------------------------------------------------------------------------------------------
function Read(fileName, rdMapName,
              rdInput, rdIn, rdLine, rdLineNo, rdMap, rdOfs) {
    if (~INPUT(.rdInput, 8, fileName '[-m10 -l131072]')) freturn;
    rdMap = TABLE();
    rdOfs = 0;
    rdLineNo = 1;
    Read = ;
    while (1) {
        rdMap[rdOfs] = rdLineNo;
        rdLine = ;
        while (rdIn = rdInput) {
            rdLine = rdLine rdIn;
            if (LT(SIZE(rdIn), 131072)) break;
        }
        if (IDENT(rdIn)) {
            ENDFILE(8);
            if (~DIFFER(rdMapName)) return;
            $rdMapName = rdMap;
            return;
        }
        rdLine ? (RPOS(1) cr) = ;
        rdOfs = rdOfs + SIZE(rdLine) + 1;
        rdLineNo = rdLineNo + 1;
        Read = Read rdLine nl;
    }
}
//---------------------------------------------------------------------------------------------------
function Write(fileName, fileStr, wrLine, wrOutput) {
    if (~OUTPUT(.wrOutput, 8, fileName)) freturn;
    while (1) {
        if (fileStr ? (POS(0) RPOS(0))) {
            ENDFILE(8);
            return;
        }
        if (~(fileStr ? (POS(0) BREAK(nl) . wrLine nl) = ))
            if (~(fileStr ? (POS(0) RTAB(0) . wrLine) = ))
                error();
        wrOutput = wrLine;
    }
}
//---------------------------------------------------------------------------------------------------
function LineMap(str, lmMapName, lmLineNo, lmMap, lmOfs, xOfs) {
    lmMap = TABLE();
    lmOfs = 0;
    lmLineNo = 1;
    while (1) {
        lmMap[lmOfs] = lmLineNo;
        if (~(str ? (POS(0) BREAK(nl) nl @xOfs) = )) {
            $lmMapName = lmMap;
            return;
        }
        lmOfs = lmOfs + xOfs;
        lmLineNo = lmLineNo + 1;
    }
}
