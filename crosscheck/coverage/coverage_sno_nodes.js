'use strict';
const _rt = require(process.env.SNO_RUNTIME || __dirname + '/sno_runtime.js');
const { _vars, _FAIL, _str, _num, _cat, _add, _sub, _mul, _div, _pow,
        _apply, _kw } = _rt;

var goto_v_NULLOK;
var goto_v_DONE;
var goto_v_END;
var goto_v_START;

/* --- block functions --- */
goto_v_START = function() {
/* line 8 */
    var _v1 = "hello";
    var _ok1 = (_v1 !== _FAIL);
    if (_ok1) {
        _vars["OUTPUT"] = _v1;
    }
/* line 11 */
    var _v2 = 42;
    var _ok2 = (_v2 !== _FAIL);
    if (_ok2) {
        _vars["OUTPUT"] = _v2;
    }
/* line 14 */
    var _v3 = "1.5";
    var _ok3 = (_v3 !== _FAIL);
    if (_ok3) {
        _vars["X"] = _v3;
    }
/* line 15 */
    var _v4 = _vars["X"];
    var _ok4 = (_v4 !== _FAIL);
    if (_ok4) {
        _vars["OUTPUT"] = _v4;
    }
/* line 18 */
    var _v5 = "world";
    var _ok5 = (_v5 !== _FAIL);
    if (_ok5) {
        _vars["A"] = _v5;
    }
/* line 19 */
    var _v6 = _vars["A"];
    var _ok6 = (_v6 !== _FAIL);
    if (_ok6) {
        _vars["OUTPUT"] = _v6;
    }
/* line 22 */
    var _v7 = _kw("ALPHABET");
    var _ok7 = (_v7 !== _FAIL);
    if (_ok7) {
        _vars["OUTPUT"] = _v7;
    }
/* line 25 */
    var _v8 = _add(3, 4);
    var _ok8 = (_v8 !== _FAIL);
    if (_ok8) {
        _vars["OUTPUT"] = _v8;
    }
/* line 26 */
    var _v9 = _sub(10, 3);
    var _ok9 = (_v9 !== _FAIL);
    if (_ok9) {
        _vars["OUTPUT"] = _v9;
    }
/* line 27 */
    var _v10 = _mul(3, 4);
    var _ok10 = (_v10 !== _FAIL);
    if (_ok10) {
        _vars["OUTPUT"] = _v10;
    }
/* line 28 */
    var _v11 = _div(10, 2);
    var _ok11 = (_v11 !== _FAIL);
    if (_ok11) {
        _vars["OUTPUT"] = _v11;
    }
/* line 31 */
    var _v12 = (-_num(5));
    var _ok12 = (_v12 !== _FAIL);
    if (_ok12) {
        _vars["N"] = _v12;
    }
/* line 32 */
    var _v13 = _vars["N"];
    var _ok13 = (_v13 !== _FAIL);
    if (_ok13) {
        _vars["OUTPUT"] = _v13;
    }
/* line 35 */
    var _v14 = _pow(2, 8);
    var _ok14 = (_v14 !== _FAIL);
    if (_ok14) {
        _vars["OUTPUT"] = _v14;
    }
/* line 38 */
    var _v15 = _cat("foo", "bar");
    var _ok15 = (_v15 !== _FAIL);
    if (_ok15) {
        _vars["OUTPUT"] = _v15;
    }
/* line 41 */
    var _v16 = "hello world";
    var _ok16 = (_v16 !== _FAIL);
    if (_ok16) {
        _vars["S"] = _v16;
    }
/* line 42 */
    var _subj17 = _str(_vars["S"]);
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
        /* stub pat kind 45 */
_pc = 72; continue dispatch;
    case 94: /* uid23 CONCEDE */
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
/* line 43 */
    var _v24 = _vars["CAPT"];
    var _ok24 = (_v24 !== _FAIL);
    if (_ok24) {
        _vars["OUTPUT"] = _v24;
    }
/* line 46 */
    var _v25 = "abcd";
    var _ok25 = (_v25 !== _FAIL);
    if (_ok25) {
        _vars["S2"] = _v25;
    }
/* line 47 */
    var _subj26 = _str(_vars["S2"]);
    var _slen26 = _subj26.length;
    var _cur26  = 0;
    var _mstart26 = 0;
    var _ok26   = false;
    var _pc = 116;
    var _saved = new Array(1024).fill(0); /* cursor save slots */
    /* Byrd-box dispatch for stmt u26 */
    dispatch: for(;;) switch(_pc) {
    case 116: /* uid29 PROCEED */
        _saved[29] = _cur26;
_pc = 120; continue dispatch;
    case 118: /* uid29 CONCEDE */
        if (_saved[29] >= _slen26) { _pc = 112; continue dispatch;
 }
        _saved[29]++; _cur26 = _saved[29]; _mstart26 = _saved[29];
_pc = 120; continue dispatch;
    case 120: /* uid30 PROCEED */
_pc = 128; continue dispatch;
    case 122: /* uid30 CONCEDE */
_pc = 124; continue dispatch;
    case 124: /* uid31 PROCEED */
_pc = 118; continue dispatch;
    case 126: /* uid31 CONCEDE */
_pc = 112; continue dispatch;
    case 128: /* uid32 PROCEED */
_pc = 132; continue dispatch;
    case 130: /* uid32 CONCEDE */
_pc = 138; continue dispatch;
    case 140: /* uid35 PROCEED */
_pc = 134; continue dispatch;
    case 142: /* uid35 CONCEDE */
_pc = 124; continue dispatch;
    case 144: /* uid36 PROCEED */
        if (_cur26 + 2 > _slen26) { _pc = 124; continue dispatch;
 }
        if (_subj26.slice(_cur26, _cur26+2) !== "ab") { _pc = 124; continue dispatch;
 }
        _saved[36] = _cur26; _cur26 += 2;
_pc = 136; continue dispatch;
    case 146: /* uid36 CONCEDE */
        _cur26 = _saved[36];
_pc = 124; continue dispatch;
    case 148: /* uid37 PROCEED */
        if (_cur26 + 2 > _slen26) { _pc = 140; continue dispatch;
 }
        if (_subj26.slice(_cur26, _cur26+2) !== "cd") { _pc = 140; continue dispatch;
 }
        _saved[37] = _cur26; _cur26 += 2;
_pc = 108; continue dispatch;
    case 150: /* uid37 CONCEDE */
        _cur26 = _saved[37];
_pc = 140; continue dispatch;
    case 108: /* uid27 PROCEED */
        _ok26 = true;
        break dispatch;
    case 110: /* uid27 CONCEDE */
        break dispatch;
    case 112: /* uid28 PROCEED */
        _ok26 = false;
        break dispatch;
    case 114: /* uid28 CONCEDE */
        break dispatch;
    default:
        /* unreachable — pattern dispatch hole uid=" + _pc + " */
        break dispatch;
    } /* end dispatch */
/* line 48 */
    var _v38 = "seq ok";
    var _ok38 = (_v38 !== _FAIL);
    if (_ok38) {
        _vars["OUTPUT"] = _v38;
    }
/* line 51 */
    var _v39 = "cat";
    var _ok39 = (_v39 !== _FAIL);
    if (_ok39) {
        _vars["S3"] = _v39;
    }
/* line 52 */
    var _subj40 = _str(_vars["S3"]);
    var _slen40 = _subj40.length;
    var _cur40  = 0;
    var _mstart40 = 0;
    var _ok40   = false;
    var _pc = 172;
    var _saved = new Array(1024).fill(0); /* cursor save slots */
    /* Byrd-box dispatch for stmt u40 */
    dispatch: for(;;) switch(_pc) {
    case 172: /* uid43 PROCEED */
        _saved[43] = _cur40;
_pc = 176; continue dispatch;
    case 174: /* uid43 CONCEDE */
        if (_saved[43] >= _slen40) { _pc = 168; continue dispatch;
 }
        _saved[43]++; _cur40 = _saved[43]; _mstart40 = _saved[43];
_pc = 176; continue dispatch;
    case 176: /* uid44 PROCEED */
_pc = 184; continue dispatch;
    case 178: /* uid44 CONCEDE */
_pc = 180; continue dispatch;
    case 180: /* uid45 PROCEED */
_pc = 174; continue dispatch;
    case 182: /* uid45 CONCEDE */
_pc = 168; continue dispatch;
    case 184: /* uid46 PROCEED */
_pc = 188; continue dispatch;
    case 186: /* uid46 CONCEDE */
_pc = 194; continue dispatch;
    case 196: /* uid49 PROCEED */
        if (_cur40 + 3 > _slen40) { _pc = 192; continue dispatch;
 }
        if (_subj40.slice(_cur40, _cur40+3) !== "dog") { _pc = 192; continue dispatch;
 }
        _saved[49] = _cur40; _cur40 += 3;
_pc = 164; continue dispatch;
    case 198: /* uid49 CONCEDE */
        _cur40 = _saved[49];
_pc = 192; continue dispatch;
    case 200: /* uid50 PROCEED */
        if (_cur40 + 3 > _slen40) { _pc = 180; continue dispatch;
 }
        if (_subj40.slice(_cur40, _cur40+3) !== "cat") { _pc = 180; continue dispatch;
 }
        _saved[50] = _cur40; _cur40 += 3;
_pc = 164; continue dispatch;
    case 202: /* uid50 CONCEDE */
        _cur40 = _saved[50];
_pc = 180; continue dispatch;
    case 164: /* uid41 PROCEED */
        _ok40 = true;
        break dispatch;
    case 166: /* uid41 CONCEDE */
        break dispatch;
    case 168: /* uid42 PROCEED */
        _ok40 = false;
        break dispatch;
    case 170: /* uid42 CONCEDE */
        break dispatch;
    default:
        /* unreachable — pattern dispatch hole uid=" + _pc + " */
        break dispatch;
    } /* end dispatch */
/* line 53 */
    var _v51 = "alt ok";
    var _ok51 = (_v51 !== _FAIL);
    if (_ok51) {
        _vars["OUTPUT"] = _v51;
    }
/* line 56 */
    var _v52 = "hello";
    var _ok52 = (_v52 !== _FAIL);
    if (_ok52) {
        _vars["S4"] = _v52;
    }
/* line 57 */
    var _subj53 = _str(_vars["S4"]);
    var _slen53 = _subj53.length;
    var _cur53  = 0;
    var _mstart53 = 0;
    var _ok53   = false;
    var _pc = 224;
    var _saved = new Array(1024).fill(0); /* cursor save slots */
    /* Byrd-box dispatch for stmt u53 */
    dispatch: for(;;) switch(_pc) {
    case 224: /* uid56 PROCEED */
        _saved[56] = _cur53;
_pc = 228; continue dispatch;
    case 226: /* uid56 CONCEDE */
        if (_saved[56] >= _slen53) { _pc = 220; continue dispatch;
 }
        _saved[56]++; _cur53 = _saved[56]; _mstart53 = _saved[56];
_pc = 228; continue dispatch;
    case 228: /* uid57 PROCEED */
_pc = 236; continue dispatch;
    case 230: /* uid57 CONCEDE */
_pc = 232; continue dispatch;
    case 232: /* uid58 PROCEED */
_pc = 226; continue dispatch;
    case 234: /* uid58 CONCEDE */
_pc = 220; continue dispatch;
    case 236: /* uid59 PROCEED */
        _saved[61] = _cur53;
_pc = 240; continue dispatch;
    case 238: /* uid59 CONCEDE */
_pc = 242; continue dispatch;
    case 252: /* uid63 PROCEED */
        if (_cur53 + 3 > _slen53) { _pc = 232; continue dispatch;
 }
        _saved[63] = _cur53; _cur53 += 3;
_pc = 248; continue dispatch;
    case 254: /* uid63 CONCEDE */
        _cur53 = _saved[63];
_pc = 232; continue dispatch;
    case 248: /* uid62 PROCEED */
        _vars["PART"] = _subj53.slice(_saved[61], _cur53);
_pc = 216; continue dispatch;
    case 250: /* uid62 CONCEDE */
_pc = 232; continue dispatch;
    case 216: /* uid54 PROCEED */
        _ok53 = true;
        break dispatch;
    case 218: /* uid54 CONCEDE */
        break dispatch;
    case 220: /* uid55 PROCEED */
        _ok53 = false;
        break dispatch;
    case 222: /* uid55 CONCEDE */
        break dispatch;
    default:
        /* unreachable — pattern dispatch hole uid=" + _pc + " */
        break dispatch;
    } /* end dispatch */
/* line 58 */
    var _v64 = _vars["PART"];
    var _ok64 = (_v64 !== _FAIL);
    if (_ok64) {
        _vars["OUTPUT"] = _v64;
    }
/* line 61 */
    var _v65 = "hello world";
    var _ok65 = (_v65 !== _FAIL);
    if (_ok65) {
        _vars["S5"] = _v65;
    }
/* line 62 */
    var _subj66 = _str(_vars["S5"]);
    var _slen66 = _subj66.length;
    var _cur66  = 0;
    var _mstart66 = 0;
    var _ok66   = false;
    var _pc = 276;
    var _saved = new Array(1024).fill(0); /* cursor save slots */
    /* Byrd-box dispatch for stmt u66 */
    dispatch: for(;;) switch(_pc) {
    case 276: /* uid69 PROCEED */
        _saved[69] = _cur66;
_pc = 280; continue dispatch;
    case 278: /* uid69 CONCEDE */
        if (_saved[69] >= _slen66) { _pc = 272; continue dispatch;
 }
        _saved[69]++; _cur66 = _saved[69]; _mstart66 = _saved[69];
_pc = 280; continue dispatch;
    case 280: /* uid70 PROCEED */
_pc = 288; continue dispatch;
    case 282: /* uid70 CONCEDE */
_pc = 284; continue dispatch;
    case 284: /* uid71 PROCEED */
_pc = 278; continue dispatch;
    case 286: /* uid71 CONCEDE */
_pc = 272; continue dispatch;
    case 288: /* uid72 PROCEED */
        _saved[74] = _cur66;
_pc = 292; continue dispatch;
    case 290: /* uid72 CONCEDE */
_pc = 294; continue dispatch;
    case 304: /* uid76 PROCEED */
        if (_cur66 + 5 > _slen66) { _pc = 284; continue dispatch;
 }
        if (_subj66.slice(_cur66, _cur66+5) !== "world") { _pc = 284; continue dispatch;
 }
        _saved[76] = _cur66; _cur66 += 5;
_pc = 300; continue dispatch;
    case 306: /* uid76 CONCEDE */
        _cur66 = _saved[76];
_pc = 284; continue dispatch;
    case 300: /* uid75 PROCEED */
        _vars["TRAIL"] = _subj66.slice(_saved[74], _cur66);
_pc = 268; continue dispatch;
    case 302: /* uid75 CONCEDE */
_pc = 284; continue dispatch;
    case 268: /* uid67 PROCEED */
        _ok66 = true;
        break dispatch;
    case 270: /* uid67 CONCEDE */
        break dispatch;
    case 272: /* uid68 PROCEED */
        _ok66 = false;
        break dispatch;
    case 274: /* uid68 CONCEDE */
        break dispatch;
    default:
        /* unreachable — pattern dispatch hole uid=" + _pc + " */
        break dispatch;
    } /* end dispatch */
/* line 63 */
    var _v77 = _vars["TRAIL"];
    var _ok77 = (_v77 !== _FAIL);
    if (_ok77) {
        _vars["OUTPUT"] = _v77;
    }
/* line 66 */
    var _v78 = "abcdef";
    var _ok78 = (_v78 !== _FAIL);
    if (_ok78) {
        _vars["S6"] = _v78;
    }
/* line 67 */
    var _subj79 = _str(_vars["S6"]);
    var _slen79 = _subj79.length;
    var _cur79  = 0;
    var _mstart79 = 0;
    var _ok79   = false;
    var _pc = 328;
    var _saved = new Array(1024).fill(0); /* cursor save slots */
    /* Byrd-box dispatch for stmt u79 */
    dispatch: for(;;) switch(_pc) {
    case 328: /* uid82 PROCEED */
        _saved[82] = _cur79;
_pc = 332; continue dispatch;
    case 330: /* uid82 CONCEDE */
        if (_saved[82] >= _slen79) { _pc = 324; continue dispatch;
 }
        _saved[82]++; _cur79 = _saved[82]; _mstart79 = _saved[82];
_pc = 332; continue dispatch;
    case 332: /* uid83 PROCEED */
_pc = 340; continue dispatch;
    case 334: /* uid83 CONCEDE */
_pc = 336; continue dispatch;
    case 336: /* uid84 PROCEED */
_pc = 330; continue dispatch;
    case 338: /* uid84 CONCEDE */
_pc = 324; continue dispatch;
    case 340: /* uid85 PROCEED */
        /* stub pat kind 42 */
_pc = 320; continue dispatch;
    case 342: /* uid85 CONCEDE */
_pc = 336; continue dispatch;
    case 320: /* uid80 PROCEED */
        _ok79 = true;
        break dispatch;
    case 322: /* uid80 CONCEDE */
        break dispatch;
    case 324: /* uid81 PROCEED */
        _ok79 = false;
        break dispatch;
    case 326: /* uid81 CONCEDE */
        break dispatch;
    default:
        /* unreachable — pattern dispatch hole uid=" + _pc + " */
        break dispatch;
    } /* end dispatch */
/* line 68 */
    var _v86 = _vars["POS1"];
    var _ok86 = (_v86 !== _FAIL);
    if (_ok86) {
        _vars["OUTPUT"] = _v86;
    }
/* line 71 */
    var _v87 = "xaby";
    var _ok87 = (_v87 !== _FAIL);
    if (_ok87) {
        _vars["S7"] = _v87;
    }
/* line 72 */
    var _subj88 = _str(_vars["S7"]);
    var _slen88 = _subj88.length;
    var _cur88  = 0;
    var _mstart88 = 0;
    var _ok88   = false;
    var _pc = 364;
    var _saved = new Array(1024).fill(0); /* cursor save slots */
    /* Byrd-box dispatch for stmt u88 */
    dispatch: for(;;) switch(_pc) {
    case 364: /* uid91 PROCEED */
        _saved[91] = _cur88;
_pc = 368; continue dispatch;
    case 366: /* uid91 CONCEDE */
        if (_saved[91] >= _slen88) { _pc = 360; continue dispatch;
 }
        _saved[91]++; _cur88 = _saved[91]; _mstart88 = _saved[91];
_pc = 368; continue dispatch;
    case 368: /* uid92 PROCEED */
_pc = 376; continue dispatch;
    case 370: /* uid92 CONCEDE */
_pc = 372; continue dispatch;
    case 372: /* uid93 PROCEED */
_pc = 366; continue dispatch;
    case 374: /* uid93 CONCEDE */
_pc = 360; continue dispatch;
    case 376: /* uid94 PROCEED */
_pc = 380; continue dispatch;
    case 378: /* uid94 CONCEDE */
_pc = 386; continue dispatch;
    case 388: /* uid97 PROCEED */
_pc = 382; continue dispatch;
    case 390: /* uid97 CONCEDE */
_pc = 372; continue dispatch;
    case 392: /* uid98 PROCEED */
        { var _pat_val98 = _vars["ARB"];
          var _pat_s98 = (_pat_val98 === null || _pat_val98 === undefined) ? '' : String(_pat_val98);
          var _pat_n98 = _pat_s98.length;
          if (_cur88 + _pat_n98 > _slen88) { _pc = 372; continue dispatch;
 }
          if (_subj88.slice(_cur88, _cur88+_pat_n98) !== _pat_s98) { _pc = 372; continue dispatch;
 }
          _saved[98] = _cur88; _cur88 += _pat_n98; }
_pc = 384; continue dispatch;
    case 394: /* uid98 CONCEDE */
        _cur88 = _saved[98];
_pc = 372; continue dispatch;
    case 396: /* uid99 PROCEED */
        if (_cur88 + 1 > _slen88) { _pc = 388; continue dispatch;
 }
        if (_subj88[_cur88] !== "b") { _pc = 388; continue dispatch;
 }
        _saved[99] = _cur88; _cur88 += 1;
_pc = 356; continue dispatch;
    case 398: /* uid99 CONCEDE */
        _cur88 = _saved[99];
_pc = 388; continue dispatch;
    case 356: /* uid89 PROCEED */
        _ok88 = true;
        break dispatch;
    case 358: /* uid89 CONCEDE */
        break dispatch;
    case 360: /* uid90 PROCEED */
        _ok88 = false;
        break dispatch;
    case 362: /* uid90 CONCEDE */
        break dispatch;
    default:
        /* unreachable — pattern dispatch hole uid=" + _pc + " */
        break dispatch;
    } /* end dispatch */
/* line 73 */
    var _v100 = "arb ok";
    var _ok100 = (_v100 !== _FAIL);
    if (_ok100) {
        _vars["OUTPUT"] = _v100;
    }
/* line 76 */
    var _v101 = "aaab";
    var _ok101 = (_v101 !== _FAIL);
    if (_ok101) {
        _vars["S8"] = _v101;
    }
/* line 77 */
    var _subj102 = _str(_vars["S8"]);
    var _slen102 = _subj102.length;
    var _cur102  = 0;
    var _mstart102 = 0;
    var _ok102   = false;
    var _pc = 420;
    var _saved = new Array(1024).fill(0); /* cursor save slots */
    /* Byrd-box dispatch for stmt u102 */
    dispatch: for(;;) switch(_pc) {
    case 420: /* uid105 PROCEED */
        _saved[105] = _cur102;
_pc = 424; continue dispatch;
    case 422: /* uid105 CONCEDE */
        if (_saved[105] >= _slen102) { _pc = 416; continue dispatch;
 }
        _saved[105]++; _cur102 = _saved[105]; _mstart102 = _saved[105];
_pc = 424; continue dispatch;
    case 424: /* uid106 PROCEED */
_pc = 432; continue dispatch;
    case 426: /* uid106 CONCEDE */
_pc = 428; continue dispatch;
    case 428: /* uid107 PROCEED */
_pc = 422; continue dispatch;
    case 430: /* uid107 CONCEDE */
_pc = 416; continue dispatch;
    case 432: /* uid108 PROCEED */
_pc = 436; continue dispatch;
    case 434: /* uid108 CONCEDE */
_pc = 442; continue dispatch;
    case 444: /* uid111 PROCEED */
_pc = 438; continue dispatch;
    case 446: /* uid111 CONCEDE */
_pc = 428; continue dispatch;
    case 448: /* uid112 PROCEED */
        /* stub FNC ARBNO */
_pc = 440; continue dispatch;
    case 450: /* uid112 CONCEDE */
_pc = 428; continue dispatch;
    case 452: /* uid113 PROCEED */
        if (_cur102 + 1 > _slen102) { _pc = 444; continue dispatch;
 }
        if (_subj102[_cur102] !== "b") { _pc = 444; continue dispatch;
 }
        _saved[113] = _cur102; _cur102 += 1;
_pc = 412; continue dispatch;
    case 454: /* uid113 CONCEDE */
        _cur102 = _saved[113];
_pc = 444; continue dispatch;
    case 412: /* uid103 PROCEED */
        _ok102 = true;
        break dispatch;
    case 414: /* uid103 CONCEDE */
        break dispatch;
    case 416: /* uid104 PROCEED */
        _ok102 = false;
        break dispatch;
    case 418: /* uid104 CONCEDE */
        break dispatch;
    default:
        /* unreachable — pattern dispatch hole uid=" + _pc + " */
        break dispatch;
    } /* end dispatch */
/* line 78 */
    var _v114 = "arbno ok";
    var _ok114 = (_v114 !== _FAIL);
    if (_ok114) {
        _vars["OUTPUT"] = _v114;
    }
/* line 81 */
    var _v115 = _apply("LEN", [2]);
    var _ok115 = (_v115 !== _FAIL);
    if (_ok115) {
        _vars["PAT"] = _v115;
    }
/* line 82 */
    var _v116 = "abcd";
    var _ok116 = (_v116 !== _FAIL);
    if (_ok116) {
        _vars["S9"] = _v116;
    }
/* line 83 */
    var _subj117 = _str(_vars["S9"]);
    var _slen117 = _subj117.length;
    var _cur117  = 0;
    var _mstart117 = 0;
    var _ok117   = false;
    var _pc = 480;
    var _saved = new Array(1024).fill(0); /* cursor save slots */
    /* Byrd-box dispatch for stmt u117 */
    dispatch: for(;;) switch(_pc) {
    case 480: /* uid120 PROCEED */
        _saved[120] = _cur117;
_pc = 484; continue dispatch;
    case 482: /* uid120 CONCEDE */
        if (_saved[120] >= _slen117) { _pc = 476; continue dispatch;
 }
        _saved[120]++; _cur117 = _saved[120]; _mstart117 = _saved[120];
_pc = 484; continue dispatch;
    case 484: /* uid121 PROCEED */
_pc = 492; continue dispatch;
    case 486: /* uid121 CONCEDE */
_pc = 488; continue dispatch;
    case 488: /* uid122 PROCEED */
_pc = 482; continue dispatch;
    case 490: /* uid122 CONCEDE */
_pc = 476; continue dispatch;
    case 492: /* uid123 PROCEED */
        /* stub pat kind 8 */
_pc = 472; continue dispatch;
    case 494: /* uid123 CONCEDE */
_pc = 488; continue dispatch;
    case 472: /* uid118 PROCEED */
        _ok117 = true;
        break dispatch;
    case 474: /* uid118 CONCEDE */
        break dispatch;
    case 476: /* uid119 PROCEED */
        _ok117 = false;
        break dispatch;
    case 478: /* uid119 CONCEDE */
        break dispatch;
    default:
        /* unreachable — pattern dispatch hole uid=" + _pc + " */
        break dispatch;
    } /* end dispatch */
/* line 84 */
    var _v124 = "star ok";
    var _ok124 = (_v124 !== _FAIL);
    if (_ok124) {
        _vars["OUTPUT"] = _v124;
    }
/* line 87 */
    var _v125 = "A";
    var _ok125 = (_v125 !== _FAIL);
    if (_ok125) {
        _vars["VNAME"] = _v125;
    }
/* line 88 */
    var _v126 = _vars[_str(_vars["VNAME"]).toUpperCase()];
    var _ok126 = (_v126 !== _FAIL);
    if (_ok126) {
        _vars["OUTPUT"] = _v126;
    }
/* line 91 */
    var _v127 = _apply("SIZE", ["hello"]);
    var _ok127 = (_v127 !== _FAIL);
    if (_ok127) {
        _vars["OUTPUT"] = _v127;
    }
/* line 94 */
    var _v128 = _apply("TABLE", []);
    var _ok128 = (_v128 !== _FAIL);
    if (_ok128) {
        _vars["T"] = _v128;
    }
/* line 95 */
    var _v129 = "val";
    var _ok129 = (_v129 !== _FAIL);
    if (_ok129) {
    }
/* line 96 */
    var _v130 = /* unimpl E_44 */null;
    var _ok130 = (_v130 !== _FAIL);
    if (_ok130) {
        _vars["OUTPUT"] = _v130;
    }
/* line 99 */
    var _v131 = _apply("IDENT", [_vars["UNDEF"], null]);
    var _ok131 = (_v131 !== _FAIL);
    if (_ok131) {
        _vars["OUTPUT"] = _v131;
    }
    if (_ok131) return goto_v_NULLOK;
    return goto_v__C132;
}

var goto_v__C132;
goto_v__C132 = function() {
/* line 100 */
    var _v133 = "not null";
    var _ok133 = (_v133 !== _FAIL);
    if (_ok133) {
        _vars["OUTPUT"] = _v133;
    }
    return goto_v_DONE;
}

goto_v_NULLOK = function() {
/* line 101 */
    var _v134 = "null ok";
    var _ok134 = (_v134 !== _FAIL);
    if (_ok134) {
        _vars["OUTPUT"] = _v134;
    }
    return goto_v_DONE;
}

goto_v_DONE = function() {
/* line 102 */
/* line 105 */
    var _v135 = _apply("OPSYN", ["MYSIZE", "SIZE", 1]);
    var _ok135 = (_v135 !== _FAIL);
/* line 106 */
    var _v136 = _apply("MYSIZE", ["hi"]);
    var _ok136 = (_v136 !== _FAIL);
    if (_ok136) {
        _vars["OUTPUT"] = _v136;
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
