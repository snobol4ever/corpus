'use strict';
const _rt = require(process.env.SNO_RUNTIME || __dirname + '/sno_runtime.js');
const { _vars, _FAIL, _str, _num, _cat, _add, _sub, _mul, _div, _pow,
        _apply, _kw } = _rt;

var goto_v_E001;
var goto_v_END;
var goto_v_START;

/* --- block functions --- */
goto_v_START = function() {
/* line 4 */
    var _v1 = "foobar";
    var _ok1 = (_v1 !== _FAIL);
    if (_ok1) {
        _vars["SUBJECT"] = _v1;
    }
/* line 5 */
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
        if (_cur2 + 3 > _slen2) { _pc = 40; continue dispatch;
 }
        if (_subj2.slice(_cur2, _cur2+3) !== "baz") { _pc = 40; continue dispatch;
 }
        _saved[11] = _cur2; _cur2 += 3;
_pc = 12; continue dispatch;
    case 46: /* uid11 CONCEDE */
        _cur2 = _saved[11];
_pc = 40; continue dispatch;
    case 48: /* uid12 PROCEED */
        if (_cur2 + 3 > _slen2) { _pc = 28; continue dispatch;
 }
        if (_subj2.slice(_cur2, _cur2+3) !== "qux") { _pc = 28; continue dispatch;
 }
        _saved[12] = _cur2; _cur2 += 3;
_pc = 12; continue dispatch;
    case 50: /* uid12 CONCEDE */
        _cur2 = _saved[12];
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
    if (_ok2) return goto_v_E001;
    return goto_v__C13;
}

var goto_v__C13;
goto_v__C13 = function() {
/* line 6 */
    var _v14 = "PASS W03/003: alt both fail as expected";
    var _ok14 = (_v14 !== _FAIL);
    if (_ok14) {
        _vars["OUTPUT"] = _v14;
    }
    return goto_v_END;
}

goto_v_E001 = function() {
/* line 7 */
    var _v15 = "FAIL W03/003: alt should have failed but succeeded";
    var _ok15 = (_v15 !== _FAIL);
    if (_ok15) {
        _vars["OUTPUT"] = _v15;
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
