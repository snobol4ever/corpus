'use strict';
const _rt = require(process.env.SNO_RUNTIME || __dirname + '/sno_runtime.js');
const { _vars, _FAIL, _str, _num, _cat, _add, _sub, _mul, _div, _pow,
        _apply, _kw } = _rt;

var goto_v_LOOP;
var goto_v_END;
var goto_v_START;

/* --- block functions --- */
goto_v_START = function() {
/* line 5 */
    var _v1 = /* unimpl E_18 */null;
    var _ok1 = (_v1 !== _FAIL);
    if (_ok1) {
        _vars["PAT"] = _v1;
    }
    return goto_v_LOOP;
}

goto_v_LOOP = function() {
/* line 6 */
    var _v2 = _vars["INPUT"];
    var _ok2 = (_v2 !== _FAIL);
    if (_ok2) {
        _vars["LINE"] = _v2;
    }
    if (!_ok2) return goto_v_END;
    return goto_v__C3;
}

var goto_v__C3;
goto_v__C3 = function() {
/* line 7 */
    var _subj4 = _str(_vars["LINE"]);
    var _slen4 = _subj4.length;
    var _cur4  = 0;
    var _mstart4 = 0;
    var _ok4   = false;
    var _pc = 28;
    var _saved = new Array(1024).fill(0); /* cursor save slots */
    /* Byrd-box dispatch for stmt u4 */
    dispatch: for(;;) switch(_pc) {
    case 28: /* uid7 PROCEED */
        _saved[7] = _cur4;
_pc = 32; continue dispatch;
    case 30: /* uid7 CONCEDE */
        if (_saved[7] >= _slen4) { _pc = 24; continue dispatch;
 }
        _saved[7]++; _cur4 = _saved[7]; _mstart4 = _saved[7];
_pc = 32; continue dispatch;
    case 32: /* uid8 PROCEED */
_pc = 40; continue dispatch;
    case 34: /* uid8 CONCEDE */
_pc = 36; continue dispatch;
    case 36: /* uid9 PROCEED */
_pc = 30; continue dispatch;
    case 38: /* uid9 CONCEDE */
_pc = 24; continue dispatch;
    case 40: /* uid10 PROCEED */
        { var _pat_val10 = _vars["PAT"];
          var _pat_s10 = (_pat_val10 === null || _pat_val10 === undefined) ? '' : String(_pat_val10);
          var _pat_n10 = _pat_s10.length;
          if (_cur4 + _pat_n10 > _slen4) { _pc = 36; continue dispatch;
 }
          if (_subj4.slice(_cur4, _cur4+_pat_n10) !== _pat_s10) { _pc = 36; continue dispatch;
 }
          _saved[10] = _cur4; _cur4 += _pat_n10; }
_pc = 20; continue dispatch;
    case 42: /* uid10 CONCEDE */
        _cur4 = _saved[10];
_pc = 36; continue dispatch;
    case 20: /* uid5 PROCEED */
        _ok4 = true;
        break dispatch;
    case 22: /* uid5 CONCEDE */
        break dispatch;
    case 24: /* uid6 PROCEED */
        _ok4 = false;
        break dispatch;
    case 26: /* uid6 CONCEDE */
        break dispatch;
    default:
        /* unreachable — pattern dispatch hole uid=" + _pc + " */
        break dispatch;
    } /* end dispatch */
    return goto_v_LOOP;
}

goto_v_END = function() {
    return null;
}

/* --- undefined label stubs --- */
if (!goto_v_START) goto_v_START = function() { return null; };

/* --- run --- */
{ var _pc = goto_v_START; while(_pc) _pc = _pc(); }
