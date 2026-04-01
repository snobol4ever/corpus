'use strict';
const _rt = require(process.env.SNO_RUNTIME || __dirname + '/sno_runtime.js');
const { _vars, _FAIL, _str, _num, _cat, _add, _sub, _mul, _div, _pow,
        _apply, _kw } = _rt;

var goto_v_FIB_END;
var goto_v_FIB;
var goto_v_BASE;
var goto_v_RETURN;
var goto_v_END;
var goto_v_START;

/* --- block functions --- */
goto_v_START = function() {
/* line 2 */
    var _v1 = _apply("DEFINE", ["fib(n)"]);
    var _ok1 = (_v1 !== _FAIL);
    return goto_v_FIB_END;
}

goto_v_FIB = function() {
/* line 3 */
    var _v2 = _apply("LE", [_vars["N"], 1]);
    var _ok2 = (_v2 !== _FAIL);
    if (_ok2) return goto_v_BASE;
    return goto_v__C3;
}

var goto_v__C3;
goto_v__C3 = function() {
/* line 4 */
    var _v4 = _add(_apply("fib", [_sub(_vars["N"], 1)]), _apply("fib", [_sub(_vars["N"], 2)]));
    var _ok4 = (_v4 !== _FAIL);
    if (_ok4) {
        _vars["FIB"] = _v4;
    }
    return goto_v_RETURN;
}

goto_v_BASE = function() {
/* line 5 */
    var _v5 = _vars["N"];
    var _ok5 = (_v5 !== _FAIL);
    if (_ok5) {
        _vars["FIB"] = _v5;
    }
    return goto_v_RETURN;
}

goto_v_FIB_END = function() {
/* line 6 */
/* line 7 */
    var _v6 = _apply("fib", [0]);
    var _ok6 = (_v6 !== _FAIL);
    if (_ok6) {
        _vars["OUTPUT"] = _v6;
    }
/* line 8 */
    var _v7 = _apply("fib", [1]);
    var _ok7 = (_v7 !== _FAIL);
    if (_ok7) {
        _vars["OUTPUT"] = _v7;
    }
/* line 9 */
    var _v8 = _apply("fib", [6]);
    var _ok8 = (_v8 !== _FAIL);
    if (_ok8) {
        _vars["OUTPUT"] = _v8;
    }
/* line 10 */
    var _v9 = _apply("fib", [10]);
    var _ok9 = (_v9 !== _FAIL);
    if (_ok9) {
        _vars["OUTPUT"] = _v9;
    }
    return goto_v_END;
}

goto_v_END = function() {
    return null;
}

/* --- undefined label stubs --- */
if (!goto_v_RETURN) goto_v_RETURN = function() { return null; };
if (!goto_v_START) goto_v_START = function() { return null; };

/* --- run --- */
{ var _pc = goto_v_START; while(_pc) _pc = _pc(); }
