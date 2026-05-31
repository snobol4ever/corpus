'use strict';
const rt = require('/home/claude/SCRIP/src/runtime/js/sno_runtime.js');
rt._init();
rt._register_label_pcs({"LOOP":3,"END":20});
let _pc = 0;
loop: while (true) { switch (_pc) {
case 0: rt.set_stno(1); _pc = 1; continue; case 1: rt.push_int(1); _pc = 2; continue; case 2: rt.store_var("I"); _pc = 3; continue; case 3: _pc = 4; continue; case 4: rt.set_stno(2); _pc = 5; continue; case 5: rt.push_var("I"); _pc = 6; continue; case 6: rt.store_var("OUTPUT"); _pc = 7; continue; case 7: rt.set_stno(3); _pc = 8; continue; case 8: rt.push_var("I"); _pc = 9; continue; case 9: rt.coerce_num(); _pc = 10; continue; case 10: rt.push_int(1); _pc = 11; continue; case 11: rt.coerce_num(); _pc = 12; continue; case 12: rt.arith('add'); _pc = 13; continue; case 13: rt.store_var("I"); _pc = 14; continue; case 14: rt.set_stno(4); _pc = 15; continue; case 15: rt.push_var("I"); _pc = 16; continue; case 16: rt.push_int(6); _pc = 17; continue; case 17: { let _r = rt.call_or_jump("LT", 2, 18); if (_r >= 0) { _pc = _r; continue; } } _pc = 18; continue; case 18: rt.pop_void(); _pc = 19; continue; case 19: if (rt.last_ok()) _pc = 3; else _pc = 20; continue; case 20: _pc = 21; continue; case 21: rt.set_stno(5); _pc = 22; continue; case 22: break loop; default: break loop;
}} rt._finalize();
