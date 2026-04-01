'use strict';
const _rt = require(process.env.SNO_RUNTIME || __dirname + '/sno_runtime.js');
const { _vars, _FAIL, _str, _num, _cat, _add, _sub, _mul, _div, _pow,
        _apply, _kw } = _rt;

var goto_v_E001;
var goto_v_END;
var goto_v_E002;
var goto_v_E003;
var goto_v_E004;
var goto_v_E005;
var goto_v_E006;
var goto_v_E007;
var goto_v_E008;
var goto_v_E009;
var goto_v_START;
var goto_v_END;

/* --- block functions --- */
goto_v_START = function() {
/* line 4 */
    var _v1 = _apply("array", [3]);
    var _ok1 = (_v1 !== _FAIL);
    if (_ok1) {
        _vars["A"] = _v1;
    }
/* line 7 */
    var _v2 = _apply("differ", [/* unimpl E_44 */null]);
    var _ok2 = (_v2 !== _FAIL);
    if (!_ok2) return goto_v_E001;
    return goto_v__C3;
}

var goto_v__C3;
goto_v__C3 = function() {
/* line 8 */
    var _v4 = "FAIL 1110/001: array element init null";
    var _ok4 = (_v4 !== _FAIL);
    if (_ok4) {
        _vars["OUTPUT"] = _v4;
    }
    return goto_v_END;
}

goto_v_E001 = function() {
/* line 9 */
/* line 12 */
    var _v5 = "4.5";
    var _ok5 = (_v5 !== _FAIL);
    if (_ok5) {
    }
/* line 13 */
    var _v6 = _apply("differ", [/* unimpl E_44 */null, "4.5"]);
    var _ok6 = (_v6 !== _FAIL);
    if (!_ok6) return goto_v_E002;
    return goto_v__C7;
}

var goto_v__C7;
goto_v__C7 = function() {
/* line 14 */
    var _v8 = "FAIL 1110/002: array assign/read";
    var _ok8 = (_v8 !== _FAIL);
    if (_ok8) {
        _vars["OUTPUT"] = _v8;
    }
    return goto_v_END;
}

goto_v_E002 = function() {
/* line 15 */
/* line 18 */
    var _v9 = /* unimpl E_44 */null;
    var _ok9 = (_v9 !== _FAIL);
    if (!_ok9) return goto_v_E003;
    return goto_v__C10;
}

var goto_v__C10;
goto_v__C10 = function() {
/* line 19 */
    var _v11 = "FAIL 1110/003: OOB high should fail";
    var _ok11 = (_v11 !== _FAIL);
    if (_ok11) {
        _vars["OUTPUT"] = _v11;
    }
    return goto_v_END;
}

goto_v_E003 = function() {
/* line 20 */
/* line 23 */
    var _v12 = /* unimpl E_44 */null;
    var _ok12 = (_v12 !== _FAIL);
    if (!_ok12) return goto_v_E004;
    return goto_v__C13;
}

var goto_v__C13;
goto_v__C13 = function() {
/* line 24 */
    var _v14 = "FAIL 1110/004: OOB zero should fail";
    var _ok14 = (_v14 !== _FAIL);
    if (_ok14) {
        _vars["OUTPUT"] = _v14;
    }
    return goto_v_END;
}

goto_v_E004 = function() {
/* line 25 */
/* line 28 */
    var _v15 = _apply("differ", [_apply("prototype", [_vars["A"]]), "3"]);
    var _ok15 = (_v15 !== _FAIL);
    if (!_ok15) return goto_v_E005;
    return goto_v__C16;
}

var goto_v__C16;
goto_v__C16 = function() {
/* line 29 */
    var _v17 = "FAIL 1110/005: prototype(array(3))=3";
    var _ok17 = (_v17 !== _FAIL);
    if (_ok17) {
        _vars["OUTPUT"] = _v17;
    }
    return goto_v_END;
}

goto_v_E005 = function() {
/* line 30 */
/* line 33 */
    var _v18 = _apply("array", ["3"]);
    var _ok18 = (_v18 !== _FAIL);
    if (_ok18) {
        _vars["B"] = _v18;
    }
/* line 34 */
    var _v19 = "x";
    var _ok19 = (_v19 !== _FAIL);
    if (_ok19) {
    }
/* line 35 */
    var _v20 = _apply("differ", [/* unimpl E_44 */null, "x"]);
    var _ok20 = (_v20 !== _FAIL);
    if (!_ok20) return goto_v_E006;
    return goto_v__C21;
}

var goto_v__C21;
goto_v__C21 = function() {
/* line 36 */
    var _v22 = "FAIL 1110/006: array from string dim";
    var _ok22 = (_v22 !== _FAIL);
    if (_ok22) {
        _vars["OUTPUT"] = _v22;
    }
    return goto_v_END;
}

goto_v_E006 = function() {
/* line 37 */
/* line 40 */
    var _v23 = _apply("differ", [_apply("prototype", [_vars["B"]]), "3"]);
    var _ok23 = (_v23 !== _FAIL);
    if (!_ok23) return goto_v_E007;
    return goto_v__C24;
}

var goto_v__C24;
goto_v__C24 = function() {
/* line 41 */
    var _v25 = "FAIL 1110/007: prototype string-dim array";
    var _ok25 = (_v25 !== _FAIL);
    if (_ok25) {
        _vars["OUTPUT"] = _v25;
    }
    return goto_v_END;
}

goto_v_E007 = function() {
/* line 42 */
/* line 45 */
    var _v26 = "3.14";
    var _ok26 = (_v26 !== _FAIL);
    if (_ok26) {
    }
/* line 46 */
    var _v27 = _apply("differ", [/* unimpl E_44 */null, "3.14"]);
    var _ok27 = (_v27 !== _FAIL);
    if (!_ok27) return goto_v_E008;
    return goto_v__C28;
}

var goto_v__C28;
goto_v__C28 = function() {
/* line 47 */
    var _v29 = "FAIL 1110/008: array stores real";
    var _ok29 = (_v29 !== _FAIL);
    if (_ok29) {
        _vars["OUTPUT"] = _v29;
    }
    return goto_v_END;
}

goto_v_E008 = function() {
/* line 48 */
/* line 51 */
    var _v30 = "z";
    var _ok30 = (_v30 !== _FAIL);
    if (_ok30) {
    }
/* line 52 */
    var _v31 = _apply("differ", [/* unimpl E_44 */null, "z"]);
    var _ok31 = (_v31 !== _FAIL);
    if (!_ok31) return goto_v_E009;
    return goto_v__C32;
}

var goto_v__C32;
goto_v__C32 = function() {
/* line 53 */
    var _v33 = "FAIL 1110/009: array stores string";
    var _ok33 = (_v33 !== _FAIL);
    if (_ok33) {
        _vars["OUTPUT"] = _v33;
    }
    return goto_v_END;
}

goto_v_E009 = function() {
/* line 54 */
/* line 56 */
    var _v34 = "PASS 1110_array_1d (9/9)";
    var _ok34 = (_v34 !== _FAIL);
    if (_ok34) {
        _vars["OUTPUT"] = _v34;
    }
    return goto_v_END;
}

goto_v_END = function() {
    return null;
}

/* --- undefined label stubs --- */
if (!goto_v_START) goto_v_START = function() { return null; };

/* --- run --- */
{ var _pc = goto_v_START; while(_pc) _pc = _pc(); }
