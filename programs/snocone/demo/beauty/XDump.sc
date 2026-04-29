// XDump.sc — Snocone port of XDump.inc
// XDump(object, nm) — generic recursive object-dump for debugging.
//
// Notes for the Snocone port:
//   * Use idiomatic `while (LT(i, iMax)) { i = i + 1; ... }` C-style loops.
//     The SNOBOL4 `i = LT(i, iMax) i + 1` juxtaposition does not compose
//     in Snocone.
//   * Compare DATATYPE results without REPLACE; primitives are already
//     uppercase ('STRING', 'INTEGER', ...) and user types keep their
//     original casing for the user-type fallback.
//   * The user-type field walk uses FIELD/APPLY. In current Snocone these
//     do not iterate `struct` fields cleanly, so the TABLE/ARRAY/primitive
//     branches are the actively-used ones.

procedure XDump(object, nm,   i, iMax, iMin, objArr, objField, objKey, objKeyNm,
                               objProto, objType, objVal) {
    objType = DATATYPE(object);
    if (IDENT(objType, 'CODE'))       { OUTPUT = nm && ' = ' && objType; return; }
    if (IDENT(objType, 'EXPRESSION')) { OUTPUT = nm && ' = ' && objType; return; }
    if (IDENT(objType, 'INTEGER'))    { OUTPUT = nm && ' = ' && object;  return; }
    if (IDENT(objType, 'NAME'))       { OUTPUT = nm && ' = ' && objType; return; }
    if (IDENT(objType, 'PATTERN'))    { OUTPUT = nm && ' = ' && objType; return; }
    if (IDENT(objType, 'REAL'))       { OUTPUT = nm && ' = ' && object;  return; }
    if (IDENT(objType, 'STRING'))     { OUTPUT = nm && ' = ' && Qize(object); return; }
    if (IDENT(objType, 'ARRAY')) {
        objProto = PROTOTYPE(object);
        objProto ? (POS(0) && (('+' | '-' | epsilon) && SPAN(digits)) . iMin && ':'
                            && (('+' | '-' | epsilon) && SPAN(digits)) . iMax && RPOS(0));
        OUTPUT = nm && " = ARRAY['" && objProto && "']";
        i = iMin - 1;
        while (LT(i, iMax)) {
            i = i + 1;
            XDump(object[i], nm && '[' && i && ']');
        }
        return;
    }
    if (IDENT(objType, 'TABLE')) {
        OUTPUT = nm && ' = TABLE';
        objArr = SORT(object);
        if (~DIFFER(objArr)) { return; }
        i = 0;
        while (1) {
            i = i + 1;
            objKey = objArr[i, 1];
            if (~DIFFER(objKey)) { return; }
            objVal = objArr[i, 2];
            if (IDENT(DATATYPE(objKey), 'INTEGER'))    { objKeyNm = objKey; }
            else if (IDENT(DATATYPE(objKey), 'STRING')) { objKeyNm = Qize(objKey); }
            else                                       { objKeyNm = DATATYPE(objKey); }
            XDump(objVal, nm && '[' && objKeyNm && ']');
        }
    }
    // user-defined struct type fallback
    OUTPUT = nm && ' = ' && objType && '()';
    i = 0;
    while (1) {
        i = i + 1;
        objField = FIELD(objType, i);
        if (~DIFFER(objField)) { return; }
        XDump(APPLY(objField, object), objField && '(' && nm && ')');
    }
}
