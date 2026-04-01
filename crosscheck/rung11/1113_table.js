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
var goto_v_E008;
var goto_v_START;
var goto_v_END;

/* --- block functions --- */
goto_v_START = function() {
/* line 4 */
    var _v1 = _apply("table", [10]);
    var _ok1 = (_v1 !== _FAIL);
    if (_ok1) {
        _vars["T"] = _v1;
    }
/* line 7 */
    var _v2 = _apply("differ", [/* unimpl E_44 */null]);
    var _ok2 = (_v2 !== _FAIL);
    if (!_ok2) return goto_v_E001;
    return goto_v__C3;
}

var goto_v__C3;
goto_v__C3 = function() {
/* line 8 */
    var _v4 = "FAIL 1113/001: absent key is null";
    var _ok4 = (_v4 !== _FAIL);
    if (_ok4) {
        _vars["OUTPUT"] = _v4;
    }
    return goto_v_END;
}

goto_v_E001 = function() {
/* line 9 */
/* line 12 */
    var _v5 = "dog";
    var _ok5 = (_v5 !== _FAIL);
    if (_ok5) {
    }
/* line 13 */
    var _v6 = _apply("differ", [/* unimpl E_44 */null, "dog"]);
    var _ok6 = (_v6 !== _FAIL);
    if (!_ok6) return goto_v_E002;
    return goto_v__C7;
}

var goto_v__C7;
goto_v__C7 = function() {
/* line 14 */
    var _v8 = "FAIL 1113/002: string key assign/read";
    var _ok8 = (_v8 !== _FAIL);
    if (_ok8) {
        _vars["OUTPUT"] = _v8;
    }
    return goto_v_END;
}

goto_v_E002 = function() {
/* line 15 */
/* line 18 */
    var _v9 = 45;
    var _ok9 = (_v9 !== _FAIL);
    if (_ok9) {
    }
/* line 19 */
    var _v10 = _apply("differ", [/* unimpl E_44 */null, 45]);
    var _ok10 = (_v10 !== _FAIL);
    if (!_ok10) return goto_v_E003;
    return goto_v__C11;
}

var goto_v__C11;
goto_v__C11 = function() {
/* line 20 */
    var _v12 = "FAIL 1113/003: integer key assign/read";
    var _ok12 = (_v12 !== _FAIL);
    if (_ok12) {
        _vars["OUTPUT"] = _v12;
    }
    return goto_v_END;
}

goto_v_E003 = function() {
/* line 21 */
/* line 24 */
    var _v13 = _apply("differ", [/* unimpl E_44 */null, "dog"]);
    var _ok13 = (_v13 !== _FAIL);
    if (!_ok13) return goto_v_E004;
    return goto_v__C14;
}

var goto_v__C14;
goto_v__C14 = function() {
/* line 25 */
    var _v15 = "FAIL 1113/004: string key survives int key add";
    var _ok15 = (_v15 !== _FAIL);
    if (_ok15) {
        _vars["OUTPUT"] = _v15;
    }
    return goto_v_END;
}

goto_v_E004 = function() {
/* line 26 */
/* line 29 */
    var _v16 = _apply("convert", [_vars["T"], "array"]);
    var _ok16 = (_v16 !== _FAIL);
    if (_ok16) {
        _vars["TA"] = _v16;
    }
/* line 30 */
    var _v17 = _apply("differ", [_apply("prototype", [_vars["TA"]]), "2,2"]);
    var _ok17 = (_v17 !== _FAIL);
    if (!_ok17) return goto_v_E005;
    return goto_v__C18;
}

var goto_v__C18;
goto_v__C18 = function() {
/* line 31 */
    var _v19 = "FAIL 1113/005: table->array prototype 2,2";
    var _ok19 = (_v19 !== _FAIL);
    if (_ok19) {
        _vars["OUTPUT"] = _v19;
    }
    return goto_v_END;
}

goto_v_E005 = function() {
/* line 32 */
/* line 35 */
    var _v20 = _apply("convert", [_vars["TA"], "table"]);
    var _ok20 = (_v20 !== _FAIL);
    if (_ok20) {
        _vars["ATA"] = _v20;
    }
/* line 36 */
    var _v21 = _apply("differ", [/* unimpl E_44 */null, 45]);
    var _ok21 = (_v21 !== _FAIL);
    if (!_ok21) return goto_v_E006;
    return goto_v__C22;
}

var goto_v__C22;
goto_v__C22 = function() {
/* line 37 */
    var _v23 = "FAIL 1113/006: array->table int key roundtrip";
    var _ok23 = (_v23 !== _FAIL);
    if (_ok23) {
        _vars["OUTPUT"] = _v23;
    }
    return goto_v_END;
}

goto_v_E006 = function() {
/* line 38 */
/* line 41 */
    var _v24 = _apply("differ", [/* unimpl E_44 */null, "dog"]);
    var _ok24 = (_v24 !== _FAIL);
    if (!_ok24) return goto_v_E007;
    return goto_v__C25;
}

var goto_v__C25;
goto_v__C25 = function() {
/* line 42 */
    var _v26 = "FAIL 1113/007: array->table string key roundtrip";
    var _ok26 = (_v26 !== _FAIL);
    if (_ok26) {
        _vars["OUTPUT"] = _v26;
    }
    return goto_v_END;
}

goto_v_E007 = function() {
/* line 43 */
/* line 46 */
    var _v27 = "fish";
    var _ok27 = (_v27 !== _FAIL);
    if (_ok27) {
    }
/* line 47 */
    var _v28 = _apply("differ", [/* unimpl E_44 */null, "fish"]);
    var _ok28 = (_v28 !== _FAIL);
    if (!_ok28) return goto_v_E008;
    return goto_v__C29;
}

var goto_v__C29;
goto_v__C29 = function() {
/* line 48 */
    var _v30 = "FAIL 1113/008: [] and <> syntax equivalent";
    var _ok30 = (_v30 !== _FAIL);
    if (_ok30) {
        _vars["OUTPUT"] = _v30;
    }
    return goto_v_END;
}

goto_v_E008 = function() {
/* line 49 */
/* line 51 */
    var _v31 = "PASS 1113_table (8/8)";
    var _ok31 = (_v31 !== _FAIL);
    if (_ok31) {
        _vars["OUTPUT"] = _v31;
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
