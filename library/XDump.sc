//-----------------------------------------------------------------------------------------------------------------------
// XDump(object, nm) - Generic SNOBOL4 object dump routine. This recursive routine is useful
// from within the debugger or as debug code sprinkled throughout the SNOBOL4 application.
// Needs to be enhanced to handle 2+ dimensional arrays.
//-----------------------------------------------------------------------------------------------------------------------
function XDump(object, nm,
               i, iMax, iMin, objArr, objField, objKey, objKeyNm, objProto, objType, objVal) {
    objType = DATATYPE(object);
    if (IDENT(objType, 'CODE'))       { OUTPUT = nm ' = ' objType;        return; }
    if (IDENT(objType, 'EXPRESSION')) { OUTPUT = nm ' = ' objType;        return; }
    if (IDENT(objType, 'INTEGER'))    { OUTPUT = nm ' = ' object;         return; }
    if (IDENT(objType, 'NAME'))       { OUTPUT = nm ' = ' objType;        return; }
    if (IDENT(objType, 'PATTERN'))    { OUTPUT = nm ' = ' objType;        return; }
    if (IDENT(objType, 'REAL'))       { OUTPUT = nm ' = ' object;         return; }
    if (IDENT(objType, 'STRING'))     { OUTPUT = nm ' = ' Qize(object);   return; }
    if (IDENT(objType, 'ARRAY')) {
        objProto = PROTOTYPE(object);
        objProto ? (POS(0)
                   (('+' | '-' | epsilon) SPAN(digits)) . iMin ':'
                   (('+' | '-' | epsilon) SPAN(digits)) . iMax
                   RPOS(0));
        OUTPUT = nm ' = ' "ARRAY['" objProto "']";
        i = iMin - 1;
        while (i = LT(i, iMax) i + 1)
            XDump(object[i], nm '[' i ']');
        return;
    }
    if (IDENT(objType, 'TABLE')) {
        OUTPUT = nm ' = ' 'TABLE';
        // objArr = CONVERT(object, 'ARRAY') :F(RETURN)
        if (~(objArr = SORT(object))) return;
        i = 0;
        while (1) {
            i = i + 1;
            if (~(objKey = objArr[i, 1])) return;
            objVal = objArr[i, 2];
            if (~(objKeyNm = IDENT(DATATYPE(objKey), 'INTEGER') objKey))
                if (~(objKeyNm = IDENT(DATATYPE(objKey), 'STRING') Qize(objKey)))
                    objKeyNm = DATATYPE(objKey);
            XDump(objVal, nm '[' objKeyNm ']');
        }
    }
    OUTPUT = nm ' = ' objType '()';
    i = 0;
    while (1) {
        i = i + 1;
        if (~(objField = FIELD(objType, i))) return;
        XDump(APPLY(objField, object), objField '(' nm ')');
    }
}
