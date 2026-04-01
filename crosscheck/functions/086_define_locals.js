'use strict';
const _rt = require(process.env.SNO_RUNTIME || __dirname + '/sno_runtime.js');
const { _vars, _FAIL, _str, _num, _cat, _add, _sub, _mul, _div, _pow,
        _apply, _kw } = _rt;

var goto_v_SWAP_END;
var goto_v_SWAP;
var goto_v_RETURN;
var goto_v_END;
var goto_v_START;

/* --- block functions --- */
goto_v_START = function() {
/* line 2 */
    var _v1 = _apply("DEFINE", ["swap(a,b)tmp"]);
    var _ok1 = (_v1 !== _FAIL);
    return goto_v_SWAP_END;
}

goto_v_SWAP = function() {
/* line 3 */
    var _v2 = _vars["A"];
    var _ok2 = (_v2 !== _FAIL);
    if (_ok2) {
        _vars["TMP"] = _v2;
    }
/* line 4 */
    var _v3 = _vars["B"];
    var _ok3 = (_v3 !== _FAIL);
    if (_ok3) {
        _vars["A"] = _v3;
    }
/* line 5 */
    var _v4 = _vars["TMP"];
    var _ok4 = (_v4 !== _FAIL);
    if (_ok4) {
        _vars["B"] = _v4;
    }
/* line 6 */
    var _v5 = _cat(_vars["A"], " ", _vars["B"]);
    var _ok5 = (_v5 !== _FAIL);
    if (_ok5) {
        _vars["OUTPUT"] = _v5;
    }
    return goto_v_RETURN;
}

goto_v_SWAP_END = function() {
/* line 7 */
/* line 8 */
    var _v6 = _apply("swap", ["hello", "world"]);
    var _ok6 = (_v6 !== _FAIL);
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
