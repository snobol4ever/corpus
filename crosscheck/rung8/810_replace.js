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
/* line 5 */
    var _v1 = _apply("differ", [_apply("replace", ["axxbyyy", "xy", "01"]), "a00b111"]);
    var _ok1 = (_v1 !== _FAIL);
    if (!_ok1) return goto_v_E001;
    return goto_v__C2;
}

var goto_v__C2;
goto_v__C2 = function() {
/* line 6 */
    var _v3 = "FAIL 810/001: xy->01 mapping";
    var _ok3 = (_v3 !== _FAIL);
    if (_ok3) {
        _vars["OUTPUT"] = _v3;
    }
    return goto_v_END;
}

goto_v_E001 = function() {
/* line 7 */
/* line 10 */
    var _v4 = _apply("replace", [_kw("alphabet"), "xy", "ab"]);
    var _ok4 = (_v4 !== _FAIL);
    if (_ok4) {
        _vars["A"] = _v4;
    }
/* line 11 */
    var _v5 = _apply("differ", [_apply("replace", ["axy", _kw("alphabet"), _vars["A"]]), "aab"]);
    var _ok5 = (_v5 !== _FAIL);
    if (!_ok5) return goto_v_E002;
    return goto_v__C6;
}

var goto_v__C6;
goto_v__C6 = function() {
/* line 12 */
    var _v7 = "FAIL 810/002: alphabet translation";
    var _ok7 = (_v7 !== _FAIL);
    if (_ok7) {
        _vars["OUTPUT"] = _v7;
    }
    return goto_v_END;
}

goto_v_E002 = function() {
/* line 13 */
/* line 16 */
    var _v8 = _apply("differ", [_apply("replace", ["hello", "aeiou", "aeiou"]), "hello"]);
    var _ok8 = (_v8 !== _FAIL);
    if (!_ok8) return goto_v_E003;
    return goto_v__C9;
}

var goto_v__C9;
goto_v__C9 = function() {
/* line 17 */
    var _v10 = "FAIL 810/003: identity replace";
    var _ok10 = (_v10 !== _FAIL);
    if (_ok10) {
        _vars["OUTPUT"] = _v10;
    }
    return goto_v_END;
}

goto_v_E003 = function() {
/* line 18 */
/* line 20 */
    var _v11 = "PASS 810_replace (3/3)";
    var _ok11 = (_v11 !== _FAIL);
    if (_ok11) {
        _vars["OUTPUT"] = _v11;
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
