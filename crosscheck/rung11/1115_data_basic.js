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
var goto_v_E006;
var goto_v_START;
var goto_v_END;

/* --- block functions --- */
goto_v_START = function() {
/* line 7 */
    var _v1 = _apply("data", ["node(val,lson,rson)"]);
    var _ok1 = (_v1 !== _FAIL);
/* line 9 */
    var _v2 = _apply("node", ["x", "y", "z"]);
    var _ok2 = (_v2 !== _FAIL);
    if (_ok2) {
        _vars["A"] = _v2;
    }
/* line 11 */
    var _v3 = _apply("differ", [_apply("replace", [_apply("datatype", [_vars["A"]]), _kw("lcase"), _kw("ucase")]), "NODE"]);
    var _ok3 = (_v3 !== _FAIL);
    if (!_ok3) return goto_v_E001;
    return goto_v__C4;
}

var goto_v__C4;
goto_v__C4 = function() {
/* line 12 */
    var _v5 = "FAIL 1115/001: datatype of node";
    var _ok5 = (_v5 !== _FAIL);
    if (_ok5) {
        _vars["OUTPUT"] = _v5;
    }
    return goto_v_END;
}

goto_v_E001 = function() {
/* line 13 */
/* line 15 */
    var _v6 = _apply("differ", [_apply("val", [_vars["A"]]), "x"]);
    var _ok6 = (_v6 !== _FAIL);
    if (!_ok6) return goto_v_E002;
    return goto_v__C7;
}

var goto_v__C7;
goto_v__C7 = function() {
/* line 16 */
    var _v8 = "FAIL 1115/002: field accessor val";
    var _ok8 = (_v8 !== _FAIL);
    if (_ok8) {
        _vars["OUTPUT"] = _v8;
    }
    return goto_v_END;
}

goto_v_E002 = function() {
/* line 17 */
/* line 20 */
    var _v9 = _apply("node", []);
    var _ok9 = (_v9 !== _FAIL);
    if (_ok9) {
        _vars["B"] = _v9;
    }
/* line 21 */
    var _v10 = _apply("differ", [_apply("rson", [_vars["B"]])]);
    var _ok10 = (_v10 !== _FAIL);
    if (!_ok10) return goto_v_E003;
    return goto_v__C11;
}

var goto_v__C11;
goto_v__C11 = function() {
/* line 22 */
    var _v12 = "FAIL 1115/003: unset field is null";
    var _ok12 = (_v12 !== _FAIL);
    if (_ok12) {
        _vars["OUTPUT"] = _v12;
    }
    return goto_v_END;
}

goto_v_E003 = function() {
/* line 23 */
/* line 26 */
    var _v13 = _vars["A"];
    var _ok13 = (_v13 !== _FAIL);
    if (_ok13) {
    }
/* line 27 */
    var _v14 = _apply("differ", [_apply("rson", [_apply("lson", [_vars["B"]])]), "z"]);
    var _ok14 = (_v14 !== _FAIL);
    if (!_ok14) return goto_v_E004;
    return goto_v__C15;
}

var goto_v__C15;
goto_v__C15 = function() {
/* line 28 */
    var _v16 = "FAIL 1115/004: nested accessor after mutate";
    var _ok16 = (_v16 !== _FAIL);
    if (_ok16) {
        _vars["OUTPUT"] = _v16;
    }
    return goto_v_END;
}

goto_v_E004 = function() {
/* line 29 */
/* line 32 */
    var _v17 = _apply("differ", [_apply("value", ["b"]), _vars["B"]]);
    var _ok17 = (_v17 !== _FAIL);
    if (!_ok17) return goto_v_E005;
    return goto_v__C18;
}

var goto_v__C18;
goto_v__C18 = function() {
/* line 33 */
    var _v19 = "FAIL 1115/005: value() by variable name";
    var _ok19 = (_v19 !== _FAIL);
    if (_ok19) {
        _vars["OUTPUT"] = _v19;
    }
    return goto_v_END;
}

goto_v_E005 = function() {
/* line 34 */
/* line 37 */
    var _v20 = "new";
    var _ok20 = (_v20 !== _FAIL);
    if (_ok20) {
    }
/* line 38 */
    var _v21 = _apply("differ", [_apply("val", [_vars["A"]]), "new"]);
    var _ok21 = (_v21 !== _FAIL);
    if (!_ok21) return goto_v_E006;
    return goto_v__C22;
}

var goto_v__C22;
goto_v__C22 = function() {
/* line 39 */
    var _v23 = "FAIL 1115/006: mutate field and read back";
    var _ok23 = (_v23 !== _FAIL);
    if (_ok23) {
        _vars["OUTPUT"] = _v23;
    }
    return goto_v_END;
}

goto_v_E006 = function() {
/* line 40 */
/* line 42 */
    var _v24 = "PASS 1115_data_basic (6/6)";
    var _ok24 = (_v24 !== _FAIL);
    if (_ok24) {
        _vars["OUTPUT"] = _v24;
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
