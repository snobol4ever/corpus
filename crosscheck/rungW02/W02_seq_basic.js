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
    var _v2 = _cat("foo", "bar");
    var _ok2 = (_v2 !== _FAIL);
    if (_ok2) {
        _vars["PAT"] = _v2;
    }
/* line 6 */
    var _subj3 = _str(_vars["SUBJECT"]);
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
        { var _pat_val9 = _vars["PAT"];
          var _pat_s9 = (_pat_val9 === null || _pat_val9 === undefined) ? '' : String(_pat_val9);
          var _pat_n9 = _pat_s9.length;
          if (_cur3 + _pat_n9 > _slen3) { _pc = 32; continue dispatch;
 }
          if (_subj3.slice(_cur3, _cur3+_pat_n9) !== _pat_s9) { _pc = 32; continue dispatch;
 }
          _saved[9] = _cur3; _cur3 += _pat_n9; }
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
    if (!_ok3) return goto_v_E001;
    return goto_v__C10;
}

var goto_v__C10;
goto_v__C10 = function() {
/* line 7 */
    var _v11 = "PASS W02/001: seq match succeeded";
    var _ok11 = (_v11 !== _FAIL);
    if (_ok11) {
        _vars["OUTPUT"] = _v11;
    }
    return goto_v_END;
}

goto_v_E001 = function() {
/* line 8 */
    var _v12 = "FAIL W02/001: seq match should succeed";
    var _ok12 = (_v12 !== _FAIL);
    if (_ok12) {
        _vars["OUTPUT"] = _v12;
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
