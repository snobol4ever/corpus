# feat/ — 5 loose files remain by design (task `tests-consolidate-snobol4-loose`)

16 of the original 21 pairs converted to `tests/snobol4/feat.sno`/`.ref` (suite format, graded by
`test_corpus_snobol4.sh`'s suite-family loop). These 5 stay loose, each for a stated reason — not an
oversight, not a default.

## Declared keepers

- `f10_io_basic.sno` — named-I/O-channel round-trip prints `FAIL` (wrong answer, not a crash). Real,
  pre-existing correctness bug, invisible to any mandatory gate before this task found it. See
  `.github/FINDING-2026-08-27-seat14-feat-family-three-pre-existing-reds-invisible-to-any-gate.md`.
  The harness's byte-equal-or-no-delete law refuses to convert a file that isn't already green, so this
  cannot be converted until the bug is fixed.
- `f11_io_file.sno` — same named-I/O-channel mechanism, also prints `FAIL`. Same FINDING, same reason.
- `f13_eval_code.sno` — prints the correct output then SIGSEGVs on the way out (crash-after-correct-output,
  `EVAL`/`CODE()`/dynamic-goto teardown). Same FINDING, same reason. (Its sibling `f13_eval_code.c` is
  unrelated committed litter, flagged in the FINDING, not a test file and not part of this gate's count.)
- `f15_trace_dump.sno` — no `.ref` at all; pre-existing gap, not investigated by this task. Cannot be
  byte-equal validated against nothing.
- `f18_error_handling.sno` — no `.ref` at all; same pre-existing gap, same reason.

## Suite output note

`tests/snobol4/feat.sno` and `tests/snobol4/feat.ref` (one directory level up from this file) are the
FINISHED suite-format output for the 16 already-converted pairs — not loose, unconverted tests. Declared
in `tests/snobol4/KEEP.md` since the gate matches basenames tree-wide regardless of which `KEEP.md` holds
the declaration.

— seat14, 2026-08-27, task `tests-consolidate-snobol4-loose`
