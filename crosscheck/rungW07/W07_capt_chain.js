'use strict';
const _rt = require(process.env.SNO_RUNTIME || __dirname + '/sno_runtime.js');
const { _vars, _FAIL, _str, _num, _cat, _add, _sub, _mul, _div, _pow,
        _apply, _kw } = _rt;

var goto_v_E001;
var goto_v_END;
var goto_v_START;

/* --- block functions --- */
goto_v_START = function() {
/* line 2 */
    var _v1 = "ABCDEF";
    var _ok1 = (_v1 !== _FAIL);
    if (_ok1) {
        _vars["SUBJECT"] = _v1;
    }
/* line 3 */
    var _subj2 = _str(_vars["SUBJECT"]);
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
    case 32: /* uid8 PROCEED */
_pc = 36; continue dispatch;
    case 34: /* uid8 CONCEDE */
_pc = 42; continue dispatch;
    case 44: /* uid11 PROCEED */
_pc = 38; continue dispatch;
    case 46: /* uid11 CONCEDE */
_pc = 28; continue dispatch;
    case 48: /* uid12 PROCEED */
        _saved[14] = _cur2;
_pc = 52; continue dispatch;
    case 50: /* uid12 CONCEDE */
_pc = 54; continue dispatch;
    case 64: /* uid16 PROCEED */
        if (_cur2 + 3 > _slen2) { _pc = 28; continue dispatch;
 }
        if (_subj2.slice(_cur2, _cur2+3) !== "ABC") { _pc = 28; continue dispatch;
 }
        _saved[16] = _cur2; _cur2 += 3;
_pc = 60; continue dispatch;
    case 66: /* uid16 CONCEDE */
        _cur2 = _saved[16];
_pc = 28; continue dispatch;
    case 60: /* uid15 PROCEED */
        _vars["C1"] = _subj2.slice(_saved[14], _cur2);
_pc = 40; continue dispatch;
    case 62: /* uid15 CONCEDE */
_pc = 28; continue dispatch;
    case 68: /* uid17 PROCEED */
        _saved[19] = _cur2;
_pc = 72; continue dispatch;
    case 70: /* uid17 CONCEDE */
_pc = 74; continue dispatch;
    case 84: /* uid21 PROCEED */
        if (_cur2 + 3 > _slen2) { _pc = 44; continue dispatch;
 }
        if (_subj2.slice(_cur2, _cur2+3) !== "DEF") { _pc = 44; continue dispatch;
 }
        _saved[21] = _cur2; _cur2 += 3;
_pc = 80; continue dispatch;
    case 86: /* uid21 CONCEDE */
        _cur2 = _saved[21];
_pc = 44; continue dispatch;
    case 80: /* uid20 PROCEED */
        _vars["C2"] = _subj2.slice(_saved[19], _cur2);
_pc = 12; continue dispatch;
    case 82: /* uid20 CONCEDE */
_pc = 44; continue dispatch;
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
    if (!_ok2) return goto_v_E001;
    return goto_v__C22;
}

var goto_v__C22;
goto_v__C22 = function() {
/* line 4 */
    var _v23 = _cat("PASS W07/001: c1=", _vars["C1"], " c2=", _vars["C2"]);
    var _ok23 = (_v23 !== _FAIL);
    if (_ok23) {
        _vars["OUTPUT"] = _v23;
    }
    return goto_v_END;
}

goto_v_E001 = function() {
/* line 5 */
    var _v24 = "FAIL W07/001: chained captures should match";
    var _ok24 = (_v24 !== _FAIL);
    if (_ok24) {
        _vars["OUTPUT"] = _v24;
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
