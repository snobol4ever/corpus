'use strict';
const _rt = require(process.env.SNO_RUNTIME || __dirname + '/sno_runtime.js');
const { _vars, _FAIL, _str, _num, _cat, _add, _sub, _mul, _div, _pow,
        _apply, _kw } = _rt;

var goto_v_BUMPEND;
var goto_v_BUMP;
var goto_v_RETURN;
var goto_v_LOOP;
var goto_v_END;
var goto_v_START;

/* --- block functions --- */
goto_v_START = function() {
/* line 2 */
    var _v1 = _apply("DEFINE", ["bump(v)"]);
    var _ok1 = (_v1 !== _FAIL);
    return goto_v_BUMPEND;
}

goto_v_BUMP = function() {
/* line 3 */
    var _v2 = _add(_vars["V"], 1);
    var _ok2 = (_v2 !== _FAIL);
    if (_ok2) {
        _vars["BUMP"] = _v2;
    }
    return goto_v_RETURN;
}

goto_v_BUMPEND = function() {
/* line 4 */
/* line 5 */
    var _v3 = "";
    var _ok3 = (_v3 !== _FAIL);
    if (_ok3) {
        _vars["S"] = _v3;
    }
/* line 6 */
    var _v4 = 0;
    var _ok4 = (_v4 !== _FAIL);
    if (_ok4) {
        _vars["J"] = _v4;
    }
    return goto_v_LOOP;
}

goto_v_LOOP = function() {
/* line 7 */
    var _v5 = _cat(_vars["S"], _apply("bump", [_mul(2, _vars["J"])]));
    var _ok5 = (_v5 !== _FAIL);
    if (_ok5) {
        _vars["S"] = _v5;
    }
/* line 8 */
    var _v6 = _add(_vars["J"], 1);
    var _ok6 = (_v6 !== _FAIL);
    if (_ok6) {
        _vars["J"] = _v6;
    }
/* line 9 */
    var _v7 = _apply("LT", [_vars["J"], 5]);
    var _ok7 = (_v7 !== _FAIL);
    if (_ok7) return goto_v_LOOP;
    return goto_v__C8;
}

var goto_v__C8;
goto_v__C8 = function() {
/* line 10 */
    var _v9 = _vars["S"];
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
