'use strict';
const _rt = require(process.env.SNO_RUNTIME || __dirname + '/sno_runtime.js');
const { _vars, _FAIL, _str, _num, _cat, _add, _sub, _mul, _div, _pow,
        _apply, _kw } = _rt;

var goto_v_LFUNC_END;
var goto_v_LFUNC;
var goto_v_E001;
var goto_v_END;
var goto_v_E002;
var goto_v_E003;
var goto_v_RETURN;
var goto_v_E004;
var goto_v_E005;
var goto_v_E006;
var goto_v_CL_END;
var goto_v_CHECKLOCAL;
var goto_v_E007_INNER;
var goto_v_E007;
var goto_v_START;
var goto_v_END;

/* --- block functions --- */
goto_v_START = function() {
/* line 4 */
    var _v1 = _apply("define", ["lfunc(a,b,c)d,e,f"]);
    var _ok1 = (_v1 !== _FAIL);
    return goto_v_LFUNC_END;
}

goto_v_LFUNC = function() {
/* line 5 */
/* line 7 */
    var _v2 = _apply("ident", [_vars["A"], "p"]);
    var _ok2 = (_v2 !== _FAIL);
    if (_ok2) return goto_v_E001;
    return goto_v__C3;
}

var goto_v__C3;
goto_v__C3 = function() {
/* line 8 */
    var _v4 = "FAIL 1012/001: arg a should be p";
    var _ok4 = (_v4 !== _FAIL);
    if (_ok4) {
        _vars["OUTPUT"] = _v4;
    }
    return goto_v_END;
}

goto_v_E001 = function() {
/* line 9 */
    var _v5 = _apply("ident", [_vars["B"], "q"]);
    var _ok5 = (_v5 !== _FAIL);
    if (_ok5) return goto_v_E002;
    return goto_v__C6;
}

var goto_v__C6;
goto_v__C6 = function() {
/* line 10 */
    var _v7 = "FAIL 1012/002: arg b should be q";
    var _ok7 = (_v7 !== _FAIL);
    if (_ok7) {
        _vars["OUTPUT"] = _v7;
    }
    return goto_v_END;
}

goto_v_E002 = function() {
/* line 11 */
/* line 13 */
    var _v8 = _apply("differ", [_vars["D"]]);
    var _ok8 = (_v8 !== _FAIL);
    if (!_ok8) return goto_v_E003;
    return goto_v__C9;
}

var goto_v__C9;
goto_v__C9 = function() {
/* line 14 */
    var _v10 = "FAIL 1012/003: local d should be null";
    var _ok10 = (_v10 !== _FAIL);
    if (_ok10) {
        _vars["OUTPUT"] = _v10;
    }
    return goto_v_END;
}

goto_v_E003 = function() {
/* line 15 */
/* line 17 */
    var _v11 = "aa";
    var _ok11 = (_v11 !== _FAIL);
    if (_ok11) {
        _vars["A"] = _v11;
    }
/* line 17 */
    var _v12 = "bb";
    var _ok12 = (_v12 !== _FAIL);
    if (_ok12) {
        _vars["B"] = _v12;
    }
/* line 17 */
    var _v13 = "dd";
    var _ok13 = (_v13 !== _FAIL);
    if (_ok13) {
        _vars["D"] = _v13;
    }
/* line 18 */
    var _v14 = _cat(_vars["A"], _vars["B"], _vars["D"]);
    var _ok14 = (_v14 !== _FAIL);
    if (_ok14) {
        _vars["LFUNC"] = _v14;
    }
    return goto_v_RETURN;
}

goto_v_LFUNC_END = function() {
/* line 19 */
/* line 22 */
    var _v15 = "global_a";
    var _ok15 = (_v15 !== _FAIL);
    if (_ok15) {
        _vars["A"] = _v15;
    }
/* line 23 */
    var _v16 = "global_d";
    var _ok16 = (_v16 !== _FAIL);
    if (_ok16) {
        _vars["D"] = _v16;
    }
/* line 25 */
    var _v17 = _apply("differ", [_apply("lfunc", ["p", "q", "r"]), "aabbdd"]);
    var _ok17 = (_v17 !== _FAIL);
    if (!_ok17) return goto_v_E004;
    return goto_v__C18;
}

var goto_v__C18;
goto_v__C18 = function() {
/* line 26 */
    var _v19 = "FAIL 1012/004: lfunc return value";
    var _ok19 = (_v19 !== _FAIL);
    if (_ok19) {
        _vars["OUTPUT"] = _v19;
    }
    return goto_v_END;
}

goto_v_E004 = function() {
/* line 27 */
/* line 30 */
    var _v20 = _apply("ident", [_vars["A"], "global_a"]);
    var _ok20 = (_v20 !== _FAIL);
    if (_ok20) return goto_v_E005;
    return goto_v__C21;
}

var goto_v__C21;
goto_v__C21 = function() {
/* line 31 */
    var _v22 = "FAIL 1012/005: global a not clobbered";
    var _ok22 = (_v22 !== _FAIL);
    if (_ok22) {
        _vars["OUTPUT"] = _v22;
    }
    return goto_v_END;
}

goto_v_E005 = function() {
/* line 32 */
/* line 35 */
    var _v23 = _apply("ident", [_vars["D"], "global_d"]);
    var _ok23 = (_v23 !== _FAIL);
    if (_ok23) return goto_v_E006;
    return goto_v__C24;
}

var goto_v__C24;
goto_v__C24 = function() {
/* line 36 */
    var _v25 = "FAIL 1012/006: global d not clobbered";
    var _ok25 = (_v25 !== _FAIL);
    if (_ok25) {
        _vars["OUTPUT"] = _v25;
    }
    return goto_v_END;
}

goto_v_E006 = function() {
/* line 37 */
/* line 40 */
    var _v26 = _apply("define", ["checklocal()x"]);
    var _ok26 = (_v26 !== _FAIL);
    return goto_v_CL_END;
}

goto_v_CHECKLOCAL = function() {
/* line 41 */
/* line 42 */
    var _v27 = _apply("differ", [_vars["X"]]);
    var _ok27 = (_v27 !== _FAIL);
    if (!_ok27) return goto_v_E007_INNER;
    return goto_v__C28;
}

var goto_v__C28;
goto_v__C28 = function() {
/* line 43 */
    var _v29 = "local-not-null";
    var _ok29 = (_v29 !== _FAIL);
    if (_ok29) {
        _vars["CHECKLOCAL"] = _v29;
    }
    return goto_v_RETURN;
}

goto_v_E007_INNER = function() {
/* line 44 */
/* line 45 */
    _vars["CHECKLOCAL"] = null;
    return goto_v_RETURN;
}

goto_v_CL_END = function() {
/* line 46 */
/* line 47 */
    var _v30 = _apply("differ", [_apply("checklocal", [])]);
    var _ok30 = (_v30 !== _FAIL);
    if (!_ok30) return goto_v_E007;
    return goto_v__C31;
}

var goto_v__C31;
goto_v__C31 = function() {
/* line 48 */
    var _v32 = "FAIL 1012/007: local null on fresh call";
    var _ok32 = (_v32 !== _FAIL);
    if (_ok32) {
        _vars["OUTPUT"] = _v32;
    }
    return goto_v_END;
}

goto_v_E007 = function() {
/* line 49 */
/* line 51 */
    var _v33 = "PASS 1012_func_locals (7/7)";
    var _ok33 = (_v33 !== _FAIL);
    if (_ok33) {
        _vars["OUTPUT"] = _v33;
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
