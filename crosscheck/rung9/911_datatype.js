'use strict';
const _rt = require(process.env.SNO_RUNTIME || __dirname + '/sno_runtime.js');
const { _vars, _FAIL, _str, _num, _cat, _add, _sub, _mul, _div, _pow,
        _apply, _kw } = _rt;

var goto_v_E001;
var goto_v_END;
var goto_v_E002;
var goto_v_E003;
var goto_v_E004;
var goto_v_START;
var goto_v_END;

/* --- block functions --- */
goto_v_START = function() {
/* line 6 */
    var _v1 = _apply("differ", [_apply("lcase", [_apply("datatype", ["hello"])]), "string"]);
    var _ok1 = (_v1 !== _FAIL);
    if (!_ok1) return goto_v_E001;
    return goto_v__C2;
}

var goto_v__C2;
goto_v__C2 = function() {
/* line 7 */
    var _v3 = "FAIL 911/001: string literal datatype";
    var _ok3 = (_v3 !== _FAIL);
    if (_ok3) {
        _vars["OUTPUT"] = _v3;
    }
    return goto_v_END;
}

goto_v_E001 = function() {
/* line 8 */
/* line 10 */
    var _v4 = _apply("differ", [_apply("lcase", [_apply("datatype", [12])]), "integer"]);
    var _ok4 = (_v4 !== _FAIL);
    if (!_ok4) return goto_v_E002;
    return goto_v__C5;
}

var goto_v__C5;
goto_v__C5 = function() {
/* line 11 */
    var _v6 = "FAIL 911/002: integer datatype";
    var _ok6 = (_v6 !== _FAIL);
    if (_ok6) {
        _vars["OUTPUT"] = _v6;
    }
    return goto_v_END;
}

goto_v_E002 = function() {
/* line 12 */
/* line 14 */
    var _v7 = _apply("differ", [_apply("lcase", [_apply("datatype", ["1.33"])]), "real"]);
    var _ok7 = (_v7 !== _FAIL);
    if (!_ok7) return goto_v_E003;
    return goto_v__C8;
}

var goto_v__C8;
goto_v__C8 = function() {
/* line 15 */
    var _v9 = "FAIL 911/003: real datatype";
    var _ok9 = (_v9 !== _FAIL);
    if (_ok9) {
        _vars["OUTPUT"] = _v9;
    }
    return goto_v_END;
}

goto_v_E003 = function() {
/* line 16 */
/* line 19 */
    var _v10 = _apply("differ", [_apply("lcase", [_apply("datatype", [""])]), "string"]);
    var _ok10 = (_v10 !== _FAIL);
    if (!_ok10) return goto_v_E004;
    return goto_v__C11;
}

var goto_v__C11;
goto_v__C11 = function() {
/* line 20 */
    var _v12 = "FAIL 911/004: null is string";
    var _ok12 = (_v12 !== _FAIL);
    if (_ok12) {
        _vars["OUTPUT"] = _v12;
    }
    return goto_v_END;
}

goto_v_E004 = function() {
/* line 21 */
/* line 23 */
    var _v13 = "PASS 911_datatype (4/4)";
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
if (!goto_v_START) goto_v_START = function() { return null; };

/* --- run --- */
{ var _pc = goto_v_START; while(_pc) _pc = _pc(); }
