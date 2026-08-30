# csnobol4_triage — probe_loose consolidation status

⭐ **Re-created 2026-08-29 (seat08)**: this directory's own `KEEP.md` did not survive the `probe/` →
`tests/snobol4/probe_loose/` mega-relocation (`corpus c06960a1`, Lon's direct total-conversion order) —
recreated here rather than left undocumented, since the investigation history below is real and would
otherwise be lost. Original history: first surveyed 2026-08-27 (seat07), all 9 original witnesses from
`FINDING-2026-08-27-seat06-csnobol4_suite-triage-eight-classes-three-are-not-scrip-bugs.md`.

## Converted (6 of 9, as of 2026-08-29) — `tests/snobol4/probe/csnobol4_triage.{sno,ref}`

`content_after_end` and `lowercase_keyword` converted 2026-08-27 (seat07). `missing_include_target`,
`ord_unimplemented`, `dump_unimplemented`, and `input_eof_hang` (+ its `.dat` companion, now living
beside the suite file itself for `run_suite_entry`'s own companion-copy mechanism at grading time)
converted 2026-08-29 (seat08, row `suite-harness-argv-echoes-a-mktemp-path-so-diagnostic-programs-
cannot-be-graded`) — these four had no `.ref` at all and were blocked because the harness invoked
`scrip`/the oracle with a full path under a fresh `mktemp` directory, and each one's diagnostic echoes
its own argv verbatim (an `ERROR NNN` line, or `&FILE`), so no static `.ref` could ever match. Fixed at
the harness level (`corpus_suite_harness.py`); `.ref` for these four hand-captured from the now-stable,
canonically-named oracle output (SCRIP genuinely disagrees with the oracle on all four — their own
original, still-open, unrelated defects — so all four convert as XFAIL, same precedent as
`content_after_end`/`lowercase_keyword`). `input_eof_hang` additionally needed the harness's
`convert_one()` to copy its `.dat` companion into the conversion-verification candidate's temp dir (a
separate, independent gap the same row's fix also closed) and a new `_companion_files()` regex for
SNOBOL4's `INPUT(...)`/`OUTPUT(...)` syntax (the existing patterns only covered `-INCLUDE`/`$include`/
Icon `open()`). Full detail: `.github/FINDING-2026-08-29-seat08-suite-harness-argv-mktemp-path-fixed-
plus-companion-detection-gap.md`. Verified stable across 5+ repeated fresh-`mktemp` runs.

Known, pre-existing, unrelated artifact (unchanged by any of the above): `python3 corpus_suite_harness.py
run` reports `lowercase_keyword`'s m3 arm as XPASS, not a stale marker — `classify()` compares stdout
text only, never returncode, so two refusals that both produce empty stdout trivially compare equal.
m4's XFAIL is the meaningful signal for that entry.

## Blocked on `-INCLUDE` (no suite-format representation) — same class as `gim_double_include_once_control`

- **`include_trailing_space.sno`** + **`include_trailing_space_lib.sno`** — tests that scrip takes a
  quoted `-INCLUDE` argument's trailing space literally (looks for a file named with the space) while
  SPITBOL trims it. The two files MUST stay under this exact pair of names — the includer's `-INCLUDE
  "include_trailing_space_lib.sno "` string is what's being tested, and renaming the sidecar would
  silently change what's being probed. Last confirmed current (2026-08-29, seat07): oracle prints
  `included ok` (rc=0), scrip fails to open the include (rc=1). Same genuine, still-open format gap as
  `probe_loose/gimpel/KEEP.md`'s `gim_double_include_once_control.sno` — a suite entry has no `-INCLUDE`
  concept. Left loose.

## Genuinely two stacked defects, not one — needs a fix (or at least a FINDING), not a conversion

- **`setexit_label_pruned.sno`** — the ORIGINAL documented defect (last confirmed real 2026-08-29,
  seat07): a label reached only via `SETEXIT(.label)` gets pruned from emission as unreachable, but
  mode-4's `__gva_names` address table still references it — `gcc`/`ld` fails to LINK (`undefined
  reference to LBL__eh35`), an m3-vs-m4 divergence (mode-3's in-process binary papers over the missing
  symbol). **Also**, mode-3 does NOT reach far enough to exercise the documented bug at all: `:(CONTINUE)`
  (SPITBOL's "resume from the point after the last error" construct) is not implemented as that special
  form in scrip — it's treated as an ordinary `GOTO` to a label literally named `CONTINUE`, which doesn't
  exist, and dies before ever reaching `eh35`. Full writeup, both defects: `.github
  FINDING-2026-08-29-seat07-setexit-continue-construct-unimplemented-masks-a-second-defect.md`.
  Converting this witness as-is would pin the WRONG defect's signature under a name that says it's about
  label pruning. Needs `:(CONTINUE)` support landing first, or the witness rewritten to reach `eh35` some
  other way. Left loose, not converted, not guessed at.
