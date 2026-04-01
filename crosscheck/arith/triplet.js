'use strict';
const _rt = require(process.env.SNO_RUNTIME || __dirname + '/sno_runtime.js');
const { _vars, _FAIL, _str, _num, _cat, _add, _sub, _mul, _div, _pow,
        _apply, _kw } = _rt;

var goto_v_LOOP;
var goto_v_END;
var goto_v_START;

/* --- block functions --- */
goto_v_START = function() {
/* line 4 */
    var _v1 = 1;
    var _ok1 = (_v1 !== _FAIL);
    if (_ok1) {
    }
/* line 5 */
    var _v2 = 0;
    var _ok2 = (_v2 !== _FAIL);
    if (_ok2) {
        _vars["N"] = _v2;
    }
    return goto_v_LOOP;
}

goto_v_LOOP = function() {
/* line 6 */
    var _v3 = _vars["INPUT"];
    var _ok3 = (_v3 !== _FAIL);
    if (_ok3) {
        _vars["S"] = _v3;
    }
    if (!_ok3) return goto_v_END;
    return goto_v__C4;
}

var goto_v__C4;
goto_v__C4 = function() {
/* line 7 */
    var _v5 = _cat(_apply("DUPL", [" ", _div(_sub(80, _apply("SIZE", [_vars["S"]])), 2)]), _vars["S"]);
    var _ok5 = (_v5 !== _FAIL);
    if (_ok5) {
        _vars["OUTPUT"] = _v5;
    }
/* line 8 */
    var _v6 = _apply("REMDR", [_add(_vars["N"], 1), 3]);
    var _ok6 = (_v6 !== _FAIL);
    if (_ok6) {
        _vars["N"] = _v6;
    }
/* line 9 */
    var _v7 = _apply("EQ", [_vars["N"], 0]);
    var _ok7 = (_v7 !== _FAIL);
    if (_ok7) {
        _vars["OUTPUT"] = _v7;
    }
    return goto_v_LOOP;
}

goto_v_END = function() {
    return null;
}

/* --- undefined label stubs --- */
if (!goto_v_START) goto_v_START = function() { return null; };

/* --- run --- */
{ var _pc = goto_v_START; while(_pc) _pc = _pc(); }
