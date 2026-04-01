'use strict';
const _rt = require(process.env.SNO_RUNTIME || __dirname + '/sno_runtime.js');
const { _vars, _FAIL, _str, _num, _cat, _add, _sub, _mul, _div, _pow,
        _apply, _kw } = _rt;

var goto_v_E001;
var goto_v_END;
var goto_v_E002;
var goto_v_START;
var goto_v_END;

/* --- block functions --- */
goto_v_START = function() {
/* line 5 */
    var _v1 = _apply("opsyn", ["@", _vars["DUPL"], 2]);
    var _ok1 = (_v1 !== _FAIL);
/* line 7 */
    var _v2 = _apply("differ", [/* unimpl E_42 */null, "aaaa"]);
    var _ok2 = (_v2 !== _FAIL);
    if (!_ok2) return goto_v_E001;
    return goto_v__C3;
}

var goto_v__C3;
goto_v__C3 = function() {
/* line 8 */
    var _v4 = "FAIL 1015/001: @ as binary dupl";
    var _ok4 = (_v4 !== _FAIL);
    if (_ok4) {
        _vars["OUTPUT"] = _v4;
    }
    return goto_v_END;
}

goto_v_E001 = function() {
/* line 9 */
/* line 12 */
    var _v5 = _apply("opsyn", ["|", _vars["SIZE"], 1]);
    var _ok5 = (_v5 !== _FAIL);
/* line 14 */
    var _v6 = _apply("differ", [/* unimpl E_20 */null, 6]);
    var _ok6 = (_v6 !== _FAIL);
    if (!_ok6) return goto_v_E002;
    return goto_v__C7;
}

var goto_v__C7;
goto_v__C7 = function() {
/* line 15 */
    var _v8 = "FAIL 1015/002: | as unary size";
    var _ok8 = (_v8 !== _FAIL);
    if (_ok8) {
        _vars["OUTPUT"] = _v8;
    }
    return goto_v_END;
}

goto_v_E002 = function() {
/* line 16 */
/* line 18 */
    var _v9 = "PASS 1015_opsyn (2/2)";
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
if (!goto_v_START) goto_v_START = function() { return null; };

/* --- run --- */
{ var _pc = goto_v_START; while(_pc) _pc = _pc(); }
