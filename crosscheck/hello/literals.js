'use strict';
const _rt = require(process.env.SNO_RUNTIME || __dirname + '/sno_runtime.js');
const { _vars, _FAIL, _str, _num, _cat, _add, _sub, _mul, _div, _pow,
        _apply, _kw } = _rt;

var goto_v_START;
var goto_v_END;

/* --- block functions --- */
goto_v_START = function() {
/* line 5 */
/* line 6 */
    _vars["OUTPUT"] = null;
/* line 7 */
    var _v1 = "";
    var _ok1 = (_v1 !== _FAIL);
    if (_ok1) {
        _vars["OUTPUT"] = _v1;
    }
/* line 8 */
    var _v2 = "Hello World!";
    var _ok2 = (_v2 !== _FAIL);
    if (_ok2) {
        _vars["OUTPUT"] = _v2;
    }
/* line 9 */
    var _v3 = 0;
    var _ok3 = (_v3 !== _FAIL);
    if (_ok3) {
        _vars["OUTPUT"] = _v3;
    }
/* line 10 */
    var _v4 = 1;
    var _ok4 = (_v4 !== _FAIL);
    if (_ok4) {
        _vars["OUTPUT"] = _v4;
    }
/* line 11 */
    var _v5 = (-_num(1));
    var _ok5 = (_v5 !== _FAIL);
    if (_ok5) {
        _vars["OUTPUT"] = _v5;
    }
/* line 12 */
    var _v6 = "1.";
    var _ok6 = (_v6 !== _FAIL);
    if (_ok6) {
        _vars["OUTPUT"] = _v6;
    }
/* line 13 */
    var _v7 = "1";
    var _ok7 = (_v7 !== _FAIL);
    if (_ok7) {
        _vars["OUTPUT"] = _v7;
    }
/* line 14 */
    var _v8 = "1";
    var _ok8 = (_v8 !== _FAIL);
    if (_ok8) {
        _vars["OUTPUT"] = _v8;
    }
/* line 15 */
    var _v9 = "1.0";
    var _ok9 = (_v9 !== _FAIL);
    if (_ok9) {
        _vars["OUTPUT"] = _v9;
    }
/* line 16 */
    var _v10 = "I'm here";
    var _ok10 = (_v10 !== _FAIL);
    if (_ok10) {
        _vars["OUTPUT"] = _v10;
    }
/* line 17 */
    var _v11 = "\"Quote of the day\"";
    var _ok11 = (_v11 !== _FAIL);
    if (_ok11) {
        _vars["OUTPUT"] = _v11;
    }
/* line 18 */
    var _v12 = _add("", "");
    var _ok12 = (_v12 !== _FAIL);
    if (_ok12) {
        _vars["OUTPUT"] = _v12;
    }
/* line 19 */
    var _v13 = _add("", 1);
    var _ok13 = (_v13 !== _FAIL);
    if (_ok13) {
        _vars["OUTPUT"] = _v13;
    }
/* line 20 */
    var _v14 = _add(1, "");
    var _ok14 = (_v14 !== _FAIL);
    if (_ok14) {
        _vars["OUTPUT"] = _v14;
    }
/* line 21 */
    var _v15 = _cat("", "");
    var _ok15 = (_v15 !== _FAIL);
    if (_ok15) {
        _vars["OUTPUT"] = _v15;
    }
/* line 22 */
    var _v16 = _cat("", "Z");
    var _ok16 = (_v16 !== _FAIL);
    if (_ok16) {
        _vars["OUTPUT"] = _v16;
    }
/* line 23 */
    var _v17 = _cat("A", "");
    var _ok17 = (_v17 !== _FAIL);
    if (_ok17) {
        _vars["OUTPUT"] = _v17;
    }
/* line 24 */
    var _v18 = _cat("A", "Z");
    var _ok18 = (_v18 !== _FAIL);
    if (_ok18) {
        _vars["OUTPUT"] = _v18;
    }
/* line 25 */
    var _v19 = _add(1, 2);
    var _ok19 = (_v19 !== _FAIL);
    if (_ok19) {
        _vars["OUTPUT"] = _v19;
    }
/* line 26 */
    var _v20 = _add(1, _mul(2, 3));
    var _ok20 = (_v20 !== _FAIL);
    if (_ok20) {
        _vars["OUTPUT"] = _v20;
    }
/* line 27 */
    var _v21 = _mul(_add(1, 2), 3);
    var _ok21 = (_v21 !== _FAIL);
    if (_ok21) {
        _vars["OUTPUT"] = _v21;
    }
/* line 28 */
    var _v22 = _add(1, _mul(2, 3));
    var _ok22 = (_v22 !== _FAIL);
    if (_ok22) {
        _vars["OUTPUT"] = _v22;
    }
    return goto_v_END;
}

goto_v_END = function() {
    return null;
}

/* --- undefined label stubs --- */

/* --- run --- */
{ var _pc = goto_v_START; while(_pc) _pc = _pc(); }
