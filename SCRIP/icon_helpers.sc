/* icon_helpers.sc — helpers for parser_icon.sc, loaded before it. */
/* notmatch() removed 2026-05-18 (SCT-9): provided by match.sc loaded first in    */
/* the runtime chain; redefining here triggered SPITBOL ERROR 217 duplicate-label.*/
/* (icon_helpers.sc itself is slated for elimination in SCT-4 — eliminating this  */
/* function is one step toward that.)                                              */
function push_qlit() { Push(tree('TT_QLIT', strbody));    push_qlit = .dummy; nreturn; }
function push_cset() { Push(tree('TT_CSET', csetbody));   push_cset = .dummy; nreturn; }
function push_flit() { Push(tree('TT_FLIT', REAL(rval)));  push_flit = .dummy; nreturn; }
function push_kw()   { Push(tree('TT_VAR',  '&' kwname));  push_kw   = .dummy; nreturn; }
Push_qlit = (epsilon . *push_qlit());
Push_cset = (epsilon . *push_cset());
Push_flit = (epsilon . *push_flit());
Push_kw   = (epsilon . *push_kw());
