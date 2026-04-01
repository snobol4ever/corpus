'use strict';
const _rt = require(process.env.SNO_RUNTIME || __dirname + '/sno_runtime.js');
const { _vars, _FAIL, _str, _num, _cat, _add, _sub, _mul, _div, _pow,
        _apply, _kw } = _rt;

var goto_v_AF_END;
var goto_v_ALWAYS_FAIL;
var goto_v_FRETURN;
var goto_v_E001;
var goto_v_END;
var goto_v_START;
var goto_v_END;

/* --- block functions --- */
goto_v_START = function() {
/* line 4 */
    var _v1 = _apply("define", ["always_fail()"]);
    var _ok1 = (_v1 !== _FAIL);
    return goto_v_AF_END;
}

goto_v_ALWAYS_FAIL = function() {
/* line 5 */
    return goto_v_FRETURN;
}

goto_v_AF_END = function() {
/* line 6 */
/* line 9 */
    var _v2 = _apply("always_fail", []);
    var _ok2 = (_v2 !== _FAIL);
    if (!_ok2) return goto_v_E001;
    return goto_v__C3;
}

var goto_v__C3;
goto_v__C3 = function() {
/* line 10 */
    var _v4 = "FAIL 1014/001: freturn should cause statement failure";
    var _ok4 = (_v4 !== _FAIL);
    if (_ok4) {
        _vars["OUTPUT"] = _v4;
    }
    return goto_v_END;
}

goto_v_E001 = function() {
/* line 11 */
/* line 13 */
    var _v5 = "PASS 1014_func_freturn (1/1)";
    var _ok5 = (_v5 !== _FAIL);
    if (_ok5) {
        _vars["OUTPUT"] = _v5;
    }
    return goto_v_END;
}

goto_v_END = function() {
    return null;
}

/* --- undefined label stubs --- */
if (!goto_v_FRETURN) goto_v_FRETURN = function() { return null; };
if (!goto_v_START) goto_v_START = function() { return null; };

/* --- run --- */
{ var _pc = goto_v_START; while(_pc) _pc = _pc(); }
