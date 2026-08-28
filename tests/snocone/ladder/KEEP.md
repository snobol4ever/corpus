# KEEP.md — tests/snocone/ladder

Per `tests-consolidate-snocone` (parent: `corpus-suites-consolidation`). All 66 `.sc` probes
under `prog/` stay loose, deliberately — this is not a corpus regression suite in the
`parser.sc`/`corpus.sc` sense, and folding it into the banner-block suite format would be
inappropriate, not just extra work.

## Why this family is categorically different

`ladder/` is a self-contained, standalone **diagnostic/bug-hunting harness** (see `FINDINGS.md`,
`LADDER.tsv`, `run.sh`), not a fixed set of "known good" programs with pinned expected output:

- **Bespoke oracle selection per probe.** `run.sh` grades each probe against SPITBOL, normally via
  `--transpile | sbl`, but falls back to a hand-written `<name>.oracle_ref.sno` when the
  transpiler itself is known-broken for that construct (documented as D1 in `FINDINGS.md`: every
  real-literal `.sc` crashes `--transpile`). A generic suite conversion has no equivalent of this
  per-entry oracle-source switch.
- **Some probes carry their own stdin** (`<name>.in` files, read by `run.sh` when present) — this
  is the "genuinely stdin/file-driven" carve-out this row's own GOAL text names explicitly.
- **The harness's job is to have open, active FAILING entries.** `FINDINGS.md` documents 5 live,
  unfixed defects (D1–D5: transpiler segfaults on real literals; pattern-match value-in-expression
  drops/bombs; unanchored-FENCE and post-ABORT unwind corruption; spurious transpiler blank lines)
  discovered *through* this exact ladder. A `byte-equal-or-no-delete` suite conversion assumes the
  original's current verdict is the thing worth preserving going forward; here the open defects
  are the point, and get tracked in `FINDINGS.md`/`LADDER.tsv`, not in a `.ref` file.

## A pre-existing issue, noted but not fixed here (out of this row's scope)

`run.sh` hardcodes `/home/claude/SCRIP`, `/home/claude/x64`, `/home/claude/ladder` — this predates
the D-17 PORTABLE-HOME convention (root `CLAUDE.md`) and does not currently run as committed on a
non-`/home/claude` seat. Whoever next actually uses this ladder for bug-hunting will need to fix
those three paths (derive from `$0`/`S4E_HOME` like the rest of the codebase) before `bash
ladder/run.sh` works at all. Flagging rather than silently leaving a broken script undocumented;
not fixing it here since this row's scope is file consolidation, not general script hygiene.

## The 66 files

```
alt_eval.sc amp_seq.sc arith_add.sc arith_muldiv.sc arith_prec.sc arith_unary.sc array_basic.sc
augop.sc builtin_str.sc capture_chain.sc capture_feed.sc cmp_fail.sc cmp_infix.sc cmp_lex.sc
cmp_num.sc comments.sc concat.sc ctl_break.sc ctl_continue.sc ctl_dowhile.sc ctl_for.sc ctl_if.sc
ctl_switch_default.sc ctl_switch.sc ctl_while.sc cursor_capture.sc datatype.sc empty_stmt.sc
fn_basic.sc fn_freturn.sc fn_local.sc fn_nreturn.sc fn_recur.sc goto_basic.sc hello.sc
ident_differ.sc idx_multi.sc indirect.sc integ_fib.sc integ_wordcount.sc lit_int.sc
lit_keyword.sc lit_real.sc lit_string.sc multi_assign.sc nul_parens.sc pat_abort.sc pat_alt.sc
pat_arbno.sc pat_basic.sc pat_capture.sc pat_defer.sc pat_fence.sc pat_immed.sc pat_pos.sc
pat_prims.sc pat_recursive.sc pat_replace.sc pat_strvar.sc struct_basic.sc table_basic.sc
tilde_bin.sc unary_interro.sc unary_name.sc unary_neg.sc vlist.sc
```

## Re-running this classification

Re-derive from `run.sh`'s own oracle-selection logic and `FINDINGS.md`'s open-defect list rather
than trusting this table blind, per this project's standing rule that a fast-moving tree makes
yesterday's board stale within hours.
