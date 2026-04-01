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
var goto_v_E009;
var goto_v_E010;
var goto_v_E011;
var goto_v_E012;
var goto_v_E013;
var goto_v_E014;
var goto_v_E015;
var goto_v_E016;
var goto_v_E017;
var goto_v_E018;
var goto_v_START;
var goto_v_END;

/* --- block functions --- */
goto_v_START = function() {
/* line 7 */
    var _v1 = _apply("lt", [5, 4]);
    var _ok1 = (_v1 !== _FAIL);
    if (!_ok1) return goto_v_E001;
    return goto_v__C2;
}

var goto_v__C2;
goto_v__C2 = function() {
/* line 8 */
    var _v3 = "FAIL 912/001: lt(5,4) should fail";
    var _ok3 = (_v3 !== _FAIL);
    if (_ok3) {
        _vars["OUTPUT"] = _v3;
    }
    return goto_v_END;
}

goto_v_E001 = function() {
/* line 9 */
    var _v4 = _apply("lt", [4, 4]);
    var _ok4 = (_v4 !== _FAIL);
    if (!_ok4) return goto_v_E002;
    return goto_v__C5;
}

var goto_v__C5;
goto_v__C5 = function() {
/* line 10 */
    var _v6 = "FAIL 912/002: lt(4,4) should fail";
    var _ok6 = (_v6 !== _FAIL);
    if (_ok6) {
        _vars["OUTPUT"] = _v6;
    }
    return goto_v_END;
}

goto_v_E002 = function() {
/* line 11 */
    var _v7 = _apply("lt", [4, 5]);
    var _ok7 = (_v7 !== _FAIL);
    if (_ok7) return goto_v_E003;
    return goto_v__C8;
}

var goto_v__C8;
goto_v__C8 = function() {
/* line 12 */
    var _v9 = "FAIL 912/003: lt(4,5) should succeed";
    var _ok9 = (_v9 !== _FAIL);
    if (_ok9) {
        _vars["OUTPUT"] = _v9;
    }
    return goto_v_END;
}

goto_v_E003 = function() {
/* line 13 */
/* line 16 */
    var _v10 = _apply("le", [5, 2]);
    var _ok10 = (_v10 !== _FAIL);
    if (!_ok10) return goto_v_E004;
    return goto_v__C11;
}

var goto_v__C11;
goto_v__C11 = function() {
/* line 17 */
    var _v12 = "FAIL 912/004: le(5,2) should fail";
    var _ok12 = (_v12 !== _FAIL);
    if (_ok12) {
        _vars["OUTPUT"] = _v12;
    }
    return goto_v_END;
}

goto_v_E004 = function() {
/* line 18 */
    var _v13 = _apply("le", [4, 4]);
    var _ok13 = (_v13 !== _FAIL);
    if (_ok13) return goto_v_E005;
    return goto_v__C14;
}

var goto_v__C14;
goto_v__C14 = function() {
/* line 19 */
    var _v15 = "FAIL 912/005: le(4,4) should succeed";
    var _ok15 = (_v15 !== _FAIL);
    if (_ok15) {
        _vars["OUTPUT"] = _v15;
    }
    return goto_v_END;
}

goto_v_E005 = function() {
/* line 20 */
    var _v16 = _apply("le", [4, 10]);
    var _ok16 = (_v16 !== _FAIL);
    if (_ok16) return goto_v_E006;
    return goto_v__C17;
}

var goto_v__C17;
goto_v__C17 = function() {
/* line 21 */
    var _v18 = "FAIL 912/006: le(4,10) should succeed";
    var _ok18 = (_v18 !== _FAIL);
    if (_ok18) {
        _vars["OUTPUT"] = _v18;
    }
    return goto_v_END;
}

goto_v_E006 = function() {
/* line 22 */
/* line 25 */
    var _v19 = _apply("eq", [4, 5]);
    var _ok19 = (_v19 !== _FAIL);
    if (!_ok19) return goto_v_E007;
    return goto_v__C20;
}

var goto_v__C20;
goto_v__C20 = function() {
/* line 26 */
    var _v21 = "FAIL 912/007: eq(4,5) should fail";
    var _ok21 = (_v21 !== _FAIL);
    if (_ok21) {
        _vars["OUTPUT"] = _v21;
    }
    return goto_v_END;
}

goto_v_E007 = function() {
/* line 27 */
    var _v22 = _apply("eq", [5, 5]);
    var _ok22 = (_v22 !== _FAIL);
    if (_ok22) return goto_v_E008;
    return goto_v__C23;
}

var goto_v__C23;
goto_v__C23 = function() {
/* line 28 */
    var _v24 = "FAIL 912/008: eq(5,5) should succeed";
    var _ok24 = (_v24 !== _FAIL);
    if (_ok24) {
        _vars["OUTPUT"] = _v24;
    }
    return goto_v_END;
}

goto_v_E008 = function() {
/* line 29 */
/* line 32 */
    var _v25 = _apply("ne", [4, 4]);
    var _ok25 = (_v25 !== _FAIL);
    if (!_ok25) return goto_v_E009;
    return goto_v__C26;
}

var goto_v__C26;
goto_v__C26 = function() {
/* line 33 */
    var _v27 = "FAIL 912/009: ne(4,4) should fail";
    var _ok27 = (_v27 !== _FAIL);
    if (_ok27) {
        _vars["OUTPUT"] = _v27;
    }
    return goto_v_END;
}

goto_v_E009 = function() {
/* line 34 */
    var _v28 = _apply("ne", [4, 6]);
    var _ok28 = (_v28 !== _FAIL);
    if (_ok28) return goto_v_E010;
    return goto_v__C29;
}

var goto_v__C29;
goto_v__C29 = function() {
/* line 35 */
    var _v30 = "FAIL 912/010: ne(4,6) should succeed";
    var _ok30 = (_v30 !== _FAIL);
    if (_ok30) {
        _vars["OUTPUT"] = _v30;
    }
    return goto_v_END;
}

goto_v_E010 = function() {
/* line 36 */
/* line 39 */
    var _v31 = _apply("gt", [4, 6]);
    var _ok31 = (_v31 !== _FAIL);
    if (!_ok31) return goto_v_E011;
    return goto_v__C32;
}

var goto_v__C32;
goto_v__C32 = function() {
/* line 40 */
    var _v33 = "FAIL 912/011: gt(4,6) should fail";
    var _ok33 = (_v33 !== _FAIL);
    if (_ok33) {
        _vars["OUTPUT"] = _v33;
    }
    return goto_v_END;
}

goto_v_E011 = function() {
/* line 41 */
    var _v34 = _apply("gt", [4, 4]);
    var _ok34 = (_v34 !== _FAIL);
    if (!_ok34) return goto_v_E012;
    return goto_v__C35;
}

var goto_v__C35;
goto_v__C35 = function() {
/* line 42 */
    var _v36 = "FAIL 912/012: gt(4,4) should fail";
    var _ok36 = (_v36 !== _FAIL);
    if (_ok36) {
        _vars["OUTPUT"] = _v36;
    }
    return goto_v_END;
}

goto_v_E012 = function() {
/* line 43 */
    var _v37 = _apply("gt", [5, 2]);
    var _ok37 = (_v37 !== _FAIL);
    if (_ok37) return goto_v_E013;
    return goto_v__C38;
}

var goto_v__C38;
goto_v__C38 = function() {
/* line 44 */
    var _v39 = "FAIL 912/013: gt(5,2) should succeed";
    var _ok39 = (_v39 !== _FAIL);
    if (_ok39) {
        _vars["OUTPUT"] = _v39;
    }
    return goto_v_END;
}

goto_v_E013 = function() {
/* line 45 */
/* line 48 */
    var _v40 = _apply("ge", [5, 7]);
    var _ok40 = (_v40 !== _FAIL);
    if (!_ok40) return goto_v_E014;
    return goto_v__C41;
}

var goto_v__C41;
goto_v__C41 = function() {
/* line 49 */
    var _v42 = "FAIL 912/014: ge(5,7) should fail";
    var _ok42 = (_v42 !== _FAIL);
    if (_ok42) {
        _vars["OUTPUT"] = _v42;
    }
    return goto_v_END;
}

goto_v_E014 = function() {
/* line 50 */
    var _v43 = _apply("ge", [4, 4]);
    var _ok43 = (_v43 !== _FAIL);
    if (_ok43) return goto_v_E015;
    return goto_v__C44;
}

var goto_v__C44;
goto_v__C44 = function() {
/* line 51 */
    var _v45 = "FAIL 912/015: ge(4,4) should succeed";
    var _ok45 = (_v45 !== _FAIL);
    if (_ok45) {
        _vars["OUTPUT"] = _v45;
    }
    return goto_v_END;
}

goto_v_E015 = function() {
/* line 52 */
    var _v46 = _apply("ge", [7, 5]);
    var _ok46 = (_v46 !== _FAIL);
    if (_ok46) return goto_v_E016;
    return goto_v__C47;
}

var goto_v__C47;
goto_v__C47 = function() {
/* line 53 */
    var _v48 = "FAIL 912/016: ge(7,5) should succeed";
    var _ok48 = (_v48 !== _FAIL);
    if (_ok48) {
        _vars["OUTPUT"] = _v48;
    }
    return goto_v_END;
}

goto_v_E016 = function() {
/* line 54 */
/* line 57 */
    var _v49 = _apply("ne", [4, _sub(5, 1)]);
    var _ok49 = (_v49 !== _FAIL);
    if (!_ok49) return goto_v_E017;
    return goto_v__C50;
}

var goto_v__C50;
goto_v__C50 = function() {
/* line 58 */
    var _v51 = "FAIL 912/017: ne(4,5-1) should fail (both=4)";
    var _ok51 = (_v51 !== _FAIL);
    if (_ok51) {
        _vars["OUTPUT"] = _v51;
    }
    return goto_v_END;
}

goto_v_E017 = function() {
/* line 59 */
/* line 62 */
    var _v52 = _apply("ne", ["12", 12]);
    var _ok52 = (_v52 !== _FAIL);
    if (!_ok52) return goto_v_E018;
    return goto_v__C53;
}

var goto_v__C53;
goto_v__C53 = function() {
/* line 63 */
    var _v54 = "FAIL 912/018: ne(string,int) type mismatch";
    var _ok54 = (_v54 !== _FAIL);
    if (_ok54) {
        _vars["OUTPUT"] = _v54;
    }
    return goto_v_END;
}

goto_v_E018 = function() {
/* line 64 */
/* line 66 */
    var _v55 = "PASS 912_num_pred (18/18)";
    var _ok55 = (_v55 !== _FAIL);
    if (_ok55) {
        _vars["OUTPUT"] = _v55;
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
