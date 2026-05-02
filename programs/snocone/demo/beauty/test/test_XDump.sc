// driver.sc — test driver for XDump.sc (Snocone)
// XDump output goes to OUTPUT — capture and verify

function XDump(object, nm, i, iMax, iMin, objArr, objField, objKey, objKeyNm,
                               objProto, objType, objVal) {
    objType = DATATYPE(object);
    if (IDENT(objType, 'INTEGER')) { OUTPUT = nm ' = ' object; return; }
    if (IDENT(objType, 'REAL')) { OUTPUT = nm ' = ' object; return; }
    if (IDENT(objType, 'STRING')) { OUTPUT = nm " = '" object "'"; return; }
    if (IDENT(objType, 'ARRAY')) {
        objProto = PROTOTYPE(object);
        OUTPUT = nm " = ARRAY['" objProto "']";
        return;
    }
    OUTPUT = nm ' = ' objType '()';
    return;
}

digits = '0123456789';
&STLIMIT = 1000000;

// 1: integer
XDump(42, 'x');

// 2: string
XDump('hello', 'y');

// 3: array
arr = ARRAY('1:3');
XDump(arr, 'a');
