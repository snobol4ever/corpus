'use strict';
const rt = require('/home/claude/one4all/src/runtime/js/sno_runtime.js');
rt._init();
let _pc = 0;
loop: while (true) { switch (_pc) {
case 0:
case 0: rt.set_stno(1); _pc = 1; continue; case 1: rt.push_int(10); _pc = 2; continue; case 2: rt.store_var("A"); _pc = 3; continue; case 3: rt.set_stno(2); _pc = 4; continue; case 4: rt.push_int(3); _pc = 5; continue; case 5: rt.store_var("B"); _pc = 6; continue; case 6: rt.set_stno(3); _pc = 7; continue; case 7: rt.push_var("A"); _pc = 8; continue; case 8: rt.push_var("B"); _pc = 9; continue; case 9: rt.arith('add'); _pc = 10; continue; case 10: rt.store_var("OUTPUT"); _pc = 11; continue; case 11: rt.set_stno(4); _pc = 12; continue; case 12: rt.push_var("A"); _pc = 13; continue; case 13: rt.push_var("B"); _pc = 14; continue; case 14: rt.arith('sub'); _pc = 15; continue; case 15: rt.store_var("OUTPUT"); _pc = 16; continue; case 16: rt.set_stno(5); _pc = 17; continue; case 17: rt.push_var("A"); _pc = 18; continue; case 18: rt.push_var("B"); _pc = 19; continue; case 19: rt.arith('mul'); _pc = 20; continue; case 20: rt.store_var("OUTPUT"); _pc = 21; continue; case 21: rt.set_stno(6); _pc = 22; continue; case 22: rt.push_var("A"); _pc = 23; continue; case 23: rt.push_var("B"); _pc = 24; continue; case 24: rt.arith('div'); _pc = 25; continue; case 25: rt.store_var("OUTPUT"); _pc = 26; continue; case 26: _pc = 27; continue; case 27: rt.set_stno(7); _pc = 28; continue; case 28: break loop; default: break loop;
}} rt._finalize();
