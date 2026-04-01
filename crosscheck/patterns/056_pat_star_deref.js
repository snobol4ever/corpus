'use strict';
const _rt = require(process.env.SNO_RUNTIME || __dirname + '/sno_runtime.js');
const { _vars, _FAIL, _str, _num, _cat, _add, _sub, _mul, _div, _pow,
        _apply, _kw } = _rt;

var goto_v_YES;
var goto_v_END;
var goto_v_START;

/* --- block functions --- */
goto_v_START = function() {
/* line 2 */
    var _v1 = "hello";
    var _ok1 = (_v1 !== _FAIL);
    if (_ok1) {
        _vars["PAT"] = _v1;
    }
/* line 3 */
    var _v2 = "say hello world";
    var _ok2 = (_v2 !== _FAIL);
    if (_ok2) {
        _vars["X"] = _v2;
    }
/* line 4 */
    var _subj3 = _str(_vars["X"]);
    var _slen3 = _subj3.length;
    var _cur3  = 0;
    var _mstart3 = 0;
    var _ok3   = false;
    var _pc = 24;
    var _saved = new Array(1024).fill(0); /* cursor save slots */
    /* Byrd-box dispatch for stmt u3 */
    dispatch: for(;;) switch(_pc) {
    case 24: /* uid6 PROCEED */
        _saved[6] = _cur3;
_pc = 28; continue dispatch;
    case 26: /* uid6 CONCEDE */
        if (_saved[6] >= _slen3) { _pc = 20; continue dispatch;
 }
        _saved[6]++; _cur3 = _saved[6]; _mstart3 = _saved[6];
_pc = 28; continue dispatch;
    case 28: /* uid7 PROCEED */
_pc = 36; continue dispatch;
    case 30: /* uid7 CONCEDE */
_pc = 32; continue dispatch;
    case 32: /* uid8 PROCEED */
_pc = 26; continue dispatch;
    case 34: /* uid8 CONCEDE */
_pc = 20; continue dispatch;
    case 36: /* uid9 PROCEED */
        _saved[11] = _cur3;
_pc = 40; continue dispatch;
    case 38: /* uid9 CONCEDE */
_pc = 42; continue dispatch;
    case 52: /* uid13 PROCEED */
        /* stub pat kind 8 */
_pc = 48; continue dispatch;
    case 54: /* uid13 CONCEDE */
_pc = 32; continue dispatch;
    case 48: /* uid12 PROCEED */
        _vars["V"] = _subj3.slice(_saved[11], _cur3);
_pc = 16; continue dispatch;
    case 50: /* uid12 CONCEDE */
_pc = 32; continue dispatch;
    case 16: /* uid4 PROCEED */
        _ok3 = true;
        break dispatch;
    case 18: /* uid4 CONCEDE */
        break dispatch;
    case 20: /* uid5 PROCEED */
        _ok3 = false;
        break dispatch;
    case 22: /* uid5 CONCEDE */
        break dispatch;
    default:
        /* unreachable — pattern dispatch hole uid=" + _pc + " */
        break dispatch;
    } /* end dispatch */
    if (_ok3) return goto_v_YES;
    return goto_v__C14;
}

var goto_v__C14;
goto_v__C14 = function() {
/* line 5 */
    var _v15 = "fail";
    var _ok15 = (_v15 !== _FAIL);
    if (_ok15) {
        _vars["OUTPUT"] = _v15;
    }
/* line 6 */
    return goto_v_END;
}

goto_v_YES = function() {
/* line 7 */
    var _v16 = _vars["V"];
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
