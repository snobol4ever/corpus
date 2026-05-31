'use strict';
const rt = require('/home/claude/SCRIP/src/runtime/js/sno_runtime.js');
rt._init();
rt._register_label_pcs({"END":3});
let _pc = 0;
loop: while (true) { switch (_pc) {
case 0: rt.set_stno(1); _pc = 1; continue; case 1: rt.push_str("hello", 5); _pc = 2; continue; case 2: rt.store_var("OUTPUT"); _pc = 3; continue; case 3: _pc = 4; continue; case 4: rt.set_stno(2); _pc = 5; continue; case 5: break loop; default: break loop;
}} rt._finalize();
