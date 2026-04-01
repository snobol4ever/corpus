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
    var _v1 = "John Smith";
    var _ok1 = (_v1 !== _FAIL);
    if (_ok1) {
        _vars["X"] = _v1;
    }
/* line 3 */
    var _subj2 = _str(_vars["X"]);
    var _slen2 = _subj2.length;
    var _cur2  = 0;
    var _mstart2 = 0;
    var _ok2   = false;
    var _pc = 20;
    var _saved = new Array(1024).fill(0); /* cursor save slots */
    /* Byrd-box dispatch for stmt u2 */
    dispatch: for(;;) switch(_pc) {
    case 20: /* uid5 PROCEED */
        _saved[5] = _cur2;
_pc = 24; continue dispatch;
    case 22: /* uid5 CONCEDE */
        if (_saved[5] >= _slen2) { _pc = 16; continue dispatch;
 }
        _saved[5]++; _cur2 = _saved[5]; _mstart2 = _saved[5];
_pc = 24; continue dispatch;
    case 24: /* uid6 PROCEED */
_pc = 32; continue dispatch;
    case 26: /* uid6 CONCEDE */
_pc = 28; continue dispatch;
    case 28: /* uid7 PROCEED */
_pc = 22; continue dispatch;
    case 30: /* uid7 CONCEDE */
_pc = 16; continue dispatch;
    case 36: /* uid9 PROCEED */
        _saved[11] = _cur2;
_pc = 40; continue dispatch;
    case 38: /* uid9 CONCEDE */
_pc = 42; continue dispatch;
    case 52: /* uid13 PROCEED */
        _saved[13] = _cur2;
        while (_cur2 < _slen2 && " ".indexOf(_subj2[_cur2]) < 0) _cur2++;
        if (_cur2 >= _slen2) { _cur2 = _saved13; _pc = 28; continue dispatch;
 }
_pc = 48; continue dispatch;
    case 54: /* uid13 CONCEDE */
        _cur2 = _saved[13];
_pc = 28; continue dispatch;
    case 48: /* uid12 PROCEED */
        _vars["FIRST"] = _subj2.slice(_saved[11], _cur2);
_pc = 12; continue dispatch;
    case 50: /* uid12 CONCEDE */
_pc = 28; continue dispatch;
    case 12: /* uid3 PROCEED */
        _ok2 = true;
        break dispatch;
    case 14: /* uid3 CONCEDE */
        break dispatch;
    case 16: /* uid4 PROCEED */
        _ok2 = false;
        break dispatch;
    case 18: /* uid4 CONCEDE */
        break dispatch;
    default:
        /* unreachable — pattern dispatch hole uid=" + _pc + " */
        break dispatch;
    } /* end dispatch */
    if (_ok2) return goto_v_YES;
    return goto_v__C14;
}

var goto_v__C14;
goto_v__C14 = function() {
/* line 4 */
    var _v15 = "fail";
    var _ok15 = (_v15 !== _FAIL);
    if (_ok15) {
        _vars["OUTPUT"] = _v15;
    }
/* line 5 */
    return goto_v_END;
}

goto_v_YES = function() {
/* line 6 */
    var _v16 = _cat(_vars["FIRST"], " / ", _vars["LAST"]);
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
