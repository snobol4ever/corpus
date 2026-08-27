# KEEP — files that stay loose, deliberately

Per this family's consolidation task (`probe-consolidate-m1-and-small`, GOAL text:
"Data inlines in the suite entries; ONLY genuinely stdin/file-driven tests stay
standalone, marked in a KEEP.md beside them").

## Gate-locked (11 witnesses + 1 .err_sno) — permanent, not a scope gap to close casually

`SCRIP/scripts/test_gate_udc.sh` (the CN-4 invariant gate) reads these by hardcoded
exact filename, compiling each standalone with per-witness custom logic: separate
stdout/stderr capture, two `SCRIP_CONST_T1` env-var arms, and substring checks on
error text. That is more than the one-line/banner-block suite format's "run entry,
diff against .ref" model supports — a suite entry has no path to a standalone
`.sno` file for `$SCRIP --compile` to open, and no way to express two env-var arms
or a stderr-silence assertion. Migrating these would mean rewriting the gate
itself, which is its own deliberate task (risk to a "must never regress"
invariant), not a side effect of a corpus reorg:

`cn_udc_declare` · `cn_udc_reopen` · `cn_t1_eval` · `cn_t2_eval_boundary` ·
`cn_t1_scalar_fold` · `cn_t1_eval_undecl` · `cn_eval_fails_not_aborts` ·
`cn_indirect_is_ordinary_var` · `cn_indirect_rewrite` · `cn_indirect_seal` ·
`cn_udc_declare`/`cn_udc_reopen` (both `.sno`+`.ref`) · `cn_udc_closed` (`.err_sno`
only, no `.ref` — deliberate repo convention for error witnesses, see the gate's
own header comment).

## Ref-less, pre-existing, not minted here

`cn_arbno_static_classic.sno`, `cn_const_chain_classic.sno` — no matching `.ref`
exists for either (predates this task). Self-checking programs (`:S(Y)F(N)` +
`OUTPUT`), but the harness's convert path requires an actual `.ref` to grade
against; not fabricating one. Out of scope for this row.
