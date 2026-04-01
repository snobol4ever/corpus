'use strict';
const _rt = require(process.env.SNO_RUNTIME || __dirname + '/sno_runtime.js');
const { _vars, _FAIL, _str, _num, _cat, _add, _sub, _mul, _div, _pow,
        _apply, _kw } = _rt;

var goto_v_MYFUNC_END;
var goto_v_MYFUNC;
var goto_v_RETURN;
var goto_v_E001;
var goto_v_END;
var goto_v_E002;
var goto_v_MYFUNC2_END;
var goto_v_MYFUNC2;
var goto_v_E003;
var goto_v_START;
var goto_v_END;

/* --- block functions --- */
goto_v_START = function() {
/* line 5 */
    var _v1 = _apply("define", ["myfunc(n)"]);
    var _ok1 = (_v1 !== _FAIL);
    return goto_v_MYFUNC_END;
}

goto_v_MYFUNC = function() {
/* line 6 */
    var _v2 = _mul(_vars["N"], 2);
    var _ok2 = (_v2 !== _FAIL);
    if (_ok2) {
        _vars["MYFUNC"] = _v2;
    }
    return goto_v_RETURN;
}

goto_v_MYFUNC_END = function() {
/* line 7 */
/* line 8 */
    var _v3 = _apply("ne", [_apply("myfunc", [3]), 6]);
    var _ok3 = (_v3 !== _FAIL);
    if (!_ok3) return goto_v_E001;
    return goto_v__C4;
}

var goto_v__C4;
goto_v__C4 = function() {
/* line 9 */
    var _v5 = "FAIL 1011/001: first definition myfunc(3)=6";
    var _ok5 = (_v5 !== _FAIL);
    if (_ok5) {
        _vars["OUTPUT"] = _v5;
    }
    return goto_v_END;
}

goto_v_E001 = function() {
/* line 10 */
/* line 13 */
    var _v6 = _apply("differ", [_apply("define", ["myfunc(myfunc)", "myfunc2"])]);
    var _ok6 = (_v6 !== _FAIL);
    if (!_ok6) return goto_v_E002;
    return goto_v__C7;
}

var goto_v__C7;
goto_v__C7 = function() {
/* line 14 */
    var _v8 = "FAIL 1011/002: define returns function name";
    var _ok8 = (_v8 !== _FAIL);
    if (_ok8) {
        _vars["OUTPUT"] = _v8;
    }
    return goto_v_END;
}

goto_v_E002 = function() {
/* line 15 */
    return goto_v_MYFUNC2_END;
}

goto_v_MYFUNC2 = function() {
/* line 16 */
    var _v9 = _cat(_apply("ne", [_vars["MYFUNC"], 1]), _mul(_vars["MYFUNC"], _apply("myfunc", [_sub(_vars["MYFUNC"], 1)])));
    var _ok9 = (_v9 !== _FAIL);
    if (_ok9) {
        _vars["MYFUNC"] = _v9;
    }
    return goto_v_RETURN;
}

goto_v_MYFUNC2_END = function() {
/* line 17 */
/* line 18 */
    var _v10 = _apply("ne", [_apply("myfunc", [4]), 24]);
    var _ok10 = (_v10 !== _FAIL);
    if (!_ok10) return goto_v_E003;
    return goto_v__C11;
}

var goto_v__C11;
goto_v__C11 = function() {
/* line 19 */
    var _v12 = "FAIL 1011/003: redefined myfunc(4)=24";
    var _ok12 = (_v12 !== _FAIL);
    if (_ok12) {
        _vars["OUTPUT"] = _v12;
    }
    return goto_v_END;
}

goto_v_E003 = function() {
/* line 20 */
/* line 22 */
    var _v13 = "PASS 1011_func_redefine (3/3)";
    var _ok13 = (_v13 !== _FAIL);
    if (_ok13) {
        _vars["OUTPUT"] = _v13;
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
