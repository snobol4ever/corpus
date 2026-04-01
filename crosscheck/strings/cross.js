'use strict';
const _rt = require(process.env.SNO_RUNTIME || __dirname + '/sno_runtime.js');
const { _vars, _FAIL, _str, _num, _cat, _add, _sub, _mul, _div, _pow,
        _apply, _kw } = _rt;

var goto_v_AGAIN;
var goto_v_END;
var goto_v_NEXTH;
var goto_v_NEXTV;
var goto_v_PRINT;
var goto_v_START;

/* --- block functions --- */
goto_v_START = function() {
/* line 6 */
    var _v1 = 1;
    var _ok1 = (_v1 !== _FAIL);
    if (_ok1) {
    }
    return goto_v_AGAIN;
}

goto_v_AGAIN = function() {
/* line 7 */
    var _v2 = _vars["INPUT"];
    var _ok2 = (_v2 !== _FAIL);
    if (_ok2) {
        _vars["H"] = _v2;
    }
    if (!_ok2) return goto_v_END;
    return goto_v__C3;
}

var goto_v__C3;
goto_v__C3 = function() {
/* line 8 */
    var _v4 = _vars["INPUT"];
    var _ok4 = (_v4 !== _FAIL);
    if (_ok4) {
        _vars["V"] = _v4;
    }
    if (!_ok4) return goto_v_END;
    return goto_v__C5;
}

var goto_v__C5;
goto_v__C5 = function() {
/* line 9 */
    var _v6 = _vars["H"];
    var _ok6 = (_v6 !== _FAIL);
    if (_ok6) {
        _vars["HC"] = _v6;
    }
    return goto_v_NEXTH;
}

goto_v_NEXTH = function() {
/* line 10 */
    var _subj7 = _str(_vars["HC"]);
    var _slen7 = _subj7.length;
    var _cur7  = 0;
    var _mstart7 = 0;
    var _ok7   = false;
    var _pc = 40;
    var _saved = new Array(1024).fill(0); /* cursor save slots */
    /* Byrd-box dispatch for stmt u7 */
    dispatch: for(;;) switch(_pc) {
    case 40: /* uid10 PROCEED */
        _saved[10] = _cur7;
_pc = 44; continue dispatch;
    case 42: /* uid10 CONCEDE */
        if (_saved[10] >= _slen7) { _pc = 36; continue dispatch;
 }
        _saved[10]++; _cur7 = _saved[10]; _mstart7 = _saved[10];
_pc = 44; continue dispatch;
    case 44: /* uid11 PROCEED */
_pc = 52; continue dispatch;
    case 46: /* uid11 CONCEDE */
_pc = 48; continue dispatch;
    case 48: /* uid12 PROCEED */
_pc = 42; continue dispatch;
    case 50: /* uid12 CONCEDE */
_pc = 36; continue dispatch;
    case 52: /* uid13 PROCEED */
_pc = 56; continue dispatch;
    case 54: /* uid13 CONCEDE */
_pc = 62; continue dispatch;
    case 64: /* uid16 PROCEED */
_pc = 58; continue dispatch;
    case 66: /* uid16 CONCEDE */
_pc = 48; continue dispatch;
    case 68: /* uid17 PROCEED */
        /* stub pat kind 42 */
_pc = 60; continue dispatch;
    case 70: /* uid17 CONCEDE */
_pc = 48; continue dispatch;
    case 72: /* uid18 PROCEED */
        _saved[20] = _cur7;
_pc = 76; continue dispatch;
    case 74: /* uid18 CONCEDE */
_pc = 78; continue dispatch;
    case 88: /* uid22 PROCEED */
        /* stub FNC ANY */
_pc = 84; continue dispatch;
    case 90: /* uid22 CONCEDE */
_pc = 64; continue dispatch;
    case 84: /* uid21 PROCEED */
        _vars["CROSS"] = _subj7.slice(_saved[20], _cur7);
_pc = 32; continue dispatch;
    case 86: /* uid21 CONCEDE */
_pc = 64; continue dispatch;
    case 32: /* uid8 PROCEED */
        _ok7 = true;
        break dispatch;
    case 34: /* uid8 CONCEDE */
        break dispatch;
    case 36: /* uid9 PROCEED */
        _ok7 = false;
        break dispatch;
    case 38: /* uid9 CONCEDE */
        break dispatch;
    default:
        /* unreachable — pattern dispatch hole uid=" + _pc + " */
        break dispatch;
    } /* end dispatch */
    if (_ok7) {
        var _repl7 = _str("*");
        var _head7 = _subj7.slice(0, _mstart7);
        var _tail7 = _subj7.slice(_cur7);
        _vars["HC"] = _head7 + _repl7 + _tail7;
    }
    if (!_ok7) return goto_v_AGAIN;
    return goto_v__C23;
}

var goto_v__C23;
goto_v__C23 = function() {
/* line 11 */
    var _v24 = _vars["V"];
    var _ok24 = (_v24 !== _FAIL);
    if (_ok24) {
        _vars["VC"] = _v24;
    }
    return goto_v_NEXTV;
}

goto_v_NEXTV = function() {
/* line 12 */
    var _subj25 = _str(_vars["VC"]);
    var _slen25 = _subj25.length;
    var _cur25  = 0;
    var _mstart25 = 0;
    var _ok25   = false;
    var _pc = 112;
    var _saved = new Array(1024).fill(0); /* cursor save slots */
    /* Byrd-box dispatch for stmt u25 */
    dispatch: for(;;) switch(_pc) {
    case 112: /* uid28 PROCEED */
        _saved[28] = _cur25;
_pc = 116; continue dispatch;
    case 114: /* uid28 CONCEDE */
        if (_saved[28] >= _slen25) { _pc = 108; continue dispatch;
 }
        _saved[28]++; _cur25 = _saved[28]; _mstart25 = _saved[28];
_pc = 116; continue dispatch;
    case 116: /* uid29 PROCEED */
_pc = 124; continue dispatch;
    case 118: /* uid29 CONCEDE */
_pc = 120; continue dispatch;
    case 120: /* uid30 PROCEED */
_pc = 114; continue dispatch;
    case 122: /* uid30 CONCEDE */
_pc = 108; continue dispatch;
    case 124: /* uid31 PROCEED */
_pc = 128; continue dispatch;
    case 126: /* uid31 CONCEDE */
_pc = 134; continue dispatch;
    case 136: /* uid34 PROCEED */
_pc = 130; continue dispatch;
    case 138: /* uid34 CONCEDE */
_pc = 120; continue dispatch;
    case 140: /* uid35 PROCEED */
        /* stub pat kind 42 */
_pc = 132; continue dispatch;
    case 142: /* uid35 CONCEDE */
_pc = 120; continue dispatch;
    case 144: /* uid36 PROCEED */
        { var _pat_val36 = _vars["CROSS"];
          var _pat_s36 = (_pat_val36 === null || _pat_val36 === undefined) ? '' : String(_pat_val36);
          var _pat_n36 = _pat_s36.length;
          if (_cur25 + _pat_n36 > _slen25) { _pc = 136; continue dispatch;
 }
          if (_subj25.slice(_cur25, _cur25+_pat_n36) !== _pat_s36) { _pc = 136; continue dispatch;
 }
          _saved[36] = _cur25; _cur25 += _pat_n36; }
_pc = 104; continue dispatch;
    case 146: /* uid36 CONCEDE */
        _cur25 = _saved[36];
_pc = 136; continue dispatch;
    case 104: /* uid26 PROCEED */
        _ok25 = true;
        break dispatch;
    case 106: /* uid26 CONCEDE */
        break dispatch;
    case 108: /* uid27 PROCEED */
        _ok25 = false;
        break dispatch;
    case 110: /* uid27 CONCEDE */
        break dispatch;
    default:
        /* unreachable — pattern dispatch hole uid=" + _pc + " */
        break dispatch;
    } /* end dispatch */
    if (_ok25) {
        var _repl25 = _str("#");
        var _head25 = _subj25.slice(0, _mstart25);
        var _tail25 = _subj25.slice(_cur25);
        _vars["VC"] = _head25 + _repl25 + _tail25;
    }
    if (!_ok25) return goto_v_NEXTH;
    return goto_v__C37;
}

var goto_v__C37;
goto_v__C37 = function() {
/* line 13 */
    _vars["OUTPUT"] = null;
/* line 14 */
    var _v38 = _vars["V"];
    var _ok38 = (_v38 !== _FAIL);
    if (_ok38) {
        _vars["PRINTV"] = _v38;
    }
/* line 15 */
    var _subj39 = _str(_vars["PRINTV"]);
    var _slen39 = _subj39.length;
    var _cur39  = 0;
    var _mstart39 = 0;
    var _ok39   = false;
    var _pc = 168;
    var _saved = new Array(1024).fill(0); /* cursor save slots */
    /* Byrd-box dispatch for stmt u39 */
    dispatch: for(;;) switch(_pc) {
    case 168: /* uid42 PROCEED */
        _saved[42] = _cur39;
_pc = 172; continue dispatch;
    case 170: /* uid42 CONCEDE */
        if (_saved[42] >= _slen39) { _pc = 164; continue dispatch;
 }
        _saved[42]++; _cur39 = _saved[42]; _mstart39 = _saved[42];
_pc = 172; continue dispatch;
    case 172: /* uid43 PROCEED */
_pc = 180; continue dispatch;
    case 174: /* uid43 CONCEDE */
_pc = 176; continue dispatch;
    case 176: /* uid44 PROCEED */
_pc = 170; continue dispatch;
    case 178: /* uid44 CONCEDE */
_pc = 164; continue dispatch;
    case 180: /* uid45 PROCEED */
_pc = 184; continue dispatch;
    case 182: /* uid45 CONCEDE */
_pc = 190; continue dispatch;
    case 192: /* uid48 PROCEED */
_pc = 186; continue dispatch;
    case 194: /* uid48 CONCEDE */
_pc = 176; continue dispatch;
    case 196: /* uid49 PROCEED */
        /* stub FNC POS */
_pc = 188; continue dispatch;
    case 198: /* uid49 CONCEDE */
_pc = 176; continue dispatch;
    case 200: /* uid50 PROCEED */
        if (_cur39 + 1 > _slen39) { _pc = 192; continue dispatch;
 }
        _saved[50] = _cur39; _cur39 += 1;
_pc = 160; continue dispatch;
    case 202: /* uid50 CONCEDE */
        _cur39 = _saved[50];
_pc = 192; continue dispatch;
    case 160: /* uid40 PROCEED */
        _ok39 = true;
        break dispatch;
    case 162: /* uid40 CONCEDE */
        break dispatch;
    case 164: /* uid41 PROCEED */
        _ok39 = false;
        break dispatch;
    case 166: /* uid41 CONCEDE */
        break dispatch;
    default:
        /* unreachable — pattern dispatch hole uid=" + _pc + " */
        break dispatch;
    } /* end dispatch */
    if (_ok39) {
        var _repl39 = _str("#");
        var _head39 = _subj39.slice(0, _mstart39);
        var _tail39 = _subj39.slice(_cur39);
        _vars["PRINTV"] = _head39 + _repl39 + _tail39;
    }
    return goto_v_PRINT;
}

goto_v_PRINT = function() {
/* line 16 */
    var _subj51 = _str(_vars["PRINTV"]);
    var _slen51 = _subj51.length;
    var _cur51  = 0;
    var _mstart51 = 0;
    var _ok51   = false;
    var _pc = 216;
    var _saved = new Array(1024).fill(0); /* cursor save slots */
    /* Byrd-box dispatch for stmt u51 */
    dispatch: for(;;) switch(_pc) {
    case 216: /* uid54 PROCEED */
        _saved[54] = _cur51;
_pc = 220; continue dispatch;
    case 218: /* uid54 CONCEDE */
        if (_saved[54] >= _slen51) { _pc = 212; continue dispatch;
 }
        _saved[54]++; _cur51 = _saved[54]; _mstart51 = _saved[54];
_pc = 220; continue dispatch;
    case 220: /* uid55 PROCEED */
_pc = 228; continue dispatch;
    case 222: /* uid55 CONCEDE */
_pc = 224; continue dispatch;
    case 224: /* uid56 PROCEED */
_pc = 218; continue dispatch;
    case 226: /* uid56 CONCEDE */
_pc = 212; continue dispatch;
    case 228: /* uid57 PROCEED */
        _saved[59] = _cur51;
_pc = 232; continue dispatch;
    case 230: /* uid57 CONCEDE */
_pc = 234; continue dispatch;
    case 244: /* uid61 PROCEED */
        if (_cur51 + 1 > _slen51) { _pc = 224; continue dispatch;
 }
        _saved[61] = _cur51; _cur51 += 1;
_pc = 240; continue dispatch;
    case 246: /* uid61 CONCEDE */
        _cur51 = _saved[61];
_pc = 224; continue dispatch;
    case 240: /* uid60 PROCEED */
        _vars["C"] = _subj51.slice(_saved[59], _cur51);
_pc = 208; continue dispatch;
    case 242: /* uid60 CONCEDE */
_pc = 224; continue dispatch;
    case 208: /* uid52 PROCEED */
        _ok51 = true;
        break dispatch;
    case 210: /* uid52 CONCEDE */
        break dispatch;
    case 212: /* uid53 PROCEED */
        _ok51 = false;
        break dispatch;
    case 214: /* uid53 CONCEDE */
        break dispatch;
    default:
        /* unreachable — pattern dispatch hole uid=" + _pc + " */
        break dispatch;
    } /* end dispatch */
    if (!_ok51) return goto_v_NEXTV;
    return goto_v__C62;
}

var goto_v__C62;
goto_v__C62 = function() {
/* line 17 */
    var _v63 = _cat(_apply("DIFFER", [_vars["C"], "#"]), _apply("DUPL", [" ", _vars["NH"]]), _vars["C"]);
    var _ok63 = (_v63 !== _FAIL);
    if (_ok63) {
        _vars["OUTPUT"] = _v63;
    }
    if (_ok63) return goto_v_PRINT;
    return goto_v__C64;
}

var goto_v__C64;
goto_v__C64 = function() {
/* line 18 */
    var _v65 = _vars["H"];
    var _ok65 = (_v65 !== _FAIL);
    if (_ok65) {
        _vars["OUTPUT"] = _v65;
    }
    return goto_v_PRINT;
}

goto_v_END = function() {
    return null;
}

/* --- undefined label stubs --- */
if (!goto_v_START) goto_v_START = function() { return null; };

/* --- run --- */
{ var _pc = goto_v_START; while(_pc) _pc = _pc(); }
