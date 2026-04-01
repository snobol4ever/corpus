'use strict';
const _rt = require(process.env.SNO_RUNTIME || __dirname + '/sno_runtime.js');
const { _vars, _FAIL, _str, _num, _cat, _add, _sub, _mul, _div, _pow,
        _apply, _kw } = _rt;

var goto_v_JLAB;
var goto_v_E001;
var goto_v_END;
var goto_v_E002;
var goto_v_E003;
var goto_v_E004;
var goto_v_E005;
var goto_v_E006;
var goto_v_E007;
var goto_v_E008;
var goto_v_START;
var goto_v_END;

/* --- block functions --- */
goto_v_JLAB = function() {
/* line 4 */
    var _v1 = _apply("define", ["jlab(a,b,c)d,e,f"]);
    var _ok1 = (_v1 !== _FAIL);
/* line 7 */
    var _v2 = _apply("differ", [_apply("arg", [_vars["JLAB"], 1]), "A"]);
    var _ok2 = (_v2 !== _FAIL);
    if (!_ok2) return goto_v_E001;
    return goto_v__C3;
}

var goto_v__C3;
goto_v__C3 = function() {
/* line 8 */
    var _v4 = "FAIL 1017/001: arg(.jlab,1) = A";
    var _ok4 = (_v4 !== _FAIL);
    if (_ok4) {
        _vars["OUTPUT"] = _v4;
    }
    return goto_v_END;
}

goto_v_E001 = function() {
/* line 9 */
/* line 10 */
    var _v5 = _apply("differ", [_apply("arg", [_vars["JLAB"], 3]), "C"]);
    var _ok5 = (_v5 !== _FAIL);
    if (!_ok5) return goto_v_E002;
    return goto_v__C6;
}

var goto_v__C6;
goto_v__C6 = function() {
/* line 11 */
    var _v7 = "FAIL 1017/002: arg(.jlab,3) = C";
    var _ok7 = (_v7 !== _FAIL);
    if (_ok7) {
        _vars["OUTPUT"] = _v7;
    }
    return goto_v_END;
}

goto_v_E002 = function() {
/* line 12 */
/* line 15 */
    var _v8 = _apply("arg", [_vars["JLAB"], 0]);
    var _ok8 = (_v8 !== _FAIL);
    if (!_ok8) return goto_v_E003;
    return goto_v__C9;
}

var goto_v__C9;
goto_v__C9 = function() {
/* line 16 */
    var _v10 = "FAIL 1017/003: arg(.jlab,0) OOB should fail";
    var _ok10 = (_v10 !== _FAIL);
    if (_ok10) {
        _vars["OUTPUT"] = _v10;
    }
    return goto_v_END;
}

goto_v_E003 = function() {
/* line 17 */
/* line 18 */
    var _v11 = _apply("arg", [_vars["JLAB"], 4]);
    var _ok11 = (_v11 !== _FAIL);
    if (!_ok11) return goto_v_E004;
    return goto_v__C12;
}

var goto_v__C12;
goto_v__C12 = function() {
/* line 19 */
    var _v13 = "FAIL 1017/004: arg(.jlab,4) OOB should fail";
    var _ok13 = (_v13 !== _FAIL);
    if (_ok13) {
        _vars["OUTPUT"] = _v13;
    }
    return goto_v_END;
}

goto_v_E004 = function() {
/* line 20 */
/* line 23 */
    var _v14 = _apply("differ", [_apply("local", [_vars["JLAB"], 1]), "D"]);
    var _ok14 = (_v14 !== _FAIL);
    if (!_ok14) return goto_v_E005;
    return goto_v__C15;
}

var goto_v__C15;
goto_v__C15 = function() {
/* line 24 */
    var _v16 = "FAIL 1017/005: local(.jlab,1) = D";
    var _ok16 = (_v16 !== _FAIL);
    if (_ok16) {
        _vars["OUTPUT"] = _v16;
    }
    return goto_v_END;
}

goto_v_E005 = function() {
/* line 25 */
/* line 26 */
    var _v17 = _apply("differ", [_apply("local", [_vars["JLAB"], 3]), "F"]);
    var _ok17 = (_v17 !== _FAIL);
    if (!_ok17) return goto_v_E006;
    return goto_v__C18;
}

var goto_v__C18;
goto_v__C18 = function() {
/* line 27 */
    var _v19 = "FAIL 1017/006: local(.jlab,3) = F";
    var _ok19 = (_v19 !== _FAIL);
    if (_ok19) {
        _vars["OUTPUT"] = _v19;
    }
    return goto_v_END;
}

goto_v_E006 = function() {
/* line 28 */
/* line 31 */
    var _v20 = _apply("local", [_vars["JLAB"], 0]);
    var _ok20 = (_v20 !== _FAIL);
    if (!_ok20) return goto_v_E007;
    return goto_v__C21;
}

var goto_v__C21;
goto_v__C21 = function() {
/* line 32 */
    var _v22 = "FAIL 1017/007: local(.jlab,0) OOB should fail";
    var _ok22 = (_v22 !== _FAIL);
    if (_ok22) {
        _vars["OUTPUT"] = _v22;
    }
    return goto_v_END;
}

goto_v_E007 = function() {
/* line 33 */
/* line 34 */
    var _v23 = _apply("local", [_vars["JLAB"], 4]);
    var _ok23 = (_v23 !== _FAIL);
    if (!_ok23) return goto_v_E008;
    return goto_v__C24;
}

var goto_v__C24;
goto_v__C24 = function() {
/* line 35 */
    var _v25 = "FAIL 1017/008: local(.jlab,4) OOB should fail";
    var _ok25 = (_v25 !== _FAIL);
    if (_ok25) {
        _vars["OUTPUT"] = _v25;
    }
    return goto_v_END;
}

goto_v_E008 = function() {
/* line 36 */
/* line 38 */
    var _v26 = "PASS 1017_arg_local (8/8)";
    var _ok26 = (_v26 !== _FAIL);
    if (_ok26) {
        _vars["OUTPUT"] = _v26;
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
