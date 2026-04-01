'use strict';
const _rt = require(process.env.SNO_RUNTIME || __dirname + '/sno_runtime.js');
const { _vars, _FAIL, _str, _num, _cat, _add, _sub, _mul, _div, _pow,
        _apply, _kw } = _rt;

var goto_v_ROMAN_END;
var goto_v_ROMAN;
var goto_v_RLOOP;
var goto_v_RDONE;
var goto_v_RNEXT;
var goto_v_RETURN;
var goto_v_END;
var goto_v_START;

/* --- block functions --- */
goto_v_START = function() {
/* line 2 */
    var _v1 = _apply("DEFINE", ["roman(n)s,v,r,i"]);
    var _ok1 = (_v1 !== _FAIL);
    return goto_v_ROMAN_END;
}

goto_v_ROMAN = function() {
/* line 3 */
    var _v2 = "";
    var _ok2 = (_v2 !== _FAIL);
    if (_ok2) {
        _vars["S"] = _v2;
    }
/* line 4 */
    var _v3 = _apply("ARRAY", [13]);
    var _ok3 = (_v3 !== _FAIL);
    if (_ok3) {
        _vars["V"] = _v3;
    }
/* line 5 */
    var _v4 = 1000;
    var _ok4 = (_v4 !== _FAIL);
    if (_ok4) {
    }
/* line 6 */
    var _v5 = 900;
    var _ok5 = (_v5 !== _FAIL);
    if (_ok5) {
    }
/* line 7 */
    var _v6 = 500;
    var _ok6 = (_v6 !== _FAIL);
    if (_ok6) {
    }
/* line 8 */
    var _v7 = 400;
    var _ok7 = (_v7 !== _FAIL);
    if (_ok7) {
    }
/* line 9 */
    var _v8 = 100;
    var _ok8 = (_v8 !== _FAIL);
    if (_ok8) {
    }
/* line 10 */
    var _v9 = 90;
    var _ok9 = (_v9 !== _FAIL);
    if (_ok9) {
    }
/* line 11 */
    var _v10 = 50;
    var _ok10 = (_v10 !== _FAIL);
    if (_ok10) {
    }
/* line 12 */
    var _v11 = 40;
    var _ok11 = (_v11 !== _FAIL);
    if (_ok11) {
    }
/* line 13 */
    var _v12 = 10;
    var _ok12 = (_v12 !== _FAIL);
    if (_ok12) {
    }
/* line 14 */
    var _v13 = 9;
    var _ok13 = (_v13 !== _FAIL);
    if (_ok13) {
    }
/* line 15 */
    var _v14 = 5;
    var _ok14 = (_v14 !== _FAIL);
    if (_ok14) {
    }
/* line 16 */
    var _v15 = 4;
    var _ok15 = (_v15 !== _FAIL);
    if (_ok15) {
    }
/* line 17 */
    var _v16 = 1;
    var _ok16 = (_v16 !== _FAIL);
    if (_ok16) {
    }
/* line 18 */
    var _v17 = _apply("ARRAY", [13]);
    var _ok17 = (_v17 !== _FAIL);
    if (_ok17) {
        _vars["R"] = _v17;
    }
/* line 19 */
    var _v18 = "M";
    var _ok18 = (_v18 !== _FAIL);
    if (_ok18) {
    }
/* line 20 */
    var _v19 = "CM";
    var _ok19 = (_v19 !== _FAIL);
    if (_ok19) {
    }
/* line 21 */
    var _v20 = "D";
    var _ok20 = (_v20 !== _FAIL);
    if (_ok20) {
    }
/* line 22 */
    var _v21 = "CD";
    var _ok21 = (_v21 !== _FAIL);
    if (_ok21) {
    }
/* line 23 */
    var _v22 = "C";
    var _ok22 = (_v22 !== _FAIL);
    if (_ok22) {
    }
/* line 24 */
    var _v23 = "XC";
    var _ok23 = (_v23 !== _FAIL);
    if (_ok23) {
    }
/* line 25 */
    var _v24 = "L";
    var _ok24 = (_v24 !== _FAIL);
    if (_ok24) {
    }
/* line 26 */
    var _v25 = "XL";
    var _ok25 = (_v25 !== _FAIL);
    if (_ok25) {
    }
/* line 27 */
    var _v26 = "X";
    var _ok26 = (_v26 !== _FAIL);
    if (_ok26) {
    }
/* line 28 */
    var _v27 = "IX";
    var _ok27 = (_v27 !== _FAIL);
    if (_ok27) {
    }
/* line 29 */
    var _v28 = "V";
    var _ok28 = (_v28 !== _FAIL);
    if (_ok28) {
    }
/* line 30 */
    var _v29 = "IV";
    var _ok29 = (_v29 !== _FAIL);
    if (_ok29) {
    }
/* line 31 */
    var _v30 = "I";
    var _ok30 = (_v30 !== _FAIL);
    if (_ok30) {
    }
/* line 32 */
    var _v31 = 1;
    var _ok31 = (_v31 !== _FAIL);
    if (_ok31) {
        _vars["I"] = _v31;
    }
    return goto_v_RLOOP;
}

goto_v_RLOOP = function() {
/* line 33 */
    var _v32 = _apply("GT", [_vars["N"], 0]);
    var _ok32 = (_v32 !== _FAIL);
    if (!_ok32) return goto_v_RDONE;
    return goto_v__C33;
}

var goto_v__C33;
goto_v__C33 = function() {
/* line 34 */
    var _v34 = _apply("GE", [_vars["N"], /* unimpl E_44 */null]);
    var _ok34 = (_v34 !== _FAIL);
    if (!_ok34) return goto_v_RNEXT;
    return goto_v__C35;
}

var goto_v__C35;
goto_v__C35 = function() {
/* line 35 */
    var _v36 = _cat(_vars["S"], /* unimpl E_44 */null);
    var _ok36 = (_v36 !== _FAIL);
    if (_ok36) {
        _vars["S"] = _v36;
    }
/* line 36 */
    var _v37 = _sub(_vars["N"], /* unimpl E_44 */null);
    var _ok37 = (_v37 !== _FAIL);
    if (_ok37) {
        _vars["N"] = _v37;
    }
    return goto_v_RLOOP;
}

goto_v_RNEXT = function() {
/* line 37 */
    var _v38 = _add(_vars["I"], 1);
    var _ok38 = (_v38 !== _FAIL);
    if (_ok38) {
        _vars["I"] = _v38;
    }
    return goto_v_RLOOP;
}

goto_v_RDONE = function() {
/* line 38 */
    var _v39 = _vars["S"];
    var _ok39 = (_v39 !== _FAIL);
    if (_ok39) {
        _vars["ROMAN"] = _v39;
    }
    return goto_v_RETURN;
}

goto_v_ROMAN_END = function() {
/* line 39 */
/* line 40 */
    var _v40 = _apply("roman", [1]);
    var _ok40 = (_v40 !== _FAIL);
    if (_ok40) {
        _vars["OUTPUT"] = _v40;
    }
/* line 41 */
    var _v41 = _apply("roman", [4]);
    var _ok41 = (_v41 !== _FAIL);
    if (_ok41) {
        _vars["OUTPUT"] = _v41;
    }
/* line 42 */
    var _v42 = _apply("roman", [9]);
    var _ok42 = (_v42 !== _FAIL);
    if (_ok42) {
        _vars["OUTPUT"] = _v42;
    }
/* line 43 */
    var _v43 = _apply("roman", [42]);
    var _ok43 = (_v43 !== _FAIL);
    if (_ok43) {
        _vars["OUTPUT"] = _v43;
    }
/* line 44 */
    var _v44 = _apply("roman", [1999]);
    var _ok44 = (_v44 !== _FAIL);
    if (_ok44) {
        _vars["OUTPUT"] = _v44;
    }
/* line 45 */
    var _v45 = _apply("roman", [2024]);
    var _ok45 = (_v45 !== _FAIL);
    if (_ok45) {
        _vars["OUTPUT"] = _v45;
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
