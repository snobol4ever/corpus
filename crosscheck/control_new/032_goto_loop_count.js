'use strict';
const _rt = require(process.env.SNO_RUNTIME || __dirname + '/sno_runtime.js');
const { _vars, _FAIL, _str, _num, _cat, _add, _sub, _mul, _div, _pow,
        _apply, _kw } = _rt;

var goto_v_LOOP;
var goto_v_DONE;
var goto_v_END;
var goto_v_START;

/* --- block functions --- */
goto_v_START = function() {
/* line 2 */
    var _v1 = 0;
    var _ok1 = (_v1 !== _FAIL);
    if (_ok1) {
        _vars["N"] = _v1;
    }
    return goto_v_LOOP;
}

goto_v_LOOP = function() {
/* line 3 */
    var _v2 = _add(_vars["N"], 1);
    var _ok2 = (_v2 !== _FAIL);
    if (_ok2) {
        _vars["N"] = _v2;
    }
/* line 4 */
    var _v3 = _apply("GT", [_vars["N"], 5]);
    var _ok3 = (_v3 !== _FAIL);
    if (_ok3) return goto_v_DONE;
    return goto_v__C4;
}

var goto_v__C4;
goto_v__C4 = function() {
/* line 5 */
    return goto_v_LOOP;
}

goto_v_DONE = function() {
/* line 6 */
    var _v5 = _vars["N"];
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
if (!goto_v_START) goto_v_START = function() { return null; };

/* --- run --- */
{ var _pc = goto_v_START; while(_pc) _pc = _pc(); }
