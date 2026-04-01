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
/* line 4 */
    var _v1 = _apply("differ", [_apply("convert", ["12", "integer"]), 12]);
    var _ok1 = (_v1 !== _FAIL);
    if (!_ok1) return goto_v_E001;
    return goto_v__C2;
}

var goto_v__C2;
goto_v__C2 = function() {
/* line 5 */
    var _v3 = "FAIL 910/001: string->integer";
    var _ok3 = (_v3 !== _FAIL);
    if (_ok3) {
        _vars["OUTPUT"] = _v3;
    }
    return goto_v_END;
}

goto_v_E001 = function() {
/* line 6 */
/* line 9 */
    var _v4 = _apply("differ", [_apply("convert", ["2.5", "integer"]), 2]);
    var _ok4 = (_v4 !== _FAIL);
    if (!_ok4) return goto_v_E002;
    return goto_v__C5;
}

var goto_v__C5;
goto_v__C5 = function() {
/* line 10 */
    var _v6 = "FAIL 910/002: real->integer truncation";
    var _ok6 = (_v6 !== _FAIL);
    if (_ok6) {
        _vars["OUTPUT"] = _v6;
    }
    return goto_v_END;
}

goto_v_E002 = function() {
/* line 11 */
/* line 13 */
    var _v7 = _apply("differ", [_apply("convert", [2, "real"]), "2."]);
    var _ok7 = (_v7 !== _FAIL);
    if (!_ok7) return goto_v_E003;
    return goto_v__C8;
}

var goto_v__C8;
goto_v__C8 = function() {
/* line 14 */
    var _v9 = "FAIL 910/003: integer->real";
    var _ok9 = (_v9 !== _FAIL);
    if (_ok9) {
        _vars["OUTPUT"] = _v9;
    }
    return goto_v_END;
}

goto_v_E003 = function() {
/* line 15 */
/* line 17 */
    var _v10 = _apply("differ", [_apply("convert", [".2", "real"]), "0.2"]);
    var _ok10 = (_v10 !== _FAIL);
    if (!_ok10) return goto_v_E004;
    return goto_v__C11;
}

var goto_v__C11;
goto_v__C11 = function() {
/* line 18 */
    var _v12 = "FAIL 910/004: string->real";
    var _ok12 = (_v12 !== _FAIL);
    if (_ok12) {
        _vars["OUTPUT"] = _v12;
    }
    return goto_v_END;
}

goto_v_E004 = function() {
/* line 19 */
/* line 21 */
    var _v13 = "PASS 910_convert (4/4)";
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
