'use strict';
const _rt = require(process.env.SNO_RUNTIME || __dirname + '/sno_runtime.js');
const { _vars, _FAIL, _str, _num, _cat, _add, _sub, _mul, _div, _pow,
        _apply, _kw } = _rt;

var goto_v_E001;
var goto_v_END;
var goto_v_E002;
var goto_v_E003;
var goto_v_START;
var goto_v_END;

/* --- block functions --- */
goto_v_START = function() {
/* line 4 */
    var _v1 = _apply("differ", [_cat("a", "b"), "ab"]);
    var _ok1 = (_v1 !== _FAIL);
    if (!_ok1) return goto_v_E001;
    return goto_v__C2;
}

var goto_v__C2;
goto_v__C2 = function() {
/* line 5 */
    var _v3 = "FAIL 310/001: two-string concat";
    var _ok3 = (_v3 !== _FAIL);
    if (_ok3) {
        _vars["OUTPUT"] = _v3;
    }
    return goto_v_END;
}

goto_v_E001 = function() {
/* line 6 */
/* line 8 */
    var _v4 = _apply("differ", [_cat("a", "b", "c"), "abc"]);
    var _ok4 = (_v4 !== _FAIL);
    if (!_ok4) return goto_v_E002;
    return goto_v__C5;
}

var goto_v__C5;
goto_v__C5 = function() {
/* line 9 */
    var _v6 = "FAIL 310/002: three-string concat";
    var _ok6 = (_v6 !== _FAIL);
    if (_ok6) {
        _vars["OUTPUT"] = _v6;
    }
    return goto_v_END;
}

goto_v_E002 = function() {
/* line 10 */
/* line 13 */
    var _v7 = _apply("differ", [_cat(_cat("hello", " "), "world"), "hello world"]);
    var _ok7 = (_v7 !== _FAIL);
    if (!_ok7) return goto_v_E003;
    return goto_v__C8;
}

var goto_v__C8;
goto_v__C8 = function() {
/* line 14 */
    var _v9 = "FAIL 310/003: left-associative concat";
    var _ok9 = (_v9 !== _FAIL);
    if (_ok9) {
        _vars["OUTPUT"] = _v9;
    }
    return goto_v_END;
}

goto_v_E003 = function() {
/* line 15 */
/* line 17 */
    var _v10 = "PASS 310_concat_strings (3/3)";
    var _ok10 = (_v10 !== _FAIL);
    if (_ok10) {
        _vars["OUTPUT"] = _v10;
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
