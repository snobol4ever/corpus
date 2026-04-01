'use strict';
const _rt = require(process.env.SNO_RUNTIME || __dirname + '/sno_runtime.js');
const { _vars, _FAIL, _str, _num, _cat, _add, _sub, _mul, _div, _pow,
        _apply, _kw } = _rt;

var goto_v_E001;
var goto_v_T002;
var goto_v_E002;
var goto_v_END;
var goto_v_START;

/* --- block functions --- */
goto_v_START = function() {
/* line 2 */
    var _v1 = "HELLO WORLD";
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
        _saved[10] = _cur2;
_pc = 36; continue dispatch;
    case 34: /* uid8 CONCEDE */
_pc = 38; continue dispatch;
    case 48: /* uid12 PROCEED */
        if (_cur2 + 5 > _slen2) { _pc = 28; continue dispatch;
 }
        if (_subj2.slice(_cur2, _cur2+5) !== "HELLO") { _pc = 28; continue dispatch;
 }
        _saved[12] = _cur2; _cur2 += 5;
_pc = 44; continue dispatch;
    case 50: /* uid12 CONCEDE */
        _cur2 = _saved[12];
_pc = 28; continue dispatch;
    case 44: /* uid11 PROCEED */
        _vars["CAP1"] = _subj2.slice(_saved[10], _cur2);
_pc = 12; continue dispatch;
    case 46: /* uid11 CONCEDE */
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
    if (!_ok2) return goto_v_E001;
    return goto_v__C13;
}

var goto_v__C13;
goto_v__C13 = function() {
/* line 4 */
    var _v14 = _cat("PASS W07/001: cond cap=", _vars["CAP1"]);
    var _ok14 = (_v14 !== _FAIL);
    if (_ok14) {
        _vars["OUTPUT"] = _v14;
    }
    return goto_v_T002;
}

goto_v_E001 = function() {
/* line 5 */
    var _v15 = "FAIL W07/001: cond capture should match";
    var _ok15 = (_v15 !== _FAIL);
    if (_ok15) {
        _vars["OUTPUT"] = _v15;
    }
    return goto_v_T002;
}

goto_v_T002 = function() {
/* line 6 */
    var _v16 = "ABC";
    var _ok16 = (_v16 !== _FAIL);
    if (_ok16) {
        _vars["SUBJECT"] = _v16;
    }
/* line 7 */
    var _subj17 = _str(_vars["SUBJECT"]);
    var _slen17 = _subj17.length;
    var _cur17  = 0;
    var _mstart17 = 0;
    var _ok17   = false;
    var _pc = 80;
    var _saved = new Array(1024).fill(0); /* cursor save slots */
    /* Byrd-box dispatch for stmt u17 */
    dispatch: for(;;) switch(_pc) {
    case 80: /* uid20 PROCEED */
        _saved[20] = _cur17;
_pc = 84; continue dispatch;
    case 82: /* uid20 CONCEDE */
        if (_saved[20] >= _slen17) { _pc = 76; continue dispatch;
 }
        _saved[20]++; _cur17 = _saved[20]; _mstart17 = _saved[20];
_pc = 84; continue dispatch;
    case 84: /* uid21 PROCEED */
_pc = 92; continue dispatch;
    case 86: /* uid21 CONCEDE */
_pc = 88; continue dispatch;
    case 88: /* uid22 PROCEED */
_pc = 82; continue dispatch;
    case 90: /* uid22 CONCEDE */
_pc = 76; continue dispatch;
    case 92: /* uid23 PROCEED */
        _saved[25] = _cur17;
_pc = 96; continue dispatch;
    case 94: /* uid23 CONCEDE */
_pc = 98; continue dispatch;
    case 108: /* uid27 PROCEED */
        if (_cur17 + 3 > _slen17) { _pc = 88; continue dispatch;
 }
        if (_subj17.slice(_cur17, _cur17+3) !== "XYZ") { _pc = 88; continue dispatch;
 }
        _saved[27] = _cur17; _cur17 += 3;
_pc = 104; continue dispatch;
    case 110: /* uid27 CONCEDE */
        _cur17 = _saved[27];
_pc = 88; continue dispatch;
    case 104: /* uid26 PROCEED */
        _vars["CAP2"] = _subj17.slice(_saved[25], _cur17);
_pc = 72; continue dispatch;
    case 106: /* uid26 CONCEDE */
_pc = 88; continue dispatch;
    case 72: /* uid18 PROCEED */
        _ok17 = true;
        break dispatch;
    case 74: /* uid18 CONCEDE */
        break dispatch;
    case 76: /* uid19 PROCEED */
        _ok17 = false;
        break dispatch;
    case 78: /* uid19 CONCEDE */
        break dispatch;
    default:
        /* unreachable — pattern dispatch hole uid=" + _pc + " */
        break dispatch;
    } /* end dispatch */
    if (_ok17) return goto_v_E002;
    return goto_v__C28;
}

var goto_v__C28;
goto_v__C28 = function() {
/* line 8 */
    var _v29 = "PASS W07/002: cond cap correctly fails";
    var _ok29 = (_v29 !== _FAIL);
    if (_ok29) {
        _vars["OUTPUT"] = _v29;
    }
    return goto_v_END;
}

goto_v_E002 = function() {
/* line 9 */
    var _v30 = "FAIL W07/002: failed match should not succeed";
    var _ok30 = (_v30 !== _FAIL);
    if (_ok30) {
        _vars["OUTPUT"] = _v30;
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
