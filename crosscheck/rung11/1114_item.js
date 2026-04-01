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
var goto_v_E007;
var goto_v_START;
var goto_v_END;

/* --- block functions --- */
goto_v_START = function() {
/* line 4 */
    var _v1 = _apply("array", [10]);
    var _ok1 = (_v1 !== _FAIL);
    if (_ok1) {
        _vars["AAA"] = _v1;
    }
/* line 7 */
    var _v2 = 5;
    var _ok2 = (_v2 !== _FAIL);
    if (_ok2) {
    }
/* line 8 */
    var _v3 = _apply("differ", [_apply("item", [_vars["AAA"], 1]), 5]);
    var _ok3 = (_v3 !== _FAIL);
    if (!_ok3) return goto_v_E001;
    return goto_v__C4;
}

var goto_v__C4;
goto_v__C4 = function() {
/* line 9 */
    var _v5 = "FAIL 1114/001: item 1D assign/read";
    var _ok5 = (_v5 !== _FAIL);
    if (_ok5) {
        _vars["OUTPUT"] = _v5;
    }
    return goto_v_END;
}

goto_v_E001 = function() {
/* line 10 */
/* line 13 */
    var _v6 = _apply("differ", [/* unimpl E_44 */null, 5]);
    var _ok6 = (_v6 !== _FAIL);
    if (!_ok6) return goto_v_E002;
    return goto_v__C7;
}

var goto_v__C7;
goto_v__C7 = function() {
/* line 14 */
    var _v8 = "FAIL 1114/002: item == bracket read";
    var _ok8 = (_v8 !== _FAIL);
    if (_ok8) {
        _vars["OUTPUT"] = _v8;
    }
    return goto_v_END;
}

goto_v_E002 = function() {
/* line 15 */
/* line 17 */
    var _v9 = 22;
    var _ok9 = (_v9 !== _FAIL);
    if (_ok9) {
    }
/* line 18 */
    var _v10 = _apply("differ", [_apply("item", [_vars["AAA"], 2]), 22]);
    var _ok10 = (_v10 !== _FAIL);
    if (!_ok10) return goto_v_E003;
    return goto_v__C11;
}

var goto_v__C11;
goto_v__C11 = function() {
/* line 19 */
    var _v12 = "FAIL 1114/003: bracket assign, item read";
    var _ok12 = (_v12 !== _FAIL);
    if (_ok12) {
        _vars["OUTPUT"] = _v12;
    }
    return goto_v_END;
}

goto_v_E003 = function() {
/* line 20 */
/* line 23 */
    var _v13 = _apply("array", ["2,2,2,2"]);
    var _ok13 = (_v13 !== _FAIL);
    if (_ok13) {
        _vars["AMA"] = _v13;
    }
/* line 24 */
    var _v14 = 1212;
    var _ok14 = (_v14 !== _FAIL);
    if (_ok14) {
    }
/* line 25 */
    var _v15 = _apply("differ", [_apply("item", [_vars["AMA"], 1, 2, 1, 2]), 1212]);
    var _ok15 = (_v15 !== _FAIL);
    if (!_ok15) return goto_v_E004;
    return goto_v__C16;
}

var goto_v__C16;
goto_v__C16 = function() {
/* line 26 */
    var _v17 = "FAIL 1114/004: item 4D assign/read";
    var _ok17 = (_v17 !== _FAIL);
    if (_ok17) {
        _vars["OUTPUT"] = _v17;
    }
    return goto_v_END;
}

goto_v_E004 = function() {
/* line 27 */
/* line 29 */
    var _v18 = _apply("differ", [/* unimpl E_44 */null, 1212]);
    var _ok18 = (_v18 !== _FAIL);
    if (!_ok18) return goto_v_E005;
    return goto_v__C19;
}

var goto_v__C19;
goto_v__C19 = function() {
/* line 30 */
    var _v20 = "FAIL 1114/005: item 4D == bracket";
    var _ok20 = (_v20 !== _FAIL);
    if (_ok20) {
        _vars["OUTPUT"] = _v20;
    }
    return goto_v_END;
}

goto_v_E005 = function() {
/* line 31 */
/* line 33 */
    var _v21 = 2121;
    var _ok21 = (_v21 !== _FAIL);
    if (_ok21) {
    }
/* line 34 */
    var _v22 = _apply("differ", [_apply("item", [_vars["AMA"], 2, 1, 2, 1]), 2121]);
    var _ok22 = (_v22 !== _FAIL);
    if (!_ok22) return goto_v_E006;
    return goto_v__C23;
}

var goto_v__C23;
goto_v__C23 = function() {
/* line 35 */
    var _v24 = "FAIL 1114/006: bracket 4D assign, item read";
    var _ok24 = (_v24 !== _FAIL);
    if (_ok24) {
        _vars["OUTPUT"] = _v24;
    }
    return goto_v_END;
}

goto_v_E006 = function() {
/* line 36 */
/* line 39 */
    var _v25 = _apply("table", []);
    var _ok25 = (_v25 !== _FAIL);
    if (_ok25) {
        _vars["TT"] = _v25;
    }
/* line 40 */
    var _v26 = "val";
    var _ok26 = (_v26 !== _FAIL);
    if (_ok26) {
    }
/* line 41 */
    var _v27 = _apply("differ", [_apply("item", [_vars["TT"], "key"]), "val"]);
    var _ok27 = (_v27 !== _FAIL);
    if (!_ok27) return goto_v_E007;
    return goto_v__C28;
}

var goto_v__C28;
goto_v__C28 = function() {
/* line 42 */
    var _v29 = "FAIL 1114/007: item on table";
    var _ok29 = (_v29 !== _FAIL);
    if (_ok29) {
        _vars["OUTPUT"] = _v29;
    }
    return goto_v_END;
}

goto_v_E007 = function() {
/* line 43 */
/* line 45 */
    var _v30 = "PASS 1114_item (7/7)";
    var _ok30 = (_v30 !== _FAIL);
    if (_ok30) {
        _vars["OUTPUT"] = _v30;
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
