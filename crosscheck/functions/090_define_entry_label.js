'use strict';
const _rt = require(process.env.SNO_RUNTIME || __dirname + '/sno_runtime.js');
const { _vars, _FAIL, _str, _num, _cat, _add, _sub, _mul, _div, _pow,
        _apply, _kw } = _rt;

var goto_v_BUMPEND;
var goto_v_BUMPIT;
var goto_v_RETURN;
var goto_v_END;
var goto_v_START;

/* --- block functions --- */
goto_v_START = function() {
/* line 2 */
    var _v1 = _apply("DEFINE", ["bumpit(v)", _vars["BUMPIT"]]);
    var _ok1 = (_v1 !== _FAIL);
    return goto_v_BUMPEND;
}

goto_v_BUMPIT = function() {
/* line 3 */
    var _v2 = _add(_vars["V"], 1);
    var _ok2 = (_v2 !== _FAIL);
    if (_ok2) {
        _vars["BUMPIT"] = _v2;
    }
    return goto_v_RETURN;
}

goto_v_BUMPEND = function() {
/* line 4 */
/* line 5 */
    var _v3 = _apply("bumpit", [41]);
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
if (!goto_v_RETURN) goto_v_RETURN = function() { return null; };
if (!goto_v_START) goto_v_START = function() { return null; };

/* --- run --- */
{ var _pc = goto_v_START; while(_pc) _pc = _pc(); }
