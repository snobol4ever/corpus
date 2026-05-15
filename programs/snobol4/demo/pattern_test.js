'use strict';
const rt = require('/home/claude/one4all/src/runtime/js/sno_runtime.js');
rt._init();
let _pc = 0;
loop: while (true) { switch (_pc) {
case 0:
case 0: rt.set_stno(1); _pc = 1; continue; case 1: rt.push_str("hello world", 11); _pc = 2; continue; case 2: rt.store_var("STR"); _pc = 3; continue; case 3: rt.set_stno(2); _pc = 4; continue; case 4: rt.call("hello", 0); rt.set_last_ok(!rt._is_fail(rt._peek())); _pc = 5; continue; case 5: rt.call("X", 0); rt.set_last_ok(!rt._is_fail(rt._peek())); _pc = 6; continue; case 6: rt.push_var("STR"); _pc = 7; continue; case 7: rt.push_str("", 0); _pc = 8; continue; case 8: rt.call("STR", 1); rt.set_last_ok(!rt._is_fail(rt._peek())); _pc = 9; continue; case 9: rt.set_stno(3); _pc = 10; continue; case 10: rt.push_var("X"); _pc = 11; continue; case 11: rt.store_var("OUTPUT"); _pc = 12; continue; case 12: _pc = 13; continue; case 13: rt.set_stno(4); _pc = 14; continue; case 14: break loop; default: break loop;
}} rt._finalize();
