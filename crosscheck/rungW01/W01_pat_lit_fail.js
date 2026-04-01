'use strict';
const _rt = require(process.env.SNO_RUNTIME || __dirname + '/sno_runtime.js');
const { _vars, _FAIL, _str, _num, _cat, _add, _sub, _mul, _div, _pow,
        _apply, _kw } = _rt;

var goto_v_E001;
var goto_v_END;
var goto_v_START;
var goto_v_END;

/* --- block functions --- */
goto_v_START = function() {
/* line 4 */
    var _v1 = "hello world";
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
        if (_cur2 + 3 > _slen2) { _pc = 28; continue dispatch;
 }
        if (_subj2.slice(_cur2, _cur2+3) !== "xyz") { _pc = 28; continue dispatch;
 }
        _saved[8] = _cur2; _cur2 += 3;
_pc = 12; continue dispatch;
    case 34: /* uid8 CONCEDE */
        _cur2 = _saved[8];
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
    return goto_v__C9;
}

var goto_v__C9;
goto_v__C9 = function() {
/* line 6 */
    var _v10 = "PASS W01/002: literal mismatch failed correctly";
    var _ok10 = (_v10 !== _FAIL);
    if (_ok10) {
        _vars["OUTPUT"] = _v10;
    }
    return goto_v_END;
}

goto_v_E001 = function() {
/* line 7 */
    var _v11 = "FAIL W01/002: literal mismatch should fail";
    var _ok11 = (_v11 !== _FAIL);
    if (_ok11) {
        _vars["OUTPUT"] = _v11;
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
