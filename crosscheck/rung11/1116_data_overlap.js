'use strict';
const _rt = require(process.env.SNO_RUNTIME || __dirname + '/sno_runtime.js');
const { _vars, _FAIL, _str, _num, _cat, _add, _sub, _mul, _div, _pow,
        _apply, _kw } = _rt;

var goto_v_E001;
var goto_v_END;
var goto_v_E002;
var goto_v_E003;
var goto_v_START;
var goto_v_END;

/* --- block functions --- */
goto_v_START = function() {
/* line 6 */
    var _v1 = _apply("data", ["node(val,lson,rson)"]);
    var _ok1 = (_v1 !== _FAIL);
/* line 7 */
    var _v2 = _apply("data", ["clunk(value,lson)"]);
    var _ok2 = (_v2 !== _FAIL);
/* line 10 */
    var _v3 = _apply("node", ["x", "y", "z"]);
    var _ok3 = (_v3 !== _FAIL);
    if (_ok3) {
        _vars["A"] = _v3;
    }
/* line 11 */
    var _v4 = _apply("node", []);
    var _ok4 = (_v4 !== _FAIL);
    if (_ok4) {
        _vars["B"] = _v4;
    }
/* line 12 */
    var _v5 = _vars["A"];
    var _ok5 = (_v5 !== _FAIL);
    if (_ok5) {
    }
/* line 13 */
    var _v6 = _apply("differ", [_apply("rson", [_apply("lson", [_vars["B"]])]), "z"]);
    var _ok6 = (_v6 !== _FAIL);
    if (!_ok6) return goto_v_E001;
    return goto_v__C7;
}

var goto_v__C7;
goto_v__C7 = function() {
/* line 14 */
    var _v8 = "FAIL 1116/001: node.rson after clunk data def";
    var _ok8 = (_v8 !== _FAIL);
    if (_ok8) {
        _vars["OUTPUT"] = _v8;
    }
    return goto_v_END;
}

goto_v_E001 = function() {
/* line 15 */
/* line 18 */
    var _v9 = _apply("differ", [_apply("value", ["b"]), _vars["B"]]);
    var _ok9 = (_v9 !== _FAIL);
    if (!_ok9) return goto_v_E002;
    return goto_v__C10;
}

var goto_v__C10;
goto_v__C10 = function() {
/* line 19 */
    var _v11 = "FAIL 1116/002: value() still works after clunk";
    var _ok11 = (_v11 !== _FAIL);
    if (_ok11) {
        _vars["OUTPUT"] = _v11;
    }
    return goto_v_END;
}

goto_v_E002 = function() {
/* line 20 */
/* line 23 */
    var _v12 = _apply("clunk", ["alpha", "beta"]);
    var _ok12 = (_v12 !== _FAIL);
    if (_ok12) {
        _vars["C"] = _v12;
    }
/* line 24 */
    var _v13 = _apply("differ", [_apply("lson", [_vars["C"]]), "beta"]);
    var _ok13 = (_v13 !== _FAIL);
    if (!_ok13) return goto_v_E003;
    return goto_v__C14;
}

var goto_v__C14;
goto_v__C14 = function() {
/* line 25 */
    var _v15 = "FAIL 1116/003: clunk.lson accessor";
    var _ok15 = (_v15 !== _FAIL);
    if (_ok15) {
        _vars["OUTPUT"] = _v15;
    }
    return goto_v_END;
}

goto_v_E003 = function() {
/* line 26 */
/* line 28 */
    var _v16 = "PASS 1116_data_overlap (3/3)";
    var _ok16 = (_v16 !== _FAIL);
    if (_ok16) {
        _vars["OUTPUT"] = _v16;
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
