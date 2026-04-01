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
    var _v1 = "ABCDE";
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
        /* stub pat kind 42 */
_pc = 12; continue dispatch;
    case 34: /* uid8 CONCEDE */
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
    return goto_v__C9;
}

var goto_v__C9;
goto_v__C9 = function() {
/* line 4 */
    var _v10 = _cat("PASS W07/001: cursor pos=", _vars["POS1"]);
    var _ok10 = (_v10 !== _FAIL);
    if (_ok10) {
        _vars["OUTPUT"] = _v10;
    }
    return goto_v_T002;
}

goto_v_E001 = function() {
/* line 5 */
    var _v11 = "FAIL W07/001: cursor capture should match";
    var _ok11 = (_v11 !== _FAIL);
    if (_ok11) {
        _vars["OUTPUT"] = _v11;
    }
    return goto_v_T002;
}

goto_v_T002 = function() {
/* line 6 */
    var _v12 = "ABCDE";
    var _ok12 = (_v12 !== _FAIL);
    if (_ok12) {
        _vars["SUBJECT"] = _v12;
    }
/* line 7 */
    var _subj13 = _str(_vars["SUBJECT"]);
    var _slen13 = _subj13.length;
    var _cur13  = 0;
    var _mstart13 = 0;
    var _ok13   = false;
    var _pc = 64;
    var _saved = new Array(1024).fill(0); /* cursor save slots */
    /* Byrd-box dispatch for stmt u13 */
    dispatch: for(;;) switch(_pc) {
    case 64: /* uid16 PROCEED */
        _saved[16] = _cur13;
_pc = 68; continue dispatch;
    case 66: /* uid16 CONCEDE */
        if (_saved[16] >= _slen13) { _pc = 60; continue dispatch;
 }
        _saved[16]++; _cur13 = _saved[16]; _mstart13 = _saved[16];
_pc = 68; continue dispatch;
    case 68: /* uid17 PROCEED */
_pc = 76; continue dispatch;
    case 70: /* uid17 CONCEDE */
_pc = 72; continue dispatch;
    case 72: /* uid18 PROCEED */
_pc = 66; continue dispatch;
    case 74: /* uid18 CONCEDE */
_pc = 60; continue dispatch;
    case 76: /* uid19 PROCEED */
        /* stub pat kind 42 */
_pc = 56; continue dispatch;
    case 78: /* uid19 CONCEDE */
_pc = 72; continue dispatch;
    case 56: /* uid14 PROCEED */
        _ok13 = true;
        break dispatch;
    case 58: /* uid14 CONCEDE */
        break dispatch;
    case 60: /* uid15 PROCEED */
        _ok13 = false;
        break dispatch;
    case 62: /* uid15 CONCEDE */
        break dispatch;
    default:
        /* unreachable — pattern dispatch hole uid=" + _pc + " */
        break dispatch;
    } /* end dispatch */
    if (!_ok13) return goto_v_E002;
    return goto_v__C20;
}

var goto_v__C20;
goto_v__C20 = function() {
/* line 8 */
    var _v21 = _cat("PASS W07/002: cursor after match=", _vars["POS2"]);
    var _ok21 = (_v21 !== _FAIL);
    if (_ok21) {
        _vars["OUTPUT"] = _v21;
    }
    return goto_v_END;
}

goto_v_E002 = function() {
/* line 9 */
    var _v22 = "FAIL W07/002: cursor after match should match";
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
if (!goto_v_START) goto_v_START = function() { return null; };

/* --- run --- */
{ var _pc = goto_v_START; while(_pc) _pc = _pc(); }
