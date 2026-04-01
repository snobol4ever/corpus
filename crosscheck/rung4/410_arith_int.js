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
    var _v1 = _apply("differ", [_add(3, 2), 5]);
    var _ok1 = (_v1 !== _FAIL);
    if (!_ok1) return goto_v_E001;
    return goto_v__C2;
}

var goto_v__C2;
goto_v__C2 = function() {
/* line 5 */
    var _v3 = "FAIL 410/001: 3+2";
    var _ok3 = (_v3 !== _FAIL);
    if (_ok3) {
        _vars["OUTPUT"] = _v3;
    }
    return goto_v_END;
}

goto_v_E001 = function() {
/* line 6 */
/* line 7 */
    var _v4 = _apply("differ", [_sub(3, 2), 1]);
    var _ok4 = (_v4 !== _FAIL);
    if (!_ok4) return goto_v_E002;
    return goto_v__C5;
}

var goto_v__C5;
goto_v__C5 = function() {
/* line 8 */
    var _v6 = "FAIL 410/002: 3-2";
    var _ok6 = (_v6 !== _FAIL);
    if (_ok6) {
        _vars["OUTPUT"] = _v6;
    }
    return goto_v_END;
}

goto_v_E002 = function() {
/* line 9 */
/* line 10 */
    var _v7 = _apply("differ", [_mul(3, 2), 6]);
    var _ok7 = (_v7 !== _FAIL);
    if (!_ok7) return goto_v_E003;
    return goto_v__C8;
}

var goto_v__C8;
goto_v__C8 = function() {
/* line 11 */
    var _v9 = "FAIL 410/003: 3*2";
    var _ok9 = (_v9 !== _FAIL);
    if (_ok9) {
        _vars["OUTPUT"] = _v9;
    }
    return goto_v_END;
}

goto_v_E003 = function() {
/* line 12 */
/* line 13 */
    var _v10 = _apply("differ", [_div(5, 2), 2]);
    var _ok10 = (_v10 !== _FAIL);
    if (!_ok10) return goto_v_E004;
    return goto_v__C11;
}

var goto_v__C11;
goto_v__C11 = function() {
/* line 14 */
    var _v12 = "FAIL 410/004: 5/2 integer division";
    var _ok12 = (_v12 !== _FAIL);
    if (_ok12) {
        _vars["OUTPUT"] = _v12;
    }
    return goto_v_END;
}

goto_v_E004 = function() {
/* line 15 */
/* line 16 */
    var _v13 = _apply("differ", [_pow(2, 3), 8]);
    var _ok13 = (_v13 !== _FAIL);
    if (!_ok13) return goto_v_E005;
    return goto_v__C14;
}

var goto_v__C14;
goto_v__C14 = function() {
/* line 17 */
    var _v15 = "FAIL 410/005: 2**3";
    var _ok15 = (_v15 !== _FAIL);
    if (_ok15) {
        _vars["OUTPUT"] = _v15;
    }
    return goto_v_END;
}

goto_v_E005 = function() {
/* line 18 */
/* line 21 */
    var _v16 = _apply("differ", [_add("3", 2), 5]);
    var _ok16 = (_v16 !== _FAIL);
    if (!_ok16) return goto_v_E006;
    return goto_v__C17;
}

var goto_v__C17;
goto_v__C17 = function() {
/* line 22 */
    var _v18 = "FAIL 410/006: string+int coerce";
    var _ok18 = (_v18 !== _FAIL);
    if (_ok18) {
        _vars["OUTPUT"] = _v18;
    }
    return goto_v_END;
}

goto_v_E006 = function() {
/* line 23 */
/* line 24 */
    var _v19 = _apply("differ", [_add(3, "-2"), 1]);
    var _ok19 = (_v19 !== _FAIL);
    if (!_ok19) return goto_v_E007;
    return goto_v__C20;
}

var goto_v__C20;
goto_v__C20 = function() {
/* line 25 */
    var _v21 = "FAIL 410/007: int+neg-string";
    var _ok21 = (_v21 !== _FAIL);
    if (_ok21) {
        _vars["OUTPUT"] = _v21;
    }
    return goto_v_END;
}

goto_v_E007 = function() {
/* line 26 */
/* line 27 */
    var _v22 = _apply("differ", [_add("1", "0"), 1]);
    var _ok22 = (_v22 !== _FAIL);
    if (!_ok22) return goto_v_E008;
    return goto_v__C23;
}

var goto_v__C23;
goto_v__C23 = function() {
/* line 28 */
    var _v24 = "FAIL 410/008: string+string coerce";
    var _ok24 = (_v24 !== _FAIL);
    if (_ok24) {
        _vars["OUTPUT"] = _v24;
    }
    return goto_v_END;
}

goto_v_E008 = function() {
/* line 29 */
/* line 32 */
    var _v25 = _apply("differ", [_add(5, ""), 5]);
    var _ok25 = (_v25 !== _FAIL);
    if (!_ok25) return goto_v_E009;
    return goto_v__C26;
}

var goto_v__C26;
goto_v__C26 = function() {
/* line 33 */
    var _v27 = "FAIL 410/009: null addend is zero";
    var _ok27 = (_v27 !== _FAIL);
    if (_ok27) {
        _vars["OUTPUT"] = _v27;
    }
    return goto_v_END;
}

goto_v_E009 = function() {
/* line 34 */
/* line 36 */
    var _v28 = "PASS 410_arith_int (9/9)";
    var _ok28 = (_v28 !== _FAIL);
    if (_ok28) {
        _vars["OUTPUT"] = _v28;
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
