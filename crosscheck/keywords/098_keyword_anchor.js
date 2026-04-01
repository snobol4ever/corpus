'use strict';
const _rt = require(process.env.SNO_RUNTIME || __dirname + '/sno_runtime.js');
const { _vars, _FAIL, _str, _num, _cat, _add, _sub, _mul, _div, _pow,
        _apply, _kw } = _rt;

var goto_v_YES;
var goto_v_NO;
var goto_v_YES2;
var goto_v_NO2;
var goto_v_END;
var goto_v_START;

/* --- block functions --- */
goto_v_START = function() {
/* line 2 */
    var _v1 = 1;
    var _ok1 = (_v1 !== _FAIL);
    if (_ok1) {
    }
/* line 3 */
    var _v2 = "hello world";
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
        if (_cur3 + 5 > _slen3) { _pc = 32; continue dispatch;
 }
        if (_subj3.slice(_cur3, _cur3+5) !== "hello") { _pc = 32; continue dispatch;
 }
        _saved[9] = _cur3; _cur3 += 5;
_pc = 16; continue dispatch;
    case 38: /* uid9 CONCEDE */
        _cur3 = _saved[9];
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
    if (!_ok3) return goto_v_NO;
}

goto_v_YES = function() {
/* line 5 */
    var _v10 = "anchored match ok";
    var _ok10 = (_v10 !== _FAIL);
    if (_ok10) {
        _vars["OUTPUT"] = _v10;
    }
/* line 6 */
    var _subj11 = _str(_vars["X"]);
    var _slen11 = _subj11.length;
    var _cur11  = 0;
    var _mstart11 = 0;
    var _ok11   = false;
    var _pc = 56;
    var _saved = new Array(1024).fill(0); /* cursor save slots */
    /* Byrd-box dispatch for stmt u11 */
    dispatch: for(;;) switch(_pc) {
    case 56: /* uid14 PROCEED */
        _saved[14] = _cur11;
_pc = 60; continue dispatch;
    case 58: /* uid14 CONCEDE */
        if (_saved[14] >= _slen11) { _pc = 52; continue dispatch;
 }
        _saved[14]++; _cur11 = _saved[14]; _mstart11 = _saved[14];
_pc = 60; continue dispatch;
    case 60: /* uid15 PROCEED */
_pc = 68; continue dispatch;
    case 62: /* uid15 CONCEDE */
_pc = 64; continue dispatch;
    case 64: /* uid16 PROCEED */
_pc = 58; continue dispatch;
    case 66: /* uid16 CONCEDE */
_pc = 52; continue dispatch;
    case 68: /* uid17 PROCEED */
        if (_cur11 + 5 > _slen11) { _pc = 64; continue dispatch;
 }
        if (_subj11.slice(_cur11, _cur11+5) !== "world") { _pc = 64; continue dispatch;
 }
        _saved[17] = _cur11; _cur11 += 5;
_pc = 48; continue dispatch;
    case 70: /* uid17 CONCEDE */
        _cur11 = _saved[17];
_pc = 64; continue dispatch;
    case 48: /* uid12 PROCEED */
        _ok11 = true;
        break dispatch;
    case 50: /* uid12 CONCEDE */
        break dispatch;
    case 52: /* uid13 PROCEED */
        _ok11 = false;
        break dispatch;
    case 54: /* uid13 CONCEDE */
        break dispatch;
    default:
        /* unreachable — pattern dispatch hole uid=" + _pc + " */
        break dispatch;
    } /* end dispatch */
    if (_ok11) return goto_v_YES2;
    if (!_ok11) return goto_v_NO2;
}

goto_v_YES2 = function() {
/* line 7 */
    var _v18 = "should not reach";
    var _ok18 = (_v18 !== _FAIL);
    if (_ok18) {
        _vars["OUTPUT"] = _v18;
    }
/* line 8 */
    return goto_v_END;
}

goto_v_NO = function() {
/* line 9 */
    var _v19 = "wrong";
    var _ok19 = (_v19 !== _FAIL);
    if (_ok19) {
        _vars["OUTPUT"] = _v19;
    }
/* line 10 */
    return goto_v_END;
}

goto_v_NO2 = function() {
/* line 11 */
    var _v20 = "anchor prevented mid-string match";
    var _ok20 = (_v20 !== _FAIL);
    if (_ok20) {
        _vars["OUTPUT"] = _v20;
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
