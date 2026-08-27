# parser/ — STANDALONE-KEEP, all 88 files (task `tests-consolidate-snobol4-loose`)

Verdict: **every file in this directory stays loose.** None of it converts to corpus-suites-consolidation
suite format. Documented earlier in this task at `SCRIP/scripts/scorecard_snobol4.sh` (search
`MISC_DIRS`, comment beginning "parser/smoke/jvm_j3 are UNCHANGED by that task") — restated here because
that comment doesn't satisfy this gate's literal-basename match.

## Why

`parser/` has **zero `.ref` files** — none of its 88 `.sno` fixtures ships a static expected-output
pair. They are graded LIVE at scorecard time (`scorecard_snobol4.sh`'s `MISC_DIRS` bucket): both `scrip`
and the SPITBOL oracle run the file fresh and their outputs are compared on the spot. That is a
structurally different grading model from `corpus_suite_harness.py`'s suite format, which requires a
static, pre-captured `.ref` for its byte-equal-or-no-delete validation. Forcing these through
`capture-oracle-refs` would freeze a one-time oracle snapshot in place of live comparison — a real
semantic change to how these fixtures are graded, not a format change, and not this task's call to make
unilaterally. Many of these fixtures (see `arith_add_mul.sno`: `y = 1 + 2 * 3` / `END`, no `OUTPUT`
statement at all) have no observable stdout to capture anyway — they test parse-acceptance of specific
grammar shapes, not runtime output.

## Filename manifest (literal basenames, for the gate's substring match)

```
arith_add_mul.sno       arith_chain_long.sno    arith_lassoc_div.sno    arith_lassoc.sno
arith_mixed_addsub.sno  arith_paren.sno         arith_pow_chain.sno     arith_unary.sno
assign_int.sno          assign_mixed.sno        assign_seq.sno          assign_str.sno
assign_var.sno          atom_id.sno             atom_int.sno            atom_str.sno
binary_opsyn.sno        blank_line.sno          cf_bare_goto.sno        cf_goto_computed.sno
cf_goto_f.sno           cf_goto_sf.sno          cf_goto_u.sno           cf_label_assign.sno
cf_label_bare.sno       cf_label_only.sno       cf_loop.sno             concat_paren.sno
concat_str.sno          concat_two.sno          cont_chain.sno          cont_dot.sno
cont_plus.sno           defer_alt.sno           defer_in_pat.sno        defer_simple.sno
fn_call_arith.sno       fn_call_expr_arg.sno    fn_call_in_pat.sno      fn_call_nested.sno
fn_call_one.sno         fn_call_str.sno         fn_call_three.sno       fn_call_two.sno
fn_call_zero.sno        fn_define_labeled.sno   fn_define_locals.sno    fn_define_multi.sno
fn_define_noargs.sno    fn_define.sno           fn_stmt.sno             idx_in_assign_lhs.sno
idx_multi.sno           idx_nested.sno          idx_simple.sno          kw_fullscan.sno
kw_lcase.sno            kw_maxlngth.sno         kw_ucase.sno            mixed_comment_control.sno
pat_alt_in_pat.sno      pat_alt_paren.sno       pat_alt_three.sno       pat_alt_two.sno
pat_any.sno             pat_arbno.sno           pat_break.sno           pat_cap_chain.sno
pat_cond.sno            pat_fence.sno           pat_immed.sno           pat_label_pat.sno
pat_len.sno             pat_notany.sno          pat_pos.sno             pat_repl_complex.sno
pat_repl_empty.sno      pat_repl.sno            pat_repl_with_goto.sno  pat_seq_three.sno
pat_seq_two.sno         pat_span.sno            pat_with_goto.sno       semi_separator.sno
unary_assign.sno        unary_indirect.sno      unary_name.sno          unary_not.sno
```

88 files, matching the directory's on-disk `.sno` count exactly.

— seat14, 2026-08-27, task `tests-consolidate-snobol4-loose`
