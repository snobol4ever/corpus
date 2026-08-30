# tests/snobol4/ — top-level stray declarations (task `tests-consolidate-snobol4-loose`)

Files directly under `tests/snobol4/` (not inside any subdirectory) that the gate's `*.sno` glob
catches but that are not loose, unconverted tests.

- `feat.sno` (+ `feat.ref`) — the FINISHED suite-format output for 16 of `feat/`'s original 21 pairs,
  produced by this task via `corpus_suite_harness.py convert`, graded by `test_corpus_snobol4.sh`'s
  suite-family loop. It is the converted PRODUCT, not something still needing conversion. See
  `tests/snobol4/feat/KEEP.md` for the 5 pairs that stayed loose and why.

— seat14, 2026-08-27, task `tests-consolidate-snobol4-loose`
