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

## UPDATE 2026-08-27 (seat16, this session) — hq_P ruling `ruling-cn-donewhen-yes-to-keep-exclusion-convert-the-miss`

Three more `.err_sno` files exist beyond `cn_udc_closed`, previously undocumented
anywhere (hq_P: "THE .err_sno FILES ARE THE MOST IMPORTANT THING... a guard that
cannot fail, which means it is not measuring"). Same shape as `cn_udc_closed` --
no `.ref`, `.err_sno` extension dodges this row's DONE-WHEN filter (`-name '*.sno'`)
by construction, not by anyone's decision:

- `cn_clear_unseal.err_sno` -- witnesses a documented, PRE-EXISTING CN-2 defect
  (measured s148, per its own header comment): `CLEAR()` silently un-seals a
  declared constant instead of erroring.
- `cn_read_before.err_sno` -- reads `&NEVERSET` before assignment (expected-error
  witness).
- `cn_reseal.err_sno` -- reassigns `&C` twice (expected-error witness).

⛔ **Per hq_P's ruling, whether `.err_sno` belongs inside this row's DONE-WHEN
filter is an open question, explicitly NOT decided here** -- asked of hq_P
directly (`s4e_msg.sh ask cn-err-sno-in-done-when`, non-blocking), not decided
unilaterally. Widening the filter would silently move a denominator without an
attributed commit -- exactly the class of mistake this file exists to prevent.

`cn_defer_pushcounter_capture.sno`+`.ref` -- **hq_P ruled CONVERT IT** ("a normal
convertible pair, in none of the exclusions... a plain miss"). Re-verified fresh
before converting, per this project's VERIFY-BEFORE-QUOTE / PULL-BEFORE-TRUST
discipline, and **the ruling no longer matches the tree**: as of this session
the file does not even parse.
```
$ ./scrip probe/cn/cn_defer_pushcounter_capture.sno < /dev/null
snobol4:12: error: missing END statement
scrip: 1 parse error(s) -- no code generated
```
rc=1, identical under `--compile`. An `END` statement is plainly present in the
source (line 11) -- this reads as a real parser defect (the file's own
`nPush()`/`pushc()`/`*&Parse5`/`ARBNO` construct is unusual enough to be worth a
fresh look), not a stale characterization. **Not converted** -- the harness's own
byte-equal-or-no-delete law refuses a witness that doesn't parse, and forcing it
would be exactly the "correct procedure, false premise" class this project has
been bitten by before. Left loose, reported back to hq_P/hq_C rather than acted
on against current evidence (the two-HQ interlock: a wrong ANSWER is hq_C's lane).

## Ref-less, pre-existing, not minted here

`cn_arbno_static_classic.sno`, `cn_const_chain_classic.sno` — no matching `.ref`
exists for either (predates this task). Self-checking programs (`:S(Y)F(N)` +
`OUTPUT`), but the harness's convert path requires an actual `.ref` to grade
against; not fabricating one. Out of scope for this row.

## Machine-readable exception list (DONE-WHEN mirror)

⛔ Mirrors `probe/conformance/KEEP.md`'s fix (SCRIP `f3dc4672a`) -- this row's
DONE-WHEN now greps this section, not the prose above, for `- <path>` lines. Add
a line here in the SAME edit that adds a file to this KEEP.md; remove one here in
the SAME edit that converts a file out of it.

- probe/cn/cn_udc_closed.err_sno
- probe/cn/cn_clear_unseal.err_sno
- probe/cn/cn_read_before.err_sno
- probe/cn/cn_reseal.err_sno
- probe/cn/cn_defer_pushcounter_capture.sno
- probe/cn/cn_defer_pushcounter_capture.ref
- probe/cn/cn_arbno_static_classic.sno
- probe/cn/cn_const_chain_classic.sno
