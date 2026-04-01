'use strict';
const _rt = require(process.env.SNO_RUNTIME || __dirname + '/sno_runtime.js');
const { _vars, _FAIL, _str, _num, _cat, _add, _sub, _mul, _div, _pow,
        _apply, _kw } = _rt;

var goto_v_REF_A_END;
var goto_v_REF_A;
var goto_v_NRETURN;
var goto_v_E001;
var goto_v_END;
var goto_v_E002;
var goto_v_E003;
var goto_v_START;
var goto_v_END;

/* --- block functions --- */
goto_v_START = function() {
/* line 4 */
    var _v1 = _apply("define", ["ref_a()"]);
    var _ok1 = (_v1 !== _FAIL);
    return goto_v_REF_A_END;
}

goto_v_REF_A = function() {
/* line 5 */
    var _v2 = _vars["A"];
    var _ok2 = (_v2 !== _FAIL);
    if (_ok2) {
        _vars["REF_A"] = _v2;
    }
    return goto_v_NRETURN;
}

goto_v_REF_A_END = function() {
/* line 6 */
/* line 8 */
    var _v3 = 27;
    var _ok3 = (_v3 !== _FAIL);
    if (_ok3) {
        _vars["A"] = _v3;
    }
/* line 11 */
    var _v4 = _apply("differ", [_apply("ref_a", []), 27]);
    var _ok4 = (_v4 !== _FAIL);
    if (!_ok4) return goto_v_E001;
    return goto_v__C5;
}

var goto_v__C5;
goto_v__C5 = function() {
/* line 12 */
    var _v6 = "FAIL 1013/001: nreturn read gives value";
    var _ok6 = (_v6 !== _FAIL);
    if (_ok6) {
        _vars["OUTPUT"] = _v6;
    }
    return goto_v_END;
}

goto_v_E001 = function() {
/* line 13 */
/* line 16 */
    var _v7 = 26;
    var _ok7 = (_v7 !== _FAIL);
    if (_ok7) {
    }
    if (_ok7) return goto_v_E002;
    return goto_v__C8;
}

var goto_v__C8;
goto_v__C8 = function() {
/* line 17 */
    var _v9 = "FAIL 1013/002: nreturn lvalue assign failed";
    var _ok9 = (_v9 !== _FAIL);
    if (_ok9) {
        _vars["OUTPUT"] = _v9;
    }
    return goto_v_END;
}

goto_v_E002 = function() {
/* line 18 */
/* line 20 */
    var _v10 = _apply("differ", [_vars["A"], 26]);
    var _ok10 = (_v10 !== _FAIL);
    if (!_ok10) return goto_v_E003;
    return goto_v__C11;
}

var goto_v__C11;
goto_v__C11 = function() {
/* line 21 */
    var _v12 = "FAIL 1013/003: a updated via nreturn";
    var _ok12 = (_v12 !== _FAIL);
    if (_ok12) {
        _vars["OUTPUT"] = _v12;
    }
    return goto_v_END;
}

goto_v_E003 = function() {
/* line 22 */
/* line 24 */
    var _v13 = "PASS 1013_func_nreturn (3/3)";
    var _ok13 = (_v13 !== _FAIL);
    if (_ok13) {
        _vars["OUTPUT"] = _v13;
    }
    return goto_v_END;
}

goto_v_END = function() {
    return null;
}

/* --- undefined label stubs --- */
if (!goto_v_NRETURN) goto_v_NRETURN = function() { return null; };
if (!goto_v_START) goto_v_START = function() { return null; };

/* --- run --- */
{ var _pc = goto_v_START; while(_pc) _pc = _pc(); }
