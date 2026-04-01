'use strict';
const _rt = require(process.env.SNO_RUNTIME || __dirname + '/sno_runtime.js');
const { _vars, _FAIL, _str, _num, _cat, _add, _sub, _mul, _div, _pow,
        _apply, _kw } = _rt;

var goto_v_END;
var goto_v_START;

/* --- block functions --- */
goto_v_START = function() {
/* line 2 */
    var _v1 = "alpha";
    var _ok1 = (_v1 !== _FAIL);
    if (_ok1) {
        _vars["X"] = _v1;
    }
/* line 3 */
    var _v2 = _vars["X"];
    var _ok2 = (_v2 !== _FAIL);
    if (_ok2) {
        _vars["Y"] = _v2;
    }
/* line 4 */
    var _v3 = _vars["Y"];
    var _ok3 = (_v3 !== _FAIL);
    if (_ok3) {
        _vars["OUTPUT"] = _v3;
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
