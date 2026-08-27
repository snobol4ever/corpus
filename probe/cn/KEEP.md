# KEEP — files that stay loose, deliberately

Per this family's consolidation task (`probe-consolidate-m1-and-small`, GOAL text:
"Data inlines in the suite entries; ONLY genuinely stdin/file-driven tests stay
standalone, marked in a KEEP.md beside them").

## UPDATE 2026-08-27 (seat16) — 10 of 11 gate witnesses migrated into the shared suite

`SCRIP/scripts/test_gate_udc.sh` used to read all 11 witnesses below by hardcoded
exact filename. Rewrote it instead: `corpus_suite_harness.py` gained an `extract`
subcommand (materialize one named suite entry back into a standalone `.sno`/`.ref`
pair) and the gate now calls that to get its per-witness standalone file, then
does exactly the same custom logic as before (separate stdout/stderr capture, two
`SCRIP_CONST_T1` env-var arms, substring checks on error text) against the
extracted file. The suite file (`tests/snobol4/probe/cn.sno`/`.ref`) is the one
source of truth; the gate is just another reader of it now, not a second copy of
the witness text.

`cn_t1_eval`/`cn_t2_eval_boundary`/`cn_t1_scalar_fold` needed one extra check
beyond the harness's normal byte-equal-or-no-delete (which only exercises the
DEFAULT `SCRIP_CONST_T1` arm): hand-verified original-vs-extracted under BOTH
`SCRIP_CONST_T1` arms, both media, before their loose files were deleted — all
six combinations matched exactly. CN-4 gate re-verified 40/40 (unchanged from
before this migration) after the rewrite.

Migrated (now in the shared suite, loose files deleted): `cn_udc_declare`,
`cn_udc_reopen`, `cn_t1_eval`, `cn_t2_eval_boundary`, `cn_t1_scalar_fold`,
`cn_t1_eval_undecl`, `cn_eval_fails_not_aborts`, `cn_indirect_is_ordinary_var`,
`cn_indirect_rewrite`, `cn_indirect_seal`.

## Still gate-locked, permanent — `cn_udc_closed` (`.err_sno`, no `.ref`)

Unlike the ten above, this one doesn't fit even the *extract* model: it has no
`.ref` at all (deliberate repo convention for error witnesses that both print and
error — see the gate's own header comment) and is graded by stream-separated
m3==m4 comparison, not by diffing against oracle text. There's nothing for a
suite `.ref` line to hold. Stays a loose file, read directly by the gate.

## Ref-less, pre-existing, not minted here

`cn_arbno_static_classic.sno`, `cn_const_chain_classic.sno` — no matching `.ref`
exists for either (predates this task). Self-checking programs (`:S(Y)F(N)` +
`OUTPUT`), but the harness's convert path requires an actual `.ref` to grade
against; not fabricating one. Out of scope for this row.
