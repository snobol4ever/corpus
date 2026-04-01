'use strict';
const _rt = require(process.env.SNO_RUNTIME || __dirname + '/sno_runtime.js');
const { _vars, _FAIL, _str, _num, _cat, _add, _sub, _mul, _div, _pow,
        _apply, _kw } = _rt;

var goto_v_YES;
var goto_v_NO;
var goto_v_NEXT;
var goto_v_YES2;
var goto_v_NO2;
var goto_v_END;
var goto_v_START;

/* --- block functions --- */
goto_v_START = function() {
/* line 2 */
    var _v1 = _apply("EQ", [42, 42]);
    var _ok1 = (_v1 !== _FAIL);
    if (_ok1) return goto_v_YES;
    if (!_ok1) return goto_v_NO;
}

goto_v_YES = function() {
/* line 3 */
    var _v2 = "42 = 42";
    var _ok2 = (_v2 !== _FAIL);
    if (_ok2) {
        _vars["OUTPUT"] = _v2;
    }
/* line 4 */
    return goto_v_NEXT;
}

goto_v_NO = function() {
/* line 5 */
    var _v3 = "wrong";
    var _ok3 = (_v3 !== _FAIL);
    if (_ok3) {
        _vars["OUTPUT"] = _v3;
    }
    return goto_v_NEXT;
}

goto_v_NEXT = function() {
/* line 6 */
    var _v4 = _apply("NE", [42, 99]);
    var _ok4 = (_v4 !== _FAIL);
    if (_ok4) return goto_v_YES2;
    if (!_ok4) return goto_v_NO2;
}

goto_v_YES2 = function() {
/* line 7 */
    var _v5 = "42 != 99";
    var _ok5 = (_v5 !== _FAIL);
    if (_ok5) {
        _vars["OUTPUT"] = _v5;
    }
/* line 8 */
    return goto_v_END;
}

goto_v_NO2 = function() {
/* line 9 */
    var _v6 = "wrong";
    var _ok6 = (_v6 !== _FAIL);
    if (_ok6) {
        _vars["OUTPUT"] = _v6;
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
