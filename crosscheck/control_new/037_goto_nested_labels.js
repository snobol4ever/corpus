'use strict';
const _rt = require(process.env.SNO_RUNTIME || __dirname + '/sno_runtime.js');
const { _vars, _FAIL, _str, _num, _cat, _add, _sub, _mul, _div, _pow,
        _apply, _kw } = _rt;

var goto_v_A;
var goto_v_B;
var goto_v_END;
var goto_v_START;

/* --- block functions --- */
goto_v_START = function() {
/* line 2 */
    return goto_v_A;
    return goto_v__C1;
}

var goto_v__C1;
goto_v__C1 = function() {
/* line 3 */
    var _v2 = "skip";
    var _ok2 = (_v2 !== _FAIL);
    if (_ok2) {
        _vars["OUTPUT"] = _v2;
    }
    return goto_v_A;
}

goto_v_A = function() {
/* line 4 */
    var _v3 = "a";
    var _ok3 = (_v3 !== _FAIL);
    if (_ok3) {
        _vars["OUTPUT"] = _v3;
    }
/* line 5 */
    return goto_v_B;
    return goto_v__C4;
}

var goto_v__C4;
goto_v__C4 = function() {
/* line 6 */
    var _v5 = "skip";
    var _ok5 = (_v5 !== _FAIL);
    if (_ok5) {
        _vars["OUTPUT"] = _v5;
    }
    return goto_v_B;
}

goto_v_B = function() {
/* line 7 */
    var _v6 = "b";
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
