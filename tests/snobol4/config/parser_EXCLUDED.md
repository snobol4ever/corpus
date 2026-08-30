# EXCLUDED — corpus/tests/snobol4/parser/

Task `snobol4-parser-suite-zero-ref` (re-scopes `ref-the-ungraded-suites`, QUEUE.done.tsv rank 6 — its brief's
3-way classification method is reused verbatim here, not redesigned). All 88 `.sno` files in this directory were
run through the live correctness oracle (`sbl_correctness_bin`, `-bf`, via `scripts/util_ref_mint.sh misc
corpus/tests/snobol4/parser` — census + `--apply` both run 2026-08-29) and classified BEFORE any `.ref` was
committed, per that method: (i) rc=0 with real output → mint; (ii) errors/crashes → name as oracle-unrunnable,
don't mint; (iii) needs stdin/files → name, leave out of the auto-graded set.

**Zero of the 88 fixtures minted a `.ref`.** Every file in this tree is a minimal PARSE-ONLY probe — none contains
an `OUTPUT` statement (verified: `grep -L OUTPUT *.sno` = all 88) — so grading by stdout diff is structurally the
wrong instrument here, not a coverage gap this row can close by running the oracle harder. The correct follow-up
already exists as its own queue row, `parser-acceptance-harness` (QUEUE.tsv, FREE, unassigned as of 2026-08-29):
an ACCEPT/REJECT-verdict harness (oracle vs SCRIP on whether each program is even accepted), which is what these
fixtures actually exercise. No new row minted for it here — reuse that one. Class (iii) is empty for this whole
tree: none of the 88 read stdin or an external file (`grep -l "INPUT\|\.input\b" *.sno` = none).

## EMPTY — oracle exits 0, 0 bytes (61 files)
SPITBOL runs the program to completion and produces no output, because there is no `OUTPUT` statement to
produce any — the fixture exists to be parsed, not to print. A 0-byte `.ref` would grade "produced nothing"
as correct for ANY outcome that also produces nothing, including a wrong one — GOAL-SCRIP-HQ.md's own history
names this exact class as the source of 61 vacuous PASS/PASS rows the last time this tree was graded (row
`parser-acceptance-harness`). Not minted, by design.
- arith_add_mul.sno — empty (rc=0, 0 bytes)
- arith_chain_long.sno — empty (rc=0, 0 bytes)
- arith_lassoc_div.sno — empty (rc=0, 0 bytes)
- arith_lassoc.sno — empty (rc=0, 0 bytes)
- arith_mixed_addsub.sno — empty (rc=0, 0 bytes)
- arith_paren.sno — empty (rc=0, 0 bytes)
- arith_pow_chain.sno — empty (rc=0, 0 bytes)
- arith_unary.sno — empty (rc=0, 0 bytes)
- assign_int.sno — empty (rc=0, 0 bytes)
- assign_mixed.sno — empty (rc=0, 0 bytes)
- assign_seq.sno — empty (rc=0, 0 bytes)
- assign_str.sno — empty (rc=0, 0 bytes)
- assign_var.sno — empty (rc=0, 0 bytes)
- atom_id.sno — empty (rc=0, 0 bytes)
- atom_int.sno — empty (rc=0, 0 bytes)
- atom_str.sno — empty (rc=0, 0 bytes)
- blank_line.sno — empty (rc=0, 0 bytes)
- cf_label_bare.sno — empty (rc=0, 0 bytes)
- cf_label_only.sno — empty (rc=0, 0 bytes)
- concat_paren.sno — empty (rc=0, 0 bytes)
- concat_str.sno — empty (rc=0, 0 bytes)
- concat_two.sno — empty (rc=0, 0 bytes)
- cont_chain.sno — empty (rc=0, 0 bytes)
- cont_dot.sno — empty (rc=0, 0 bytes)
- cont_plus.sno — empty (rc=0, 0 bytes)
- defer_alt.sno — empty (rc=0, 0 bytes)
- defer_in_pat.sno — empty (rc=0, 0 bytes)
- defer_simple.sno — empty (rc=0, 0 bytes)
- fn_define_labeled.sno — empty (rc=0, 0 bytes)
- fn_define_locals.sno — empty (rc=0, 0 bytes)
- fn_define_multi.sno — empty (rc=0, 0 bytes)
- fn_define_noargs.sno — empty (rc=0, 0 bytes)
- fn_define.sno — empty (rc=0, 0 bytes)
- kw_fullscan.sno — empty (rc=0, 0 bytes)
- kw_ucase.sno — empty (rc=0, 0 bytes)
- mixed_comment_control.sno — empty (rc=0, 0 bytes)
- pat_alt_in_pat.sno — empty (rc=0, 0 bytes)
- pat_alt_paren.sno — empty (rc=0, 0 bytes)
- pat_alt_three.sno — empty (rc=0, 0 bytes)
- pat_alt_two.sno — empty (rc=0, 0 bytes)
- pat_any.sno — empty (rc=0, 0 bytes)
- pat_arbno.sno — empty (rc=0, 0 bytes)
- pat_break.sno — empty (rc=0, 0 bytes)
- pat_cap_chain.sno — empty (rc=0, 0 bytes)
- pat_cond.sno — empty (rc=0, 0 bytes)
- pat_fence.sno — empty (rc=0, 0 bytes)
- pat_immed.sno — empty (rc=0, 0 bytes)
- pat_label_pat.sno — empty (rc=0, 0 bytes)
- pat_len.sno — empty (rc=0, 0 bytes)
- pat_notany.sno — empty (rc=0, 0 bytes)
- pat_pos.sno — empty (rc=0, 0 bytes)
- pat_repl_complex.sno — empty (rc=0, 0 bytes)
- pat_repl_empty.sno — empty (rc=0, 0 bytes)
- pat_repl.sno — empty (rc=0, 0 bytes)
- pat_repl_with_goto.sno — empty (rc=0, 0 bytes)
- pat_seq_three.sno — empty (rc=0, 0 bytes)
- pat_seq_two.sno — empty (rc=0, 0 bytes)
- pat_span.sno — empty (rc=0, 0 bytes)
- pat_with_goto.sno — empty (rc=0, 0 bytes)
- semi_separator.sno — empty (rc=0, 0 bytes)
- unary_name.sno — empty (rc=0, 0 bytes)

## DEAD_REPORT — oracle exits 0 but prints a fatal SPITBOL error report (21 files)
The oracle REJECTS the program (a real numbered ERROR from its own error-recovery path) while still exiting
rc=0 — minting this as a `.ref` would pin the error report itself as the definition of "correct". Each line
names the oracle's own answer, MEASURED via `scorecard_snobol4.sh oracle misc <file>` (2026-08-29). Several
look like real ACCEPT/REJECT divergences if SCRIP currently compiles what the oracle rejects here (same shape
as `binary_opsyn`'s `opsyn-3arg` finding in GOAL-SCRIP-HQ.md) — that comparison is `parser-acceptance-harness`'s
job, not this row's; named here so it isn't re-discovered from scratch. (Two error strings below, `idx_in_assign_lhs`
and `kw_maxlngth`, are cut off mid-word — that is the oracle's own printed message, reproduced byte-for-byte, not
a capture artifact; re-verified with an untruncated capture.)
- binary_opsyn.sno — oracle-unrunnable: ERROR 029 -- undefined operator referenced
- cf_goto_computed.sno — oracle-unrunnable: ERROR 242 -- function return from level zero
- fn_call_arith.sno — oracle-unrunnable: ERROR 022 -- undefined function called
- fn_call_expr_arg.sno — oracle-unrunnable: ERROR 022 -- undefined function called
- fn_call_in_pat.sno — oracle-unrunnable: ERROR 022 -- undefined function called
- fn_call_nested.sno — oracle-unrunnable: ERROR 022 -- undefined function called
- fn_call_one.sno — oracle-unrunnable: ERROR 022 -- undefined function called
- fn_call_str.sno — oracle-unrunnable: ERROR 022 -- undefined function called
- fn_call_three.sno — oracle-unrunnable: ERROR 022 -- undefined function called
- fn_call_two.sno — oracle-unrunnable: ERROR 022 -- undefined function called
- fn_call_zero.sno — oracle-unrunnable: ERROR 022 -- undefined function called
- fn_stmt.sno — oracle-unrunnable: ERROR 022 -- undefined function called
- idx_in_assign_lhs.sno — oracle-unrunnable: ERROR 235 -- subscripted operand is not table or a
- idx_multi.sno — oracle-unrunnable: ERROR 235 -- subscripted operand is not table or array
- idx_nested.sno — oracle-unrunnable: ERROR 235 -- subscripted operand is not table or array
- idx_simple.sno — oracle-unrunnable: ERROR 235 -- subscripted operand is not table or array
- kw_lcase.sno — oracle-unrunnable: ERROR 208 -- keyword value assigned is not integer
- kw_maxlngth.sno — oracle-unrunnable: ERROR 287 -- value assigned to keyword maxlngth is too s
- unary_assign.sno — oracle-unrunnable: ERROR 022 -- undefined function called
- unary_indirect.sno — oracle-unrunnable: ERROR 239 -- indirection operand is not name
- unary_not.sno — oracle-unrunnable: ERROR 069 -- break argument is not a string or expression

## Oracle process failure (6 files)
The oracle itself could not deliver an answer — nothing to record under any class.
- cf_bare_goto.sno — oracle-unrunnable: rc=1, stderr "No END statement found in source file(s)." (0 stdout bytes)
- cf_goto_f.sno — oracle-unrunnable: rc=1, same "No END statement found" signature as cf_bare_goto.sno
- cf_goto_u.sno — oracle-unrunnable: rc=1, same "No END statement found" signature as cf_bare_goto.sno
- cf_goto_sf.sno — oracle-unrunnable: rc=1, ERROR 234 -- syntax error: goto field incorrect (chained `:S():F()` goto field rejected before END is ever reached)
- cf_label_assign.sno — oracle-unrunnable: TIMEOUT (60s) — `LOOP x = x + 1 :S(LOOP)` is an unconditional infinite loop by construction; the probe is for the label/goto parse shape only, never meant to run to completion
- cf_loop.sno — oracle-unrunnable: TIMEOUT (60s) — same infinite-loop-by-construction shape as cf_label_assign.sno

FINDING candidate, not investigated further by this row: `cf_bare_goto`/`cf_goto_f`/`cf_goto_u` all fail with an
identical, generic "No END statement found" even though each contains an ordinary bare/failure-only goto AND a
literal `END` token, while the structurally closest comparison available (`cf_goto_sf`, whose `END` is likewise
a labeled line and a valid goto target) instead fails on its own unrelated goto-field syntax before ever reaching
END-resolution — so it doesn't rule the hypothesis in or out. Whether the common thread is "the goto's target
label is a line containing nothing but END" is a real, MEASURED-but-unminimized lead, not a confirmed cause —
worth its own row if anyone wants the SPITBOL loader's actual behavior here.

— seat07, 2026-08-29, task `snobol4-parser-suite-zero-ref`
