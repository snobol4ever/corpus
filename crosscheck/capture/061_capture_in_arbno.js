'use strict';
const _rt = require(process.env.SNO_RUNTIME || __dirname + '/sno_runtime.js');
const { _vars, _FAIL, _str, _num, _cat, _add, _sub, _mul, _div, _pow,
        _apply, _kw } = _rt;

var goto_v_LOOP;
var goto_v_DONE;
var goto_v_END;
var goto_v_START;

/* --- block functions --- */
goto_v_START = function() {
/* line 2 */
    var _v1 = "aaa";
    var _ok1 = (_v1 !== _FAIL);
    if (_ok1) {
        _vars["X"] = _v1;
    }
/* line 3 */
    var _v2 = 0;
    var _ok2 = (_v2 !== _FAIL);
    if (_ok2) {
        _vars["N"] = _v2;
    }
    return goto_v_LOOP;
}

goto_v_LOOP = function() {
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
_pc = 40; continue dispatch;
    case 38: /* uid9 CONCEDE */
_pc = 46; continue dispatch;
    case 48: /* uid12 PROCEED */
_pc = 42; continue dispatch;
    case 50: /* uid12 CONCEDE */
_pc = 32; continue dispatch;
    case 52: /* uid13 PROCEED */
        /* stub FNC POS */
_pc = 44; continue dispatch;
    case 54: /* uid13 CONCEDE */
_pc = 32; continue dispatch;
    case 56: /* uid14 PROCEED */
        _saved[16] = _cur3;
_pc = 60; continue dispatch;
    case 58: /* uid14 CONCEDE */
_pc = 62; continue dispatch;
    case 72: /* uid18 PROCEED */
        if (_cur3 + 1 > _slen3) { _pc = 48; continue dispatch;
 }
        if (_subj3[_cur3] !== "a") { _pc = 48; continue dispatch;
 }
        _saved[18] = _cur3; _cur3 += 1;
_pc = 68; continue dispatch;
    case 74: /* uid18 CONCEDE */
        _cur3 = _saved[18];
_pc = 48; continue dispatch;
    case 68: /* uid17 PROCEED */
        _vars["V"] = _subj3.slice(_saved[16], _cur3);
_pc = 16; continue dispatch;
    case 70: /* uid17 CONCEDE */
_pc = 48; continue dispatch;
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
    if (!_ok3) return goto_v_DONE;
    return goto_v__C19;
}

var goto_v__C19;
goto_v__C19 = function() {
/* line 5 */
    var _v20 = _vars["V"];
    var _ok20 = (_v20 !== _FAIL);
    if (_ok20) {
        _vars["OUTPUT"] = _v20;
    }
/* line 6 */
    var _v21 = _add(_vars["N"], 1);
    var _ok21 = (_v21 !== _FAIL);
    if (_ok21) {
        _vars["N"] = _v21;
    }
/* line 7 */
    return goto_v_LOOP;
}

goto_v_DONE = function() {
/* line 8 */
    return goto_v_END;
}

goto_v_END = function() {
    return null;
}

/* --- undefined label stubs --- */
if (!goto_v_START) goto_v_START = function() { return null; };

/* --- run --- */
{ var _pc = goto_v_START; while(_pc) _pc = _pc(); }
