'use strict';
const _rt = require(process.env.SNO_RUNTIME || __dirname + '/sno_runtime.js');
const { _vars, _FAIL, _str, _num, _cat, _add, _sub, _mul, _div, _pow,
        _apply, _kw } = _rt;

var goto_v_FACT_END;
var goto_v_FACT;
var goto_v_RETURN;
var goto_v_E001;
var goto_v_END;
var goto_v_E002;
var goto_v_E003;
var goto_v_FACT2_END;
var goto_v_FACT2_ENTRY;
var goto_v_E004;
var goto_v_START;
var goto_v_END;

/* --- block functions --- */
goto_v_START = function() {
/* line 4 */
    var _v1 = _apply("define", ["fact(n)"]);
    var _ok1 = (_v1 !== _FAIL);
    return goto_v_FACT_END;
}

goto_v_FACT = function() {
/* line 5 */
    var _v2 = _cat(_apply("eq", [_vars["N"], 1]), 1);
    var _ok2 = (_v2 !== _FAIL);
    if (_ok2) {
        _vars["FACT"] = _v2;
    }
    if (_ok2) return goto_v_RETURN;
    return goto_v__C3;
}

var goto_v__C3;
goto_v__C3 = function() {
/* line 6 */
    var _v4 = _mul(_vars["N"], _apply("fact", [_sub(_vars["N"], 1)]));
    var _ok4 = (_v4 !== _FAIL);
    if (_ok4) {
        _vars["FACT"] = _v4;
    }
    return goto_v_RETURN;
}

goto_v_FACT_END = function() {
/* line 7 */
/* line 9 */
    var _v5 = _apply("ne", [_apply("fact", [5]), 120]);
    var _ok5 = (_v5 !== _FAIL);
    if (!_ok5) return goto_v_E001;
    return goto_v__C6;
}

var goto_v__C6;
goto_v__C6 = function() {
/* line 10 */
    var _v7 = "FAIL 1010/001: fact(5)=120";
    var _ok7 = (_v7 !== _FAIL);
    if (_ok7) {
        _vars["OUTPUT"] = _v7;
    }
    return goto_v_END;
}

goto_v_E001 = function() {
/* line 11 */
/* line 14 */
    var _v8 = _apply("differ", [_apply("opsyn", [_vars["FACTO"], "fact"])]);
    var _ok8 = (_v8 !== _FAIL);
    if (!_ok8) return goto_v_E002;
    return goto_v__C9;
}

var goto_v__C9;
goto_v__C9 = function() {
/* line 15 */
    var _v10 = "FAIL 1010/002: opsyn alias";
    var _ok10 = (_v10 !== _FAIL);
    if (_ok10) {
        _vars["OUTPUT"] = _v10;
    }
    return goto_v_END;
}

goto_v_E002 = function() {
/* line 16 */
/* line 17 */
    var _v11 = _apply("ne", [_apply("facto", [4]), 24]);
    var _ok11 = (_v11 !== _FAIL);
    if (!_ok11) return goto_v_E003;
    return goto_v__C12;
}

var goto_v__C12;
goto_v__C12 = function() {
/* line 18 */
    var _v13 = "FAIL 1010/003: facto(4)=24 via alias";
    var _ok13 = (_v13 !== _FAIL);
    if (_ok13) {
        _vars["OUTPUT"] = _v13;
    }
    return goto_v_END;
}

goto_v_E003 = function() {
/* line 19 */
/* line 22 */
    var _v14 = _apply("define", ["fact2(n)", _vars["FACT2_ENTRY"]]);
    var _ok14 = (_v14 !== _FAIL);
    return goto_v_FACT2_END;
}

goto_v_FACT2_ENTRY = function() {
/* line 23 */
/* line 24 */
    var _v15 = _cat(_apply("eq", [_vars["N"], 1]), 1);
    var _ok15 = (_v15 !== _FAIL);
    if (_ok15) {
        _vars["FACT2"] = _v15;
    }
    if (_ok15) return goto_v_RETURN;
    return goto_v__C16;
}

var goto_v__C16;
goto_v__C16 = function() {
/* line 25 */
    var _v17 = _mul(_vars["N"], _apply("fact2", [_sub(_vars["N"], 1)]));
    var _ok17 = (_v17 !== _FAIL);
    if (_ok17) {
        _vars["FACT2"] = _v17;
    }
    return goto_v_RETURN;
}

goto_v_FACT2_END = function() {
/* line 26 */
/* line 27 */
    var _v18 = _apply("ne", [_apply("fact2", [6]), 720]);
    var _ok18 = (_v18 !== _FAIL);
    if (!_ok18) return goto_v_E004;
    return goto_v__C19;
}

var goto_v__C19;
goto_v__C19 = function() {
/* line 28 */
    var _v20 = "FAIL 1010/004: fact2(6)=720 alt entry";
    var _ok20 = (_v20 !== _FAIL);
    if (_ok20) {
        _vars["OUTPUT"] = _v20;
    }
    return goto_v_END;
}

goto_v_E004 = function() {
/* line 29 */
/* line 31 */
    var _v21 = "PASS 1010_func_recursion (4/4)";
    var _ok21 = (_v21 !== _FAIL);
    if (_ok21) {
        _vars["OUTPUT"] = _v21;
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
