'use strict';
const _rt = require(process.env.SNO_RUNTIME || __dirname + '/sno_runtime.js');
const { _vars, _FAIL, _str, _num, _cat, _add, _sub, _mul, _div, _pow,
        _apply, _kw } = _rt;

var goto_v_E001;
var goto_v_END;
var goto_v_E002;
var goto_v_START;
var goto_v_END;

/* --- block functions --- */
goto_v_START = function() {
/* line 4 */
    var _v1 = _apply("array", [3, 10]);
    var _ok1 = (_v1 !== _FAIL);
    if (_ok1) {
        _vars["B"] = _v1;
    }
/* line 7 */
    var _v2 = _apply("differ", [/* unimpl E_44 */null, 10]);
    var _ok2 = (_v2 !== _FAIL);
    if (!_ok2) return goto_v_E001;
    return goto_v__C3;
}

var goto_v__C3;
goto_v__C3 = function() {
/* line 8 */
    var _v4 = "FAIL 1111/001: array default value";
    var _ok4 = (_v4 !== _FAIL);
    if (_ok4) {
        _vars["OUTPUT"] = _v4;
    }
    return goto_v_END;
}

goto_v_E001 = function() {
/* line 9 */
/* line 12 */
    var _v5 = _apply("differ", [/* unimpl E_44 */null, 10]);
    var _ok5 = (_v5 !== _FAIL);
    if (!_ok5) return goto_v_E002;
    return goto_v__C6;
}

var goto_v__C6;
goto_v__C6 = function() {
/* line 13 */
    var _v7 = "FAIL 1111/002: default fills all slots";
    var _ok7 = (_v7 !== _FAIL);
    if (_ok7) {
        _vars["OUTPUT"] = _v7;
    }
    return goto_v_END;
}

goto_v_E002 = function() {
/* line 14 */
/* line 16 */
    var _v8 = "PASS 1111_array_default (2/2)";
    var _ok8 = (_v8 !== _FAIL);
    if (_ok8) {
        _vars["OUTPUT"] = _v8;
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
