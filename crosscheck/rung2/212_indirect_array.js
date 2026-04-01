'use strict';
const _rt = require(process.env.SNO_RUNTIME || __dirname + '/sno_runtime.js');
const { _vars, _FAIL, _str, _num, _cat, _add, _sub, _mul, _div, _pow,
        _apply, _kw } = _rt;

var goto_v_E001;
var goto_v_END;
var goto_v_START;
var goto_v_END;

/* --- block functions --- */
goto_v_START = function() {
/* line 4 */
    var _v1 = _apply("array", [3]);
    var _ok1 = (_v1 !== _FAIL);
    if (_ok1) {
        _vars["A"] = _v1;
    }
/* line 5 */
    var _v2 = "x";
    var _ok2 = (_v2 !== _FAIL);
    if (_ok2) {
    }
/* line 8 */
    var _v3 = _apply("differ", [_vars[_str(/* unimpl E_44 */null).toUpperCase()], "x"]);
    var _ok3 = (_v3 !== _FAIL);
    if (!_ok3) return goto_v_E001;
    return goto_v__C4;
}

var goto_v__C4;
goto_v__C4 = function() {
/* line 9 */
    var _v5 = "FAIL 212/001: $.var<index> indirect array";
    var _ok5 = (_v5 !== _FAIL);
    if (_ok5) {
        _vars["OUTPUT"] = _v5;
    }
    return goto_v_END;
}

goto_v_E001 = function() {
/* line 10 */
/* line 12 */
    var _v6 = "PASS 212_indirect_array (1/1)";
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
