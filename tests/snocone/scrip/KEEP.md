# KEEP.md — tests/snocone/scrip

Per `tests-consolidate-snocone` (parent: `corpus-suites-consolidation`). `sm_lower.sc` stays
loose, deliberately.

## Why

This is not a corpus regression test at all — per this directory's own `README.md`, it is a
Snocone re-implementation of a SCRIP runtime C component (`src/runtime/x86/sm_lower.c`), written
as "a human-readable specification of each component's behaviour and a stepping stone toward
Milestone 2 (compiler self-hosting)." It is source code, not a program demonstrating a language
feature against pinned expected output, and folding it into a banner-block suite would misrepresent
what it is.

⛔ **CORRECTED 2026-09-12 (hq_B) — the two reasons this paragraph used to give were both false.** It
said the file has "an associated test driver (`sm_lower_test.sc` / `sm_lower_test.ref`, invoked via
the special `--sc-run` / `--sc-check` flags, not the standard `--run`/`--dump-ast`)". Measured on
SCRIP `74e41757a`: **there is no `sm_lower_test.sc` in this directory** (it lives in
`SCRIP/bootstrap/tests/`, with different content), and **`--sc-run`/`--sc-check` do not exist** —
`grep -c 'sc-check\|sc-run' src/driver/scrip.c` is 0, and the driver has no unknown-flag diagnostic,
so both spellings die as `cannot open '--sc-run'`. The file is still a keeper, on the reason above;
what is gone is a justification built on a driver flag and a sibling that were not there. ⭐ A
rationale citing a CAPABILITY needs a re-measure date, not just an author date — the same lesson
`tests/icon/KEEP.md` records against its own retired "no oracle exists" entry.

## The file

| file | reason |
|---|---|
| sm_lower.sc | self-hosting source (not a test), tracked separately in `GOAL-SNOCONE-SM-LOWER.md`; its own smoke output is pinned beside it as `sm_lower.ref` |

## Re-running this classification

Re-read this directory's own `README.md` rather than trusting this table blind, per this
project's standing rule that a fast-moving tree makes yesterday's board stale within hours.
