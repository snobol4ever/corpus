'use strict';
const _rt = require(process.env.SNO_RUNTIME || __dirname + '/sno_runtime.js');
const { _vars, _FAIL, _str, _num, _cat, _add, _sub, _mul, _div, _pow,
        _apply, _kw } = _rt;

var goto_v_E001;
var goto_v_END;
var goto_v_E002;
var goto_v_E003;
var goto_v_E004;
var goto_v_E005;
var goto_v_START;
var goto_v_END;

/* --- block functions --- */
goto_v_START = function() {
/* line 5 */
    var _v1 = _apply("array", ["2,2"]);
    var _ok1 = (_v1 !== _FAIL);
    if (_ok1) {
        _vars["C"] = _v1;
    }
/* line 6 */
    var _v2 = "*";
    var _ok2 = (_v2 !== _FAIL);
    if (_ok2) {
    }
/* line 7 */
    var _v3 = _apply("differ", [/* unimpl E_44 */null, "*"]);
    var _ok3 = (_v3 !== _FAIL);
    if (!_ok3) return goto_v_E001;
    return goto_v__C4;
}

var goto_v__C4;
goto_v__C4 = function() {
/* line 8 */
    var _v5 = "FAIL 1112/001: 2D array assign/read";
    var _ok5 = (_v5 !== _FAIL);
    if (_ok5) {
        _vars["OUTPUT"] = _v5;
    }
    return goto_v_END;
}

goto_v_E001 = function() {
/* line 9 */
/* line 11 */
    var _v6 = _apply("differ", [_apply("prototype", [_vars["C"]]), "2,2"]);
    var _ok6 = (_v6 !== _FAIL);
    if (!_ok6) return goto_v_E002;
    return goto_v__C7;
}

var goto_v__C7;
goto_v__C7 = function() {
/* line 12 */
    var _v8 = "FAIL 1112/002: prototype of 2D array";
    var _ok8 = (_v8 !== _FAIL);
    if (_ok8) {
        _vars["OUTPUT"] = _v8;
    }
    return goto_v_END;
}

goto_v_E002 = function() {
/* line 13 */
/* line 16 */
    var _v9 = _apply("array", ["-1:1,2"]);
    var _ok9 = (_v9 !== _FAIL);
    if (_ok9) {
        _vars["D"] = _v9;
    }
/* line 17 */
    var _v10 = 0;
    var _ok10 = (_v10 !== _FAIL);
    if (_ok10) {
    }
/* line 18 */
    var _v11 = _apply("differ", [/* unimpl E_44 */null, 0]);
    var _ok11 = (_v11 !== _FAIL);
    if (!_ok11) return goto_v_E003;
    return goto_v__C12;
}

var goto_v__C12;
goto_v__C12 = function() {
/* line 19 */
    var _v13 = "FAIL 1112/003: custom lower bound assign/read";
    var _ok13 = (_v13 !== _FAIL);
    if (_ok13) {
        _vars["OUTPUT"] = _v13;
    }
    return goto_v_END;
}

goto_v_E003 = function() {
/* line 20 */
/* line 23 */
    var _v14 = /* unimpl E_44 */null;
    var _ok14 = (_v14 !== _FAIL);
    if (!_ok14) return goto_v_E004;
    return goto_v__C15;
}

var goto_v__C15;
goto_v__C15 = function() {
/* line 24 */
    var _v16 = "FAIL 1112/004: below lower bound fails";
    var _ok16 = (_v16 !== _FAIL);
    if (_ok16) {
        _vars["OUTPUT"] = _v16;
    }
    return goto_v_END;
}

goto_v_E004 = function() {
/* line 25 */
/* line 28 */
    var _v17 = /* unimpl E_44 */null;
    var _ok17 = (_v17 !== _FAIL);
    if (!_ok17) return goto_v_E005;
    return goto_v__C18;
}

var goto_v__C18;
goto_v__C18 = function() {
/* line 29 */
    var _v19 = "FAIL 1112/005: above upper bound fails";
    var _ok19 = (_v19 !== _FAIL);
    if (_ok19) {
        _vars["OUTPUT"] = _v19;
    }
    return goto_v_END;
}

goto_v_E005 = function() {
/* line 30 */
/* line 32 */
    var _v20 = "PASS 1112_array_multi (5/5)";
    var _ok20 = (_v20 !== _FAIL);
    if (_ok20) {
        _vars["OUTPUT"] = _v20;
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
