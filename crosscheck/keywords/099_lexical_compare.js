'use strict';
const _rt = require(process.env.SNO_RUNTIME || __dirname + '/sno_runtime.js');
const { _vars, _FAIL, _str, _num, _cat, _add, _sub, _mul, _div, _pow,
        _apply, _kw } = _rt;

var goto_v_A;
var goto_v_END;
var goto_v_B;
var goto_v_C;
var goto_v_D;
var goto_v_START;

/* --- block functions --- */
goto_v_START = function() {
/* line 2 */
    var _v1 = _apply("LGT", ["b", "a"]);
    var _ok1 = (_v1 !== _FAIL);
    if (_ok1) return goto_v_A;
    if (!_ok1) return goto_v_END;
}

goto_v_A = function() {
/* line 3 */
    var _v2 = "b > a";
    var _ok2 = (_v2 !== _FAIL);
    if (_ok2) {
        _vars["OUTPUT"] = _v2;
    }
/* line 4 */
    var _v3 = _apply("LLT", ["a", "b"]);
    var _ok3 = (_v3 !== _FAIL);
    if (_ok3) return goto_v_B;
    if (!_ok3) return goto_v_END;
}

goto_v_B = function() {
/* line 5 */
    var _v4 = "a < b";
    var _ok4 = (_v4 !== _FAIL);
    if (_ok4) {
        _vars["OUTPUT"] = _v4;
    }
/* line 6 */
    var _v5 = _apply("LEQ", ["cat", "cat"]);
    var _ok5 = (_v5 !== _FAIL);
    if (_ok5) return goto_v_C;
    if (!_ok5) return goto_v_END;
}

goto_v_C = function() {
/* line 7 */
    var _v6 = "cat = cat";
    var _ok6 = (_v6 !== _FAIL);
    if (_ok6) {
        _vars["OUTPUT"] = _v6;
    }
/* line 8 */
    var _v7 = _apply("LNE", ["cat", "dog"]);
    var _ok7 = (_v7 !== _FAIL);
    if (_ok7) return goto_v_D;
    if (!_ok7) return goto_v_END;
}

goto_v_D = function() {
/* line 9 */
    var _v8 = "cat != dog";
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
