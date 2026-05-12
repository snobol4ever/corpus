// smoke_lower.sc — SL-2 smoke for lower.sc.
//
// Loaded blob:
//   global.sc tree.sc qize.sc tdump.sc lower.sc lower_driver.sc smoke_lower.sc
//
// Builds a tiny program tree by hand — no parser involved — and lowers it
// to SM via the in-memory pipeline.  The expected output corresponds to a
// trivial "OUTPUT = 'hello' \n END" SNOBOL4 source.
//
// Expected SM dump (matches scrip --dump-sm /tmp/hello.sno byte-for-byte
// modulo SM_STNO stmt/line numbers, which we set explicitly here):
//
//   ; SM_Program  count=6
//      0  SM_STNO               stmt=1 line=1
//      1  SM_PUSH_LIT_S         s="hello"
//      2  SM_STORE_VAR          s="OUTPUT"
//      3  SM_LABEL              s="END"
//      4  SM_STNO               stmt=2 line=3
//      5  SM_HALT
//
// PASS criterion: byte-identical lines for SM_PUSH_LIT_S / SM_STORE_VAR /
// SM_LABEL / SM_HALT.  Width-padding (21-char op column) and "; SM_Program
// count=N" header included.

/*── Tag constants come from lower.sc; reuse directly (TT_VAR, TT_QLIT, …
 *   and SL_LBL, SL_SUBJ, SL_REPL, SL_STNO, SL_LINE, SL_EQ, SL_END). ───*/

/*── Builders — bare-minimum factory helpers for STMT trees ───────────*/

function mk_slot(tag, val, slot) {
    slot = tree(tag, val);
    mk_slot = slot;
    return;
}

function mk_slot_expr(tag, expr_tree, slot) {
    slot = tree(tag, '');
    Append(slot, expr_tree);
    mk_slot_expr = slot;
    return;
}

function mk_stmt(stno, line, slots_seq, s, i) {
    s = tree(TT_STMT, '');
    Append(s, mk_slot(SL_STNO, '' stno));
    Append(s, mk_slot(SL_LINE, '' line));
    // slots_seq is itself a tree whose children are pre-built slots.
    i = 1;
    while (LE(i, n(slots_seq))) {
        Append(s, c(slots_seq)[i]);
        i = i + 1;
    }
    mk_stmt = s;
    return;
}

/*── Build the program: OUTPUT = 'hello'  ;   END ─────────────────────*/

// Statement 1: OUTPUT = 'hello'
//   :eq          (flag slot, 0 children)
//   :subj (TT_VAR OUTPUT)
//   :repl (TT_QLIT "hello")
slots1 = tree('SLOTS', '');
Append(slots1, mk_slot(SL_EQ, ''));
Append(slots1, mk_slot_expr(SL_SUBJ, tree(TT_VAR,  'OUTPUT')));
Append(slots1, mk_slot_expr(SL_REPL, tree(TT_QLIT, 'hello')));
stmt1 = mk_stmt(1, 1, slots1);

// Statement 2: END (label-only :end terminator)
slots2 = tree('SLOTS', '');
Append(slots2, mk_slot(SL_LBL, 'END'));
Append(slots2, mk_slot(SL_END, ''));
stmt2 = mk_stmt(2, 3, slots2);

/*── Lower ───────────────────────────────────────────────────────────*/

Lower_collect(stmt1);
Lower_collect(stmt2);

OUTPUT = '--- SM ---';
Lower_run();
