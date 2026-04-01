'use strict';
const _rt = require(process.env.SNO_RUNTIME || __dirname + '/sno_runtime.js');
const { _vars, _FAIL, _str, _num, _cat, _add, _sub, _mul, _div, _pow,
        _apply, _kw } = _rt;

var goto_v_PUSHEND;
var goto_v_PUSH;
var goto_v_NRETURN;
var goto_v_POPEND;
var goto_v_POP;
var goto_v_RETURN;
var goto_v_UNARYEND;
var goto_v_UNARY;
var goto_v_BINARYEND;
var goto_v_BINARY;
var goto_v_LOOP;
var goto_v_END;
var goto_v_ERROR;
var goto_v_START;

/* --- block functions --- */
goto_v_START = function() {
/* line 8 */
    var _v1 = _apply("DEFINE", ["Push(x)"]);
    var _ok1 = (_v1 !== _FAIL);
/* line 9 */
    var _v2 = _apply("TABLE", []);
    var _ok2 = (_v2 !== _FAIL);
    if (_ok2) {
        _vars["STK"] = _v2;
    }
    return goto_v_PUSHEND;
}

goto_v_PUSH = function() {
/* line 10 */
    var _v3 = _add(/* unimpl E_44 */null, 1);
    var _ok3 = (_v3 !== _FAIL);
    if (_ok3) {
    }
/* line 11 */
    var _v4 = /* unimpl E_44 */null;
    var _ok4 = (_v4 !== _FAIL);
    if (_ok4) {
        _vars["PUSH"] = _v4;
    }
/* line 12 */
    var _v5 = _vars["X"];
    var _ok5 = (_v5 !== _FAIL);
    if (_ok5) {
        _vars[_str(_vars["PUSH"]).toUpperCase()] = _v5;
    }
    return goto_v_NRETURN;
}

goto_v_PUSHEND = function() {
/* line 13 */
/* line 14 */
    var _v6 = _apply("DEFINE", ["Pop()"]);
    var _ok6 = (_v6 !== _FAIL);
    return goto_v_POPEND;
}

goto_v_POP = function() {
/* line 15 */
    var _v7 = /* unimpl E_44 */null;
    var _ok7 = (_v7 !== _FAIL);
    if (_ok7) {
        _vars["POP"] = _v7;
    }
/* line 16 */
    var _v8 = _sub(/* unimpl E_44 */null, 1);
    var _ok8 = (_v8 !== _FAIL);
    if (_ok8) {
    }
    return goto_v_RETURN;
}

goto_v_POPEND = function() {
/* line 17 */
/* line 18 */
    var _v9 = _apply("DEFINE", ["Unary()arg,op"]);
    var _ok9 = (_v9 !== _FAIL);
    return goto_v_UNARYEND;
}

goto_v_UNARY = function() {
/* line 19 */
    var _v10 = _apply("Pop", []);
    var _ok10 = (_v10 !== _FAIL);
    if (_ok10) {
        _vars["ARG"] = _v10;
    }
/* line 20 */
    var _v11 = _apply("Pop", []);
    var _ok11 = (_v11 !== _FAIL);
    if (_ok11) {
        _vars["OP"] = _v11;
    }
/* line 21 */
    var _v12 = _apply("EVAL", [_cat(_vars["OP"], _vars["ARG"])]);
    var _ok12 = (_v12 !== _FAIL);
    if (_ok12) {
    }
/* line 22 */
    var _v13 = _vars["DUMMY"];
    var _ok13 = (_v13 !== _FAIL);
    if (_ok13) {
        _vars["UNARY"] = _v13;
    }
    return goto_v_NRETURN;
}

goto_v_UNARYEND = function() {
/* line 23 */
/* line 24 */
    var _v14 = _apply("DEFINE", ["Binary()op,left,right"]);
    var _ok14 = (_v14 !== _FAIL);
    return goto_v_BINARYEND;
}

goto_v_BINARY = function() {
/* line 25 */
    var _v15 = _apply("Pop", []);
    var _ok15 = (_v15 !== _FAIL);
    if (_ok15) {
        _vars["RIGHT"] = _v15;
    }
/* line 26 */
    var _v16 = _apply("Pop", []);
    var _ok16 = (_v16 !== _FAIL);
    if (_ok16) {
        _vars["OP"] = _v16;
    }
/* line 27 */
    var _v17 = _apply("Pop", []);
    var _ok17 = (_v17 !== _FAIL);
    if (_ok17) {
        _vars["LEFT"] = _v17;
    }
/* line 28 */
    var _v18 = _apply("EVAL", [_cat(_vars["LEFT"], " ", _vars["OP"], " ", _vars["RIGHT"])]);
    var _ok18 = (_v18 !== _FAIL);
    if (_ok18) {
    }
/* line 29 */
    var _v19 = _vars["DUMMY"];
    var _ok19 = (_v19 !== _FAIL);
    if (_ok19) {
        _vars["BINARY"] = _v19;
    }
    return goto_v_NRETURN;
}

goto_v_BINARYEND = function() {
/* line 30 */
/* line 32 */
    var _v20 = _apply("SPAN", ["0123456789"]);
    var _ok20 = (_v20 !== _FAIL);
    if (_ok20) {
        _vars["INTEGER"] = _v20;
    }
/* line 33 */
    var _v21 = _cat(_apply("ANY", ["eEdD"]), /* unimpl E_20 */null, _vars["INTEGER"]);
    var _ok21 = (_v21 !== _FAIL);
    if (_ok21) {
        _vars["EXPONENT"] = _v21;
    }
/* line 34 */
    var _v22 = /* unimpl E_20 */null;
    var _ok22 = (_v22 !== _FAIL);
    if (_ok22) {
        _vars["REAL"] = _v22;
    }
/* line 37 */
    var _v23 = _apply("ANY", ["+-"]);
    var _ok23 = (_v23 !== _FAIL);
    if (_ok23) {
        _vars["ADDOP"] = _v23;
    }
/* line 38 */
    var _v24 = _apply("ANY", ["*/"]);
    var _ok24 = (_v24 !== _FAIL);
    if (_ok24) {
        _vars["MULOP"] = _v24;
    }
/* line 39 */
    var _v25 = /* unimpl E_20 */null;
    var _ok25 = (_v25 !== _FAIL);
    if (_ok25) {
        _vars["CONSTANT"] = _v25;
    }
/* line 41 */
    var _v26 = /* unimpl E_20 */null;
    var _ok26 = (_v26 !== _FAIL);
    if (_ok26) {
        _vars["PRIMARY"] = _v26;
    }
/* line 43 */
    var _v27 = /* unimpl E_20 */null;
    var _ok27 = (_v27 !== _FAIL);
    if (_ok27) {
        _vars["FACTOR"] = _v27;
    }
/* line 46 */
    var _v28 = /* unimpl E_20 */null;
    var _ok28 = (_v28 !== _FAIL);
    if (_ok28) {
        _vars["TERM"] = _v28;
    }
/* line 49 */
    var _v29 = /* unimpl E_20 */null;
    var _ok29 = (_v29 !== _FAIL);
    if (_ok29) {
        _vars["EXPR"] = _v29;
    }
/* line 52 */
    var _v30 = 1;
    var _ok30 = (_v30 !== _FAIL);
    if (_ok30) {
    }
    return goto_v_LOOP;
}

goto_v_LOOP = function() {
/* line 53 */
    var _v31 = _vars["INPUT"];
    var _ok31 = (_v31 !== _FAIL);
    if (_ok31) {
        _vars["LINE"] = _v31;
    }
    if (!_ok31) return goto_v_END;
    return goto_v__C32;
}

var goto_v__C32;
goto_v__C32 = function() {
/* line 54 */
    var _subj33 = _str(_vars["LINE"]);
    var _slen33 = _subj33.length;
    var _cur33  = 0;
    var _mstart33 = 0;
    var _ok33   = false;
    var _pc = 144;
    var _saved = new Array(1024).fill(0); /* cursor save slots */
    /* Byrd-box dispatch for stmt u33 */
    dispatch: for(;;) switch(_pc) {
    case 144: /* uid36 PROCEED */
        _saved[36] = _cur33;
_pc = 148; continue dispatch;
    case 146: /* uid36 CONCEDE */
        if (_saved[36] >= _slen33) { _pc = 140; continue dispatch;
 }
        _saved[36]++; _cur33 = _saved[36]; _mstart33 = _saved[36];
_pc = 148; continue dispatch;
    case 148: /* uid37 PROCEED */
_pc = 156; continue dispatch;
    case 150: /* uid37 CONCEDE */
_pc = 152; continue dispatch;
    case 152: /* uid38 PROCEED */
_pc = 146; continue dispatch;
    case 154: /* uid38 CONCEDE */
_pc = 140; continue dispatch;
    case 160: /* uid40 PROCEED */
        if (_cur33 !== 0) { _pc = 152; continue dispatch;
 }
_pc = 136; continue dispatch;
    case 162: /* uid40 CONCEDE */
_pc = 152; continue dispatch;
    case 136: /* uid34 PROCEED */
        _ok33 = true;
        break dispatch;
    case 138: /* uid34 CONCEDE */
        break dispatch;
    case 140: /* uid35 PROCEED */
        _ok33 = false;
        break dispatch;
    case 142: /* uid35 CONCEDE */
        break dispatch;
    default:
        /* unreachable — pattern dispatch hole uid=" + _pc + " */
        break dispatch;
    } /* end dispatch */
    if (!_ok33) return goto_v_ERROR;
    return goto_v__C41;
}

var goto_v__C41;
goto_v__C41 = function() {
/* line 55 */
    var _v42 = _apply("Pop", []);
    var _ok42 = (_v42 !== _FAIL);
    if (_ok42) {
        _vars["OUTPUT"] = _v42;
    }
    return goto_v_LOOP;
}

goto_v_ERROR = function() {
/* line 56 */
    var _v43 = "Bad input, try again";
    var _ok43 = (_v43 !== _FAIL);
    if (_ok43) {
        _vars["OUTPUT"] = _v43;
    }
    return goto_v_LOOP;
}

goto_v_END = function() {
    return null;
}

/* --- undefined label stubs --- */
if (!goto_v_NRETURN) goto_v_NRETURN = function() { return null; };
if (!goto_v_RETURN) goto_v_RETURN = function() { return null; };
if (!goto_v_START) goto_v_START = function() { return null; };

/* --- run --- */
{ var _pc = goto_v_START; while(_pc) _pc = _pc(); }
