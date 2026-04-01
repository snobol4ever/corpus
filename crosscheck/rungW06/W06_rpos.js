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
    var _v1 = "HELLO";
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
        if (_cur2 + 5 > _slen2) { _pc = 28; continue dispatch;
 }
        if (_subj2.slice(_cur2, _cur2+5) !== "HELLO") { _pc = 28; continue dispatch;
 }
        _saved[12] = _cur2; _cur2 += 5;
_pc = 40; continue dispatch;
    case 50: /* uid12 CONCEDE */
        _cur2 = _saved[12];
_pc = 28; continue dispatch;
    case 52: /* uid13 PROCEED */
        if (_cur2 !== _slen2 - 0) { _pc = 44; continue dispatch;
 }
_pc = 12; continue dispatch;
    case 54: /* uid13 CONCEDE */
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
    var _v15 = "PASS W06/001: RPOS(0) at end matched";
    var _ok15 = (_v15 !== _FAIL);
    if (_ok15) {
        _vars["OUTPUT"] = _v15;
    }
    return goto_v_T002;
}

goto_v_E001 = function() {
/* line 5 */
    var _v16 = "FAIL W06/001: RPOS(0) at end should match";
    var _ok16 = (_v16 !== _FAIL);
    if (_ok16) {
        _vars["OUTPUT"] = _v16;
    }
    return goto_v_T002;
}

goto_v_T002 = function() {
/* line 6 */
    var _v17 = "HELLO";
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
    case 96: /* uid24 PROCEED */
_pc = 100; continue dispatch;
    case 98: /* uid24 CONCEDE */
_pc = 106; continue dispatch;
    case 108: /* uid27 PROCEED */
_pc = 102; continue dispatch;
    case 110: /* uid27 CONCEDE */
_pc = 92; continue dispatch;
    case 112: /* uid28 PROCEED */
        if (_cur18 + 3 > _slen18) { _pc = 92; continue dispatch;
 }
        if (_subj18.slice(_cur18, _cur18+3) !== "HEL") { _pc = 92; continue dispatch;
 }
        _saved[28] = _cur18; _cur18 += 3;
_pc = 104; continue dispatch;
    case 114: /* uid28 CONCEDE */
        _cur18 = _saved[28];
_pc = 92; continue dispatch;
    case 116: /* uid29 PROCEED */
        if (_cur18 !== _slen18 - 2) { _pc = 108; continue dispatch;
 }
_pc = 76; continue dispatch;
    case 118: /* uid29 CONCEDE */
_pc = 108; continue dispatch;
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
    return goto_v__C30;
}

var goto_v__C30;
goto_v__C30 = function() {
/* line 8 */
    var _v31 = "PASS W06/002: RPOS(2) after HEL matched";
    var _ok31 = (_v31 !== _FAIL);
    if (_ok31) {
        _vars["OUTPUT"] = _v31;
    }
    return goto_v_T003;
}

goto_v_E002 = function() {
/* line 9 */
    var _v32 = "FAIL W06/002: RPOS(2) after HEL should match";
    var _ok32 = (_v32 !== _FAIL);
    if (_ok32) {
        _vars["OUTPUT"] = _v32;
    }
    return goto_v_T003;
}

goto_v_T003 = function() {
/* line 10 */
    var _v33 = "HELLO";
    var _ok33 = (_v33 !== _FAIL);
    if (_ok33) {
        _vars["SUBJECT"] = _v33;
    }
/* line 11 */
    var _subj34 = _str(_vars["SUBJECT"]);
    var _slen34 = _subj34.length;
    var _cur34  = 0;
    var _mstart34 = 0;
    var _ok34   = false;
    var _pc = 148;
    var _saved = new Array(1024).fill(0); /* cursor save slots */
    /* Byrd-box dispatch for stmt u34 */
    dispatch: for(;;) switch(_pc) {
    case 148: /* uid37 PROCEED */
        _saved[37] = _cur34;
_pc = 152; continue dispatch;
    case 150: /* uid37 CONCEDE */
        if (_saved[37] >= _slen34) { _pc = 144; continue dispatch;
 }
        _saved[37]++; _cur34 = _saved[37]; _mstart34 = _saved[37];
_pc = 152; continue dispatch;
    case 152: /* uid38 PROCEED */
_pc = 160; continue dispatch;
    case 154: /* uid38 CONCEDE */
_pc = 156; continue dispatch;
    case 156: /* uid39 PROCEED */
_pc = 150; continue dispatch;
    case 158: /* uid39 CONCEDE */
_pc = 144; continue dispatch;
    case 160: /* uid40 PROCEED */
_pc = 164; continue dispatch;
    case 162: /* uid40 CONCEDE */
_pc = 170; continue dispatch;
    case 172: /* uid43 PROCEED */
_pc = 166; continue dispatch;
    case 174: /* uid43 CONCEDE */
_pc = 156; continue dispatch;
    case 176: /* uid44 PROCEED */
        if (_cur34 !== _slen34 - 1) { _pc = 156; continue dispatch;
 }
_pc = 168; continue dispatch;
    case 178: /* uid44 CONCEDE */
_pc = 156; continue dispatch;
    case 180: /* uid45 PROCEED */
        if (_cur34 + 2 > _slen34) { _pc = 172; continue dispatch;
 }
        if (_subj34.slice(_cur34, _cur34+2) !== "LO") { _pc = 172; continue dispatch;
 }
        _saved[45] = _cur34; _cur34 += 2;
_pc = 140; continue dispatch;
    case 182: /* uid45 CONCEDE */
        _cur34 = _saved[45];
_pc = 172; continue dispatch;
    case 140: /* uid35 PROCEED */
        _ok34 = true;
        break dispatch;
    case 142: /* uid35 CONCEDE */
        break dispatch;
    case 144: /* uid36 PROCEED */
        _ok34 = false;
        break dispatch;
    case 146: /* uid36 CONCEDE */
        break dispatch;
    default:
        /* unreachable — pattern dispatch hole uid=" + _pc + " */
        break dispatch;
    } /* end dispatch */
    if (_ok34) return goto_v_E003;
    return goto_v__C46;
}

var goto_v__C46;
goto_v__C46 = function() {
/* line 12 */
    var _v47 = "PASS W06/003: RPOS(1) LO correctly fails";
    var _ok47 = (_v47 !== _FAIL);
    if (_ok47) {
        _vars["OUTPUT"] = _v47;
    }
    return goto_v_END;
}

goto_v_E003 = function() {
/* line 13 */
    var _v48 = "FAIL W06/003: RPOS(1) LO should fail";
    var _ok48 = (_v48 !== _FAIL);
    if (_ok48) {
        _vars["OUTPUT"] = _v48;
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
