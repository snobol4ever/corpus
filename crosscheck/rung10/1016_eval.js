'use strict';
const _rt = require(process.env.SNO_RUNTIME || __dirname + '/sno_runtime.js');
const { _vars, _FAIL, _str, _num, _cat, _add, _sub, _mul, _div, _pow,
        _apply, _kw } = _rt;

var goto_v_E001;
var goto_v_END;
var goto_v_E002;
var goto_v_E003;
var goto_v_START;
var goto_v_END;

/* --- block functions --- */
goto_v_START = function() {
/* line 5 */
    var _v1 = /* unimpl E_8 */null;
    var _ok1 = (_v1 !== _FAIL);
    if (_ok1) {
        _vars["EXPR"] = _v1;
    }
/* line 6 */
    var _v2 = _apply("differ", [_apply("eval", [_vars["EXPR"]]), "abcdef"]);
    var _ok2 = (_v2 !== _FAIL);
    if (!_ok2) return goto_v_E001;
    return goto_v__C3;
}

var goto_v__C3;
goto_v__C3 = function() {
/* line 7 */
    var _v4 = "FAIL 1016/001: eval concat expr";
    var _ok4 = (_v4 !== _FAIL);
    if (_ok4) {
        _vars["OUTPUT"] = _v4;
    }
    return goto_v_END;
}

goto_v_E001 = function() {
/* line 8 */
/* line 11 */
    var _v5 = "qqq";
    var _ok5 = (_v5 !== _FAIL);
    if (_ok5) {
        _vars["Q"] = _v5;
    }
/* line 12 */
    var _v6 = /* unimpl E_8 */null;
    var _ok6 = (_v6 !== _FAIL);
    if (_ok6) {
        _vars["SEXP"] = _v6;
    }
/* line 13 */
    var _v7 = _apply("differ", [_apply("eval", [_vars["SEXP"]]), "qqq"]);
    var _ok7 = (_v7 !== _FAIL);
    if (!_ok7) return goto_v_E002;
    return goto_v__C8;
}

var goto_v__C8;
goto_v__C8 = function() {
/* line 14 */
    var _v9 = "FAIL 1016/002: eval var ref";
    var _ok9 = (_v9 !== _FAIL);
    if (_ok9) {
        _vars["OUTPUT"] = _v9;
    }
    return goto_v_END;
}

goto_v_E002 = function() {
/* line 15 */
/* line 18 */
    var _v10 = /* unimpl E_8 */null;
    var _ok10 = (_v10 !== _FAIL);
    if (_ok10) {
        _vars["FEXP"] = _v10;
    }
/* line 19 */
    var _v11 = _apply("eval", [_vars["FEXP"]]);
    var _ok11 = (_v11 !== _FAIL);
    if (!_ok11) return goto_v_E003;
    return goto_v__C12;
}

var goto_v__C12;
goto_v__C12 = function() {
/* line 20 */
    var _v13 = "FAIL 1016/003: eval failing expr should fail";
    var _ok13 = (_v13 !== _FAIL);
    if (_ok13) {
        _vars["OUTPUT"] = _v13;
    }
    return goto_v_END;
}

goto_v_E003 = function() {
/* line 21 */
/* line 23 */
    var _v14 = "PASS 1016_eval (3/3)";
    var _ok14 = (_v14 !== _FAIL);
    if (_ok14) {
        _vars["OUTPUT"] = _v14;
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
