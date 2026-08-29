# csnobol4_triage — probe consolidation status

First survey of this directory (2026-08-29, seat07) — no KEEP.md/README existed before this. All 9
original witnesses come from `FINDING-2026-08-27-seat06-csnobol4_suite-triage-eight-classes-three-are-not-scrip-bugs.md`,
minimal repros of defects seat06 traced back to real `corpus/packages/snobol4/csnobol4_suite/` programs
(`sudoku.sno`, `openi.sno`, `openo2.sno`, `line.sno`, `include.sno`, `ord.sno`, `setexit7.sno`). That
larger suite may carry its own still-open issues tied to these same root causes — out of scope here,
flagged for whoever next touches `csnobol4_suite` directly.

Every witness re-verified fresh against the live oracle (`sbl -bf`) and current `scrip` (both modes where
relevant) before any disposition below — none of this was taken on the existing comments' word alone, per
this row's own standing discipline. Two real corrections to the original comments came out of that
re-verification (see `dump_unimplemented` and `setexit_label_pruned` below).

## Converted (2 of 9) — `tests/snobol4/probe/csnobol4_triage.{sno,ref}`

- **`content_after_end`** — SCRIP scans label text physically after a valid `END`; SPITBOL stops at
  `END`. Confirmed still current: oracle prints `hi` (rc=0), scrip refuses to compile at all (duplicate
  label). XFAIL, both modes — a genuine, still-open SCRIP defect.
- **`lowercase_keyword`** — both tools reject a lowercase `end` identically (corpus-dialect issue, not a
  SCRIP defect). XFAIL overall (m4 can't even compile it, a real `SKIP`-class non-green result), but
  **note for whoever next runs this suite**: `python3 corpus_suite_harness.py run` reports this entry's
  **m3 arm as XPASS** — not a stale marker, an artifact of `classify()`'s own instrument: it compares
  stdout text only, never returncode, so two refusals that both produce *empty* stdout trivially compare
  equal regardless of why either one failed. m4's XFAIL is the meaningful, real signal (scrip's `--compile`
  path never gets past the parse to produce any verdict at all); m3's "pass" proves nothing about
  correctness, just that neither tool printed anything. Left as-is rather than contorted to hide it — the
  underlying facts are honestly represented, this note exists so nobody "fixes" a marker that isn't wrong.

Both re-verified byte-equal both directions after conversion (`corpus_suite_harness.py`'s own on-disk
re-validation), then independently re-run from the final `tests/snobol4/probe/` location as a second pass.
Zero script consumers found for either original filename (repo-wide grep, `.github` included — the one hit,
the seat06 FINDING above, is frozen historical narration and correctly left untouched).

## Blocked on `-INCLUDE` (no suite-format representation) — same class as `gim_double_include_once_control`

- **`include_trailing_space.sno`** + **`include_trailing_space_lib.sno`** — tests that scrip takes a
  quoted `-INCLUDE` argument's trailing space literally (looks for a file named with the space) while
  SPITBOL trims it. The two files MUST stay under this exact pair of names — the includer's `-INCLUDE
  "include_trailing_space_lib.sno "` string is what's being tested, and renaming the sidecar (even to
  `.inc`, `gim_double_include_hang_A`'s precedent) would silently change what's being probed. Confirmed
  still current: oracle prints `included ok` (rc=0), scrip fails to open the include (rc=1). Same genuine,
  still-open format gap as `probe/gimpel/KEEP.md`'s `gim_double_include_once_control.sno` — a suite entry
  has no `-INCLUDE` concept, and authoring a sibling-free rewrite would mean writing new witness content,
  not converting existing content. Left loose.

## Blocked on HANG in a shared-suite context — genuinely unresolved, not attempted

- **`input_eof_hang.sno`** (+ its empty `.dat` companion) — `INPUT()` on an exhausted file never signals
  failure in scrip; the `:S(loop)` branch keeps succeeding forever. Confirmed still current and severe:
  `timeout 3s` produced **649,699 lines** of blank output before being killed. Oracle fails fast instead
  (`ERROR 116`, rc=0, no hang). This is a real, still-open SCRIP defect, but converting a HANG-class
  witness into a suite entry means every future run of the WHOLE `csnobol4_triage` suite pays this
  witness's full timeout, every time — the exact shape of concern `probe/fuzz`'s own blocker
  (`fuzz-nondeterminism-rootcause`) was minted over. Not measured for cross-run determinism the way fuzz's
  witnesses were (this session only ran it once, deliberately, under a tight timeout) — that measurement,
  not a guess either way, is the next step before converting. Left loose.

## Blocked — oracle output is source-path-dependent, can't be pinned as a suite `.ref`

Three witnesses whose oracle output embeds the SOURCE FILE'S OWN PATH (`&FILE`/`&LASTFILE` values, or an
inline `ERROR NNN` diagnostic naming the file being compiled) as part of the very text that would need
pinning into a frozen `.ref`. A suite entry is extracted into a fresh temp directory before every run
(`corpus_suite_harness.py`'s own documented contract), so a `.ref` built from the loose file's *original*
location can never match again post-conversion — not even if the underlying defect were fixed, since the
path itself would differ. Converting these correctly needs either a normalization step this harness
doesn't currently have, or hand-authored `.ref` content that deliberately doesn't include the path-bearing
line (changing what's being graded, not a mechanical conversion) — a design question, not decided here.
All three re-verified fresh, current oracle/scrip divergence unchanged from the original comments except
where noted:

- **`missing_include_target.sno`** — both tools refuse an `-INCLUDE` naming a file that exists nowhere in
  the repo (scrip: `cannot open include`, rc=1; oracle: `ERROR 285`, rc=1) — not a SCRIP-vs-oracle
  divergence at all, just not path-independent to pin.
- **`ord_unimplemented.sno`** — **comment corrected**: oracle does NOT simply succeed cleanly; it prints
  `ERROR 022 -- undefined function called` plus a full stats trailer (rc=0, softer failure mode, matching
  the original comment's own description) — that trailer is what carries the path. scrip fails harder,
  `Error 5 ... Undefined function or operation` (rc=1). **Also corrected**: the original comment called
  this "fatal parse-time" with "no output at all" — re-verified, `./scrip --compile` succeeds (rc=0) on
  this file; only mode-3 (`--run`) refuses, at what reads as an early semantic check, not the parser
  itself. `ORD` (char→ordinal) is unimplemented in both tools; per the original comment, likely a
  CSNOBOL4-only extension outside SCRIP's stated SPITBOL-semantics target, not a confirmed SCRIP gap.
- **`dump_unimplemented.sno`** — **comment corrected, real behavior change since it was written**: the
  comment says scrip's `&DUMP=1` is a silent no-op producing "zero output." Re-verified: scrip now DOES
  print a natural-variables dump section (`value = 1`) — it's the keyword-values dump section (the
  `&ANCHOR`/`&CASE`/.../`&TRIM` block, ~20 lines, oracle rc=0) that's still missing, not the whole
  feature. `&DUMP` is now a **partial** implementation, not an unimplemented no-op. Worth a fresh look by
  whoever owns `&DUMP` — this is closer to done than the file currently documents.

## Genuinely two stacked defects, not one — needs a fix (or at least a FINDING), not a conversion

- **`setexit_label_pruned.sno`** — the ORIGINAL documented defect (still real, reconfirmed): a label
  reached only via `SETEXIT(.label)` gets pruned from emission as unreachable, but mode-4's
  `__gva_names` address table still references it — `gcc`/`ld` fails to LINK
  (`undefined reference to LBL__eh35`), an m3-vs-m4 divergence (mode-3's in-process binary papers over
  the missing symbol). Reconfirmed exactly: `--compile` succeeds, the subsequent `gcc`+`ld` step fails
  with precisely that message.
  ⭐ **NEW, not in the original comment: mode-3 does NOT reach far enough to exercise the documented bug
  at all.** `:(CONTINUE)` — SPITBOL's construct for "resume from the point after the last error," valid
  only while handling one — is not implemented as that special form in scrip; scrip treats it as an
  ordinary `GOTO` to a label literally named `CONTINUE`, which doesn't exist, and dies with
  `Error 38 ... transfer to undefined label: CONTINUE` before ever reaching the `eh35` label this witness
  exists to test. The oracle correctly recognizes the construct and reports `ERROR 037 -- goto continue
  with no preceding error` (this witness deliberately invokes it outside error handling, by design, per
  the original comment) — a DIFFERENT, expected-by-design divergence that has nothing to do with the
  `&LASTNO`/emit-pruning defect the file was written to isolate. Full writeup, both defects:
  `.github FINDING-2026-08-29-seat07-setexit-continue-construct-unimplemented-masks-a-second-defect.md`.
  Converting this witness as-is would pin the WRONG defect's signature (the `:(CONTINUE)` failure) under
  a name that says it's about label pruning — misleading regardless of technical byte-equal correctness.
  Needs either construct support for `:(CONTINUE)` landing first, or the witness rewritten to reach
  `eh35` some other way, before this is honestly convertible. Left loose, not converted, not guessed at.

## Machine-readable exception list (mirrors `probe/conformance/KEEP.md`'s and `probe/cn/KEEP.md`'s fix)

⛔ These two KEEP.md files describe a `probe-consolidate-m1-and-small`-specific DONE-WHEN grep mechanism
that does NOT apply to `corpus-crosscheck-probe-total-conversion`'s own DONE-WHEN (confirmed by reading
both task files directly — the latter is a plain `find -name "*.sno" | wc -l`, no KEEP.md awareness, and
`csnobol4_triage` was never in `probe-consolidate-m1-and-small`'s own scope list either). Not mirroring
that mechanism here to avoid restating a claim this row's own DONE-WHEN doesn't actually honor. This
section exists only as a plain, greppable list for a human or future tooling change, not a live gate input:

- probe/csnobol4_triage/include_trailing_space.sno
- probe/csnobol4_triage/include_trailing_space_lib.sno
- probe/csnobol4_triage/input_eof_hang.sno
- probe/csnobol4_triage/input_eof_hang.dat
- probe/csnobol4_triage/missing_include_target.sno
- probe/csnobol4_triage/ord_unimplemented.sno
- probe/csnobol4_triage/dump_unimplemented.sno
- probe/csnobol4_triage/setexit_label_pruned.sno
