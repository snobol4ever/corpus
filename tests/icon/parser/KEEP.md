# KEEP.md — tests/icon/parser

Per `tests-consolidate-icon` (parent: `corpus-suites-consolidation`). All 153 `.icn`/`.ref` pairs
stay loose, deliberately — not a housecleaning target, a correctness-blocked one.

## Why

**AST-dump-drift-blocked**, the same shape and cause as the Snocone sibling task's
`parser-fixtures` situation (`corpus/tests/snocone/PROVENANCE.md`,
`snocone-parser-fixture-ast-drift-ruling.task.md`): the compiler's live `--dump-ast` shape and this
family's pinned `.ref` oracles have drifted apart, and deciding which side is stale is a
correctness ruling this row has no standing to make unilaterally (owned: `hq_C`, per
`FINDING-2026-08-27-seat08-parser-fixture-ast-oracles-drifted-snocone-59of67-icon-153of153-plus-a-masking-set-e-bug.md`
and this task's own earlier coordination note, item 2 in the LEDGER's `[seat08·2026-08-27]` entry).

**Spot-checked, not assumed still current** (2026-08-28, this session):
```
$ ./scrip --dump-ast corpus/tests/icon/parser/alt_arith.icn
(STMT :subj (TT_PROC_DECL ...
$ cat corpus/tests/icon/parser/alt_arith.ref
(STMT :subj (TT_PROC_DECL main ...
```
Genuine mismatch, confirmed live rather than trusted from the 2026-08-27 finding's byte count. The
originating finding reported all 153/153 failing; this session did not re-run the full 153, only
confirmed the family is not stale-closed.

⛔ **Unlike the Snocone sibling, this family has not yet had its shape families characterized or
ruled on** — no equivalent to Snocone's 5-shape breakdown, family-by-family ceo ruling, or
`SELF-PINNED-SCRIP-SHAPE` provenance work exists for Icon yet. Converting this into a suite before
that ruling would bake an unadjudicated compiler shape into a "consolidated" oracle exactly the way
Snocone's family 5 briefly did — do not attempt a byte-equal-or-no-delete conversion here even
mechanically, since 0 of 153 would currently pass it anyway (byte-equal-or-no-delete requires the
ORIGINAL to already be green, or an explicit `--skip` with a reason, and 153 individual skips would
not be "consolidation", it would be relocating the same unresolved question).

## The 153 files

```
alt_arith.icn alt_in_call.icn alt_str.icn alt_three.icn alt_two.icn alt_var.icn arith_add.icn
arith_sub.icn assign_int.icn assign_mixed.icn assign_seq.icn assign_str.icn assign_var.icn
atom_id.icn atom_int.icn atom_str.icn augop_add.icn augop_concat.icn augop_cset_diff.icn
augop_cset_inter.icn augop_cset_union.icn augop_ge.icn augop_gt.icn augop_le.icn augop_lt.icn
augop_mod.icn augop_ne.icn augop_numeq.icn augop_pow.icn augop_scan.icn augop_sge.icn
augop_sgt.icn augop_sle.icn augop_slt.icn augop_sne.icn augop_str_concat.icn augop_streq.icn
augop_sub.icn bang_binary.icn bang_invoke.icn break_op.icn case_multi_clause.icn
case_nodefault.icn case_simple.icn cmp_eq.icn cmp_lt.icn compound_every_multi.icn
compound_multi.icn compound_one.icn compound_two.icn concat_alt.icn concat_cmp.icn
concat_three.icn concat_two.icn conj_assign.icn conj_scan.icn conj_stmts.icn conj_three.icn
conj_two.icn cset_compl_expr.icn cset_lit.icn every_alt.icn every_do.icn every_novar.icn
every_simple.icn fail_expr.icn fail_stmt.icn field_access.icn global_decl.icn global_multi.icn
if_cmp.icn if_compound_else.icn if_compound_then.icn if_else.icn if_multiline.icn if_then.icn
initial_block.icn kw_expr.icn kw_fail.icn kw_null.icn lconcat_two.icn limit_op.icn
list_ctor.icn local_decl.icn match_expr.icn mod_op.icn multi_proc.icn multi_record.icn
next_op.icn not_expr.icn null_expr.icn paren_expr.icn paren_seq.icn pow_expr.icn
proc_call_noargs.icn proc_call_onearg.icn proc_call_twoargs.icn proc_local_swap.icn
proc_oneparam.icn proc_return.icn proc_simple.icn proc_twoparam.icn proc_varargs.icn
range_paren.icn range_to_by.icn range_to.icn real_exp.icn real_lit.icn record_decl.icn
repeat_op.icn return_in_compound.icn return_suspended.icn return_with_value.icn scan_assign.icn
scan_paren.icn scan_simple.icn scan_var.icn section_mcolon.icn section_op.icn section_pcolon.icn
seq_in_expr.icn special_identical.icn special_notident.icn special_revassign.icn
special_revswap.icn special_swap.icn static_decl.icn str_eq_op.icn str_ge_op.icn str_gt_op.icn
str_le_op.icn str_lt_op.icn str_ne_op.icn subscript_field.icn subscript_op.icn suspend_do.icn
suspend_every.icn suspend_simple.icn unary_cset_compl.icn unary_iterate.icn unary_minus.icn
unary_nonnull.icn unary_plus.icn unary_random.icn unary_size.icn unary_stacked.icn until_op.icn
while_compound.icn while_do.icn write_arith.icn write_int.icn write_str.icn write_var.icn
```

## Re-running this classification

Re-run `./scrip --dump-ast` against a handful of `parser/*.icn` files and diff against their
`.ref` twins before trusting "still 153/153 red" — re-verify the count, don't copy it. Check
whether `hq_C` has ruled on the Icon parser-fixture AST shape (search `.github` for a Icon-analog
of `snocone-parser-fixture-ast-drift-ruling`) before assuming this KEEP.md is still the right call.
