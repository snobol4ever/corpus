'use strict';
const _rt = require(process.env.SNO_RUNTIME || __dirname + '/sno_runtime.js');
const { _vars, _FAIL, _str, _num, _cat, _add, _sub, _mul, _div, _pow,
        _apply, _kw } = _rt;

var goto_v_NEXTL;
var goto_v_DONE;
var goto_v_END;
var goto_v_START;

/* --- block functions --- */
goto_v_START = function() {
/* line 4 */
    var _v1 = 1;
    var _ok1 = (_v1 !== _FAIL);
    if (_ok1) {
    }
    return goto_v_NEXTL;
}

goto_v_NEXTL = function() {
/* line 5 */
    var _v2 = _add(_vars["CHARS"], _apply("SIZE", [_vars["INPUT"]]));
    var _ok2 = (_v2 !== _FAIL);
    if (_ok2) {
        _vars["CHARS"] = _v2;
    }
    if (!_ok2) return goto_v_DONE;
    return goto_v__C3;
}

var goto_v__C3;
goto_v__C3 = function() {
/* line 6 */
    var _v4 = _add(_vars["LINES"], 1);
    var _ok4 = (_v4 !== _FAIL);
    if (_ok4) {
        _vars["LINES"] = _v4;
    }
    return goto_v_NEXTL;
}

goto_v_DONE = function() {
/* line 7 */
    var _v5 = _cat(_vars["CHARS"], " characters, ", _vars["LINES"], " lines read");
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
