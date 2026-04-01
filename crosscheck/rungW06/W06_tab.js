'use strict';
const _rt = require(process.env.SNO_RUNTIME || __dirname + '/sno_runtime.js');
const { _vars, _FAIL, _str, _num, _cat, _add, _sub, _mul, _div, _pow,
        _apply, _kw } = _rt;

var goto_v_E001;
var goto_v_T002;
var goto_v_E002;
var goto_v_T003;
var goto_v_E003;
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
_pc = 36; continue dispatch;
    case 34: /* uid8 CONCEDE */
_pc = 42; continue dispatch;
    case 44: /* uid11 PROCEED */
_pc = 38; continue dispatch;
    case 46: /* uid11 CONCEDE */
_pc = 28; continue dispatch;
    case 48: /* uid12 PROCEED */
        if (_cur2 > 3) { _pc = 28; continue dispatch;
 }
        _saved[12] = _cur2; _cur2 = 3;
_pc = 40; continue dispatch;
    case 50: /* uid12 CONCEDE */
        _cur2 = _saved[12];
_pc = 28; continue dispatch;
    case 52: /* uid13 PROCEED */
        if (_cur2 + 2 > _slen2) { _pc = 44; continue dispatch;
 }
        if (_subj2.slice(_cur2, _cur2+2) !== "DE") { _pc = 44; continue dispatch;
 }
        _saved[13] = _cur2; _cur2 += 2;
_pc = 12; continue dispatch;
    case 54: /* uid13 CONCEDE */
        _cur2 = _saved[13];
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
    return goto_v__C14;
}

var goto_v__C14;
goto_v__C14 = function() {
/* line 4 */
    var _v15 = "PASS W06/001: TAB(3) then DE matched";
    var _ok15 = (_v15 !== _FAIL);
    if (_ok15) {
        _vars["OUTPUT"] = _v15;
    }
    return goto_v_T002;
}

goto_v_E001 = function() {
/* line 5 */
    var _v16 = "FAIL W06/001: TAB(3) then DE should match";
    var _ok16 = (_v16 !== _FAIL);
    if (_ok16) {
        _vars["OUTPUT"] = _v16;
    }
    return goto_v_T002;
}

goto_v_T002 = function() {
/* line 6 */
    var _v17 = "ABCDE";
    var _ok17 = (_v17 !== _FAIL);
    if (_ok17) {
        _vars["SUBJECT"] = _v17;
    }
/* line 7 */
    var _subj18 = _str(_vars["SUBJECT"]);
    var _slen18 = _subj18.length;
    var _cur18  = 0;
    var _mstart18 = 0;
    var _ok18   = false;
    var _pc = 84;
    var _saved = new Array(1024).fill(0); /* cursor save slots */
    /* Byrd-box dispatch for stmt u18 */
    dispatch: for(;;) switch(_pc) {
    case 84: /* uid21 PROCEED */
        _saved[21] = _cur18;
_pc = 88; continue dispatch;
    case 86: /* uid21 CONCEDE */
        if (_saved[21] >= _slen18) { _pc = 80; continue dispatch;
 }
        _saved[21]++; _cur18 = _saved[21]; _mstart18 = _saved[21];
_pc = 88; continue dispatch;
    case 88: /* uid22 PROCEED */
_pc = 96; continue dispatch;
    case 90: /* uid22 CONCEDE */
_pc = 92; continue dispatch;
    case 92: /* uid23 PROCEED */
_pc = 86; continue dispatch;
    case 94: /* uid23 CONCEDE */
_pc = 80; continue dispatch;
    case 100: /* uid25 PROCEED */
        if (_cur18 + 2 > _slen18) { _pc = 92; continue dispatch;
 }
        if (_subj18.slice(_cur18, _cur18+2) !== "AB") { _pc = 92; continue dispatch;
 }
        _saved[25] = _cur18; _cur18 += 2;
_pc = 76; continue dispatch;
    case 102: /* uid25 CONCEDE */
        _cur18 = _saved[25];
_pc = 92; continue dispatch;
    case 76: /* uid19 PROCEED */
        _ok18 = true;
        break dispatch;
    case 78: /* uid19 CONCEDE */
        break dispatch;
    case 80: /* uid20 PROCEED */
        _ok18 = false;
        break dispatch;
    case 82: /* uid20 CONCEDE */
        break dispatch;
    default:
        /* unreachable — pattern dispatch hole uid=" + _pc + " */
        break dispatch;
    } /* end dispatch */
    if (!_ok18) return goto_v_E002;
    return goto_v__C26;
}

var goto_v__C26;
goto_v__C26 = function() {
/* line 8 */
    var _v27 = "PASS W06/002: AB TAB(2) CDE matched";
    var _ok27 = (_v27 !== _FAIL);
    if (_ok27) {
        _vars["OUTPUT"] = _v27;
    }
    return goto_v_T003;
}

goto_v_E002 = function() {
/* line 9 */
    var _v28 = "FAIL W06/002: AB TAB(2) CDE should match";
    var _ok28 = (_v28 !== _FAIL);
    if (_ok28) {
        _vars["OUTPUT"] = _v28;
    }
    return goto_v_T003;
}

goto_v_T003 = function() {
/* line 10 */
    var _v29 = "ABCDE";
    var _ok29 = (_v29 !== _FAIL);
    if (_ok29) {
        _vars["SUBJECT"] = _v29;
    }
/* line 11 */
    var _subj30 = _str(_vars["SUBJECT"]);
    var _slen30 = _subj30.length;
    var _cur30  = 0;
    var _mstart30 = 0;
    var _ok30   = false;
    var _pc = 132;
    var _saved = new Array(1024).fill(0); /* cursor save slots */
    /* Byrd-box dispatch for stmt u30 */
    dispatch: for(;;) switch(_pc) {
    case 132: /* uid33 PROCEED */
        _saved[33] = _cur30;
_pc = 136; continue dispatch;
    case 134: /* uid33 CONCEDE */
        if (_saved[33] >= _slen30) { _pc = 128; continue dispatch;
 }
        _saved[33]++; _cur30 = _saved[33]; _mstart30 = _saved[33];
_pc = 136; continue dispatch;
    case 136: /* uid34 PROCEED */
_pc = 144; continue dispatch;
    case 138: /* uid34 CONCEDE */
_pc = 140; continue dispatch;
    case 140: /* uid35 PROCEED */
_pc = 134; continue dispatch;
    case 142: /* uid35 CONCEDE */
_pc = 128; continue dispatch;
    case 144: /* uid36 PROCEED */
_pc = 148; continue dispatch;
    case 146: /* uid36 CONCEDE */
_pc = 154; continue dispatch;
    case 156: /* uid39 PROCEED */
_pc = 150; continue dispatch;
    case 158: /* uid39 CONCEDE */
_pc = 140; continue dispatch;
    case 160: /* uid40 PROCEED */
        if (_cur30 + 3 > _slen30) { _pc = 140; continue dispatch;
 }
        if (_subj30.slice(_cur30, _cur30+3) !== "ABC") { _pc = 140; continue dispatch;
 }
        _saved[40] = _cur30; _cur30 += 3;
_pc = 152; continue dispatch;
    case 162: /* uid40 CONCEDE */
        _cur30 = _saved[40];
_pc = 140; continue dispatch;
    case 164: /* uid41 PROCEED */
        if (_cur30 > 1) { _pc = 156; continue dispatch;
 }
        _saved[41] = _cur30; _cur30 = 1;
_pc = 124; continue dispatch;
    case 166: /* uid41 CONCEDE */
        _cur30 = _saved[41];
_pc = 156; continue dispatch;
    case 124: /* uid31 PROCEED */
        _ok30 = true;
        break dispatch;
    case 126: /* uid31 CONCEDE */
        break dispatch;
    case 128: /* uid32 PROCEED */
        _ok30 = false;
        break dispatch;
    case 130: /* uid32 CONCEDE */
        break dispatch;
    default:
        /* unreachable — pattern dispatch hole uid=" + _pc + " */
        break dispatch;
    } /* end dispatch */
    if (_ok30) return goto_v_E003;
    return goto_v__C42;
}

var goto_v__C42;
goto_v__C42 = function() {
/* line 12 */
    var _v43 = "PASS W06/003: TAB(1) behind cursor correctly fails";
    var _ok43 = (_v43 !== _FAIL);
    if (_ok43) {
        _vars["OUTPUT"] = _v43;
    }
    return goto_v_END;
}

goto_v_E003 = function() {
/* line 13 */
    var _v44 = "FAIL W06/003: TAB(1) behind cursor should fail";
    var _ok44 = (_v44 !== _FAIL);
    if (_ok44) {
        _vars["OUTPUT"] = _v44;
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
