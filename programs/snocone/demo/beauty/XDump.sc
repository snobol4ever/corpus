// XDump.sc — Snocone port of XDump.sno — no internal labels

procedure XDump(object, nm,   i, iMax, iMin, objArr, objField, objKey, objKeyNm,
                               objProto, objType, objVal) {
    objType = REPLACE(DATATYPE(object), &LCASE, &UCASE);
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
        while (DIFFER(i = LT(i, iMax) i + 1)) {
            XDump(object[i], nm && '[' && i && ']');
        }
        return;
    }
    if (IDENT(objType, 'TABLE')) {
        OUTPUT = nm && ' = TABLE';
        objArr = SORT(object);
        if (~DIFFER(objArr)) { return; }
        i = 0;
        while (DIFFER(objKey = (i = i + 1, objArr[i, 1]))) {
            objVal = objArr[i, 2];
            if (IDENT(REPLACE(DATATYPE(objKey), &LCASE, &UCASE), 'INTEGER')) {
                objKeyNm = objKey;
            } else if (IDENT(REPLACE(DATATYPE(objKey), &LCASE, &UCASE), 'STRING')) {
                objKeyNm = Qize(objKey);
            } else {
                objKeyNm = DATATYPE(objKey);
            }
            XDump(objVal, nm && '[' && objKeyNm && ']');
        }
        return;
    }
    // user-defined DATA type
    OUTPUT = nm && ' = ' && objType && '()';
    i = 0;
    while (1) {
        i = i + 1;
        objField = FIELD(objType, i);
        if (~DIFFER(objField)) { return; }
        XDump(APPLY(objField, object), objField && '(' && nm && ')');
    }
}
