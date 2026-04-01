'use strict';
const _rt = require(process.env.SNO_RUNTIME || __dirname + '/sno_runtime.js');
const { _vars, _FAIL, _str, _num, _cat, _add, _sub, _mul, _div, _pow,
        _apply, _kw } = _rt;

var goto_v_FILL;
var goto_v_READ;
var goto_v_END;
var goto_v_START;

/* --- block functions --- */
goto_v_START = function() {
/* line 2 */
    var _v1 = _apply("ARRAY", [5]);
    var _ok1 = (_v1 !== _FAIL);
    if (_ok1) {
        _vars["A"] = _v1;
    }
/* line 3 */
    var _v2 = 1;
    var _ok2 = (_v2 !== _FAIL);
    if (_ok2) {
        _vars["I"] = _v2;
    }
    return goto_v_FILL;
}

goto_v_FILL = function() {
/* line 4 */
    var _v3 = _mul(_vars["I"], _vars["I"]);
    var _ok3 = (_v3 !== _FAIL);
    if (_ok3) {
    }
/* line 5 */
    var _v4 = _add(_vars["I"], 1);
    var _ok4 = (_v4 !== _FAIL);
    if (_ok4) {
        _vars["I"] = _v4;
    }
/* line 6 */
    var _v5 = _apply("LE", [_vars["I"], 5]);
    var _ok5 = (_v5 !== _FAIL);
    if (_ok5) return goto_v_FILL;
    return goto_v__C6;
}

var goto_v__C6;
goto_v__C6 = function() {
/* line 7 */
    var _v7 = 1;
    var _ok7 = (_v7 !== _FAIL);
    if (_ok7) {
        _vars["I"] = _v7;
    }
    return goto_v_READ;
}

goto_v_READ = function() {
/* line 8 */
    var _v8 = /* unimpl E_44 */null;
    var _ok8 = (_v8 !== _FAIL);
    if (_ok8) {
        _vars["OUTPUT"] = _v8;
    }
/* line 9 */
    var _v9 = _add(_vars["I"], 1);
    var _ok9 = (_v9 !== _FAIL);
    if (_ok9) {
        _vars["I"] = _v9;
    }
/* line 10 */
    var _v10 = _apply("LE", [_vars["I"], 5]);
    var _ok10 = (_v10 !== _FAIL);
    if (_ok10) return goto_v_READ;
    return goto_v_END;
}

goto_v_END = function() {
    return null;
}

/* --- undefined label stubs --- */
if (!goto_v_START) goto_v_START = function() { return null; };

/* --- run --- */
{ var _pc = goto_v_START; while(_pc) _pc = _pc(); }
