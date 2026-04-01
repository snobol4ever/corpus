'use strict';
const _rt = require(process.env.SNO_RUNTIME || __dirname + '/sno_runtime.js');
const { _vars, _FAIL, _str, _num, _cat, _add, _sub, _mul, _div, _pow,
        _apply, _kw } = _rt;

var goto_v_NEXTL;
var goto_v_DONE;
var goto_v_NEXTW;
var goto_v_END;
var goto_v_START;

/* --- block functions --- */
goto_v_START = function() {
/* line 5 */
    var _v1 = 1;
    var _ok1 = (_v1 !== _FAIL);
    if (_ok1) {
    }
/* line 6 */
    var _v2 = "0123456789";
    var _ok2 = (_v2 !== _FAIL);
    if (_ok2) {
        _vars["NUMERALS"] = _v2;
    }
/* line 7 */
    var _v3 = _cat("'-", _vars["NUMERALS"], _kw("UCASE"), _kw("LCASE"));
    var _ok3 = (_v3 !== _FAIL);
    if (_ok3) {
        _vars["WORD"] = _v3;
    }
/* line 8 */
    var _v4 = _cat(_apply("BREAK", [_vars["WORD"]]), _apply("SPAN", [_vars["WORD"]]));
    var _ok4 = (_v4 !== _FAIL);
    if (_ok4) {
        _vars["WPAT"] = _v4;
    }
    return goto_v_NEXTL;
}

goto_v_NEXTL = function() {
/* line 9 */
    var _v5 = _vars["INPUT"];
    var _ok5 = (_v5 !== _FAIL);
    if (_ok5) {
        _vars["LINE"] = _v5;
    }
    if (!_ok5) return goto_v_DONE;
    return goto_v_NEXTW;
}

goto_v_NEXTW = function() {
/* line 10 */
    var _subj6 = _str(_vars["LINE"]);
    var _slen6 = _subj6.length;
    var _cur6  = 0;
    var _mstart6 = 0;
    var _ok6   = false;
    var _pc = 36;
    var _saved = new Array(1024).fill(0); /* cursor save slots */
    /* Byrd-box dispatch for stmt u6 */
    dispatch: for(;;) switch(_pc) {
    case 36: /* uid9 PROCEED */
        _saved[9] = _cur6;
_pc = 40; continue dispatch;
    case 38: /* uid9 CONCEDE */
        if (_saved[9] >= _slen6) { _pc = 32; continue dispatch;
 }
        _saved[9]++; _cur6 = _saved[9]; _mstart6 = _saved[9];
_pc = 40; continue dispatch;
    case 40: /* uid10 PROCEED */
_pc = 48; continue dispatch;
    case 42: /* uid10 CONCEDE */
_pc = 44; continue dispatch;
    case 44: /* uid11 PROCEED */
_pc = 38; continue dispatch;
    case 46: /* uid11 CONCEDE */
_pc = 32; continue dispatch;
    case 48: /* uid12 PROCEED */
        { var _pat_val12 = _vars["WPAT"];
          var _pat_s12 = (_pat_val12 === null || _pat_val12 === undefined) ? '' : String(_pat_val12);
          var _pat_n12 = _pat_s12.length;
          if (_cur6 + _pat_n12 > _slen6) { _pc = 44; continue dispatch;
 }
          if (_subj6.slice(_cur6, _cur6+_pat_n12) !== _pat_s12) { _pc = 44; continue dispatch;
 }
          _saved[12] = _cur6; _cur6 += _pat_n12; }
_pc = 28; continue dispatch;
    case 50: /* uid12 CONCEDE */
        _cur6 = _saved[12];
_pc = 44; continue dispatch;
    case 28: /* uid7 PROCEED */
        _ok6 = true;
        break dispatch;
    case 30: /* uid7 CONCEDE */
        break dispatch;
    case 32: /* uid8 PROCEED */
        _ok6 = false;
        break dispatch;
    case 34: /* uid8 CONCEDE */
        break dispatch;
    default:
        /* unreachable — pattern dispatch hole uid=" + _pc + " */
        break dispatch;
    } /* end dispatch */
    if (!_ok6) return goto_v_NEXTL;
    return goto_v__C13;
}

var goto_v__C13;
goto_v__C13 = function() {
/* line 11 */
    var _v14 = _add(_vars["N"], 1);
    var _ok14 = (_v14 !== _FAIL);
    if (_ok14) {
        _vars["N"] = _v14;
    }
    return goto_v_NEXTW;
}

goto_v_DONE = function() {
/* line 12 */
    var _v15 = _cat(_num(_vars["N"]), " words");
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
