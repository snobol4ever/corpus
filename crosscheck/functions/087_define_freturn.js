'use strict';
const _rt = require(process.env.SNO_RUNTIME || __dirname + '/sno_runtime.js');
const { _vars, _FAIL, _str, _num, _cat, _add, _sub, _mul, _div, _pow,
        _apply, _kw } = _rt;

var goto_v_ISPOS_END;
var goto_v_ISPOS;
var goto_v_RETURN;
var goto_v_FRETURN;
var goto_v_A;
var goto_v_B;
var goto_v_NEXT;
var goto_v_C;
var goto_v_D;
var goto_v_END;
var goto_v_START;

/* --- block functions --- */
goto_v_START = function() {
/* line 2 */
    var _v1 = _apply("DEFINE", ["ispos(x)"]);
    var _ok1 = (_v1 !== _FAIL);
    return goto_v_ISPOS_END;
}

goto_v_ISPOS = function() {
/* line 3 */
    var _v2 = _apply("GT", [_vars["X"], 0]);
    var _ok2 = (_v2 !== _FAIL);
    if (_ok2) return goto_v_RETURN;
    if (!_ok2) return goto_v_FRETURN;
}

goto_v_ISPOS_END = function() {
/* line 4 */
/* line 5 */
    var _v3 = _apply("ispos", [5]);
    var _ok3 = (_v3 !== _FAIL);
    if (_ok3) return goto_v_A;
    if (!_ok3) return goto_v_B;
}

goto_v_A = function() {
/* line 6 */
    var _v4 = "positive";
    var _ok4 = (_v4 !== _FAIL);
    if (_ok4) {
        _vars["OUTPUT"] = _v4;
    }
/* line 7 */
    return goto_v_NEXT;
}

goto_v_B = function() {
/* line 8 */
    var _v5 = "wrong";
    var _ok5 = (_v5 !== _FAIL);
    if (_ok5) {
        _vars["OUTPUT"] = _v5;
    }
    return goto_v_NEXT;
}

goto_v_NEXT = function() {
/* line 9 */
    var _v6 = _apply("ispos", [(-_num(3))]);
    var _ok6 = (_v6 !== _FAIL);
    if (_ok6) return goto_v_C;
    if (!_ok6) return goto_v_D;
}

goto_v_C = function() {
/* line 10 */
    var _v7 = "wrong";
    var _ok7 = (_v7 !== _FAIL);
    if (_ok7) {
        _vars["OUTPUT"] = _v7;
    }
/* line 11 */
    return goto_v_END;
}

goto_v_D = function() {
/* line 12 */
    var _v8 = "not positive";
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
if (!goto_v_RETURN) goto_v_RETURN = function() { return null; };
if (!goto_v_FRETURN) goto_v_FRETURN = function() { return null; };
if (!goto_v_START) goto_v_START = function() { return null; };

/* --- run --- */
{ var _pc = goto_v_START; while(_pc) _pc = _pc(); }
