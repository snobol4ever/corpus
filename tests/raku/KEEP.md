# Files kept loose, deliberately not suite-converted -- raku

All 97 fixtures under `parser/`, `parser-coverage/` and `parse_census/` are ABSORBED into the master
(`ALL.raku`/`ALL.ref`/`ALL.csv`, hq_S 2026-09-12, row
`raku-absorb-every-owed-source-into-the-one-master-unabsorbed-census-reads-zero`) AND stay on disk
permanently. That combination is deliberate and it is what a keeper declaration is for; it is **not** a
deferral, so this is a KEEP.md and not a PENDING.md (the distinction this gate's own header calls the crux:
a keeper says "stays loose forever, on purpose", a PENDING says "converts later when a named row unblocks").

## Why they stay -- MEASURED, not assumed (hq_S 2026-09-12)

**A live gate reads these files FROM DISK and would lose its whole population if they were deleted:**
`scripts/test_raku_parser_fixtures.sh` walks the tree directly and grades every one by `--dump-ast`
(`SUITE_BOARD family=parser total=97 ast_n=97 ast_pass=83 ast_fail=0`). Two more scripts read the same
tree -- `scripts/run_parser_sync_monitor.sh` and `scripts/test_gate_suite_conversion_complete.sh` itself.
Deleting the sources after absorption, which is the ordinary loose-pair path's `--delete-absorbed` verb,
would take a green 97-witness gate to zero witnesses. A runner that grades nothing does not go red; it goes
QUIET, which is the failure mode this project refuses everywhere else.

⭐ **What would have to change before these are deletable:** `test_raku_parser_fixtures.sh` would have to
grade the `ast` entries out of `ALL.raku` instead of walking the tree. Until that lands, deletion trades a
real instrument for a tidier directory listing. Re-open this file when it does -- the declaration is
permanent by intent, not by inertia, and naming its expiry condition is what keeps the two different.

⛔ **The `.ast-only` markers beside these sources are load-bearing.** 52 of the 97 cannot be graded against
rakudo at all -- 18 run clean and print NOTHING (parse-only by construction) and 34 rakudo refuses outright
(heredoc adverb spellings, `$*STDOUT` dynamics, a missing `Some::Module`, a fixture wanting `/tmp/test.txt`)
-- so each carries an empty `<stem>.ast-only` marker and absorbs as a `modes=ast` entry, never sent to the
oracle. Removing a marker silently converts that entry into an oracle-graded one that cannot pass.

## The kept files

### parser/ -- 50 fixtures
    arith_add.raku
    arith_chain.raku
    arith_mul.raku
    arith_prec.raku
    assign_bare.raku
    atom_array.raku
    atom_hash.raku
    atom_int.raku
    atom_scalar.raku
    atom_str.raku
    bare_ident_arg.raku
    bare_ident_expr.raku
    call_expr.raku
    decl_array.raku
    decl_hash.raku
    decl_scalar_int.raku
    decl_scalar_str.raku
    handle_stderr.raku
    handle_stdin.raku
    handle_stdout.raku
    if_basic.raku
    if_cmp_eq.raku
    if_else.raku
    interp_leading_var.raku
    interp_multi_var.raku
    interp_only_var.raku
    interp_simple.raku
    interp_trailing_lit.raku
    lines_file.raku
    nested_call_arith.raku
    nested_calls.raku
    nested_if_while.raku
    print_basic.raku
    print_expr.raku
    print_stderr.raku
    print_str.raku
    say_int.raku
    say_stdout.raku
    say_str.raku
    say_var.raku
    slurp_file.raku
    spurt_file.raku
    triple_nested_call.raku
    try_basic.raku
    try_catch_lower.raku
    try_catch.raku
    try_die_msg.raku
    try_nested.raku
    while_basic.raku
    while_incr.raku

### parser-coverage/ -- 39 fixtures
    stmt_ctrl_CATCH_free.raku
    stmt_ctrl_CONTROL.raku
    stmt_ctrl_foreach.raku
    stmt_ctrl_import.raku
    stmt_ctrl_loop_inf.raku
    stmt_ctrl_loop_three.raku
    stmt_ctrl_need.raku
    stmt_ctrl_no.raku
    stmt_ctrl_QUIT.raku
    stmt_ctrl_require.raku
    stmt_ctrl_use.raku
    stmt_ctrl_whenever.raku
    stmt_ctrl_without.raku
    stmt_pfx_BEGIN.raku
    stmt_pfx_CHECK.raku
    stmt_pfx_CLOSE.raku
    stmt_pfx_do.raku
    stmt_pfx_eager.raku
    stmt_pfx_END.raku
    stmt_pfx_ENTER.raku
    stmt_pfx_FIRST.raku
    stmt_pfx_hyper.raku
    stmt_pfx_INIT.raku
    stmt_pfx_KEEP.raku
    stmt_pfx_LAST.raku
    stmt_pfx_lazy.raku
    stmt_pfx_LEAVE.raku
    stmt_pfx_NEXT.raku
    stmt_pfx_once.raku
    stmt_pfx_POST.raku
    stmt_pfx_PRE.raku
    stmt_pfx_quietly.raku
    stmt_pfx_race.raku
    stmt_pfx_react.raku
    stmt_pfx_sink.raku
    stmt_pfx_start.raku
    stmt_pfx_supply.raku
    stmt_pfx_TEMP.raku
    stmt_pfx_UNDO.raku

### parse_census/ -- 8 fixtures
    bare_module.raku
    colon_call.raku
    kebab_ident.raku
    our_decl.raku
    qto_heredoc.raku
    qualified_term.raku
    seq_op.raku
    use_revision.raku
