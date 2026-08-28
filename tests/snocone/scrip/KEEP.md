# KEEP.md — tests/snocone/scrip

Per `tests-consolidate-snocone` (parent: `corpus-suites-consolidation`). `sm_lower.sc` stays
loose, deliberately.

## Why

This is not a corpus regression test at all — per this directory's own `README.md`, it is a
Snocone re-implementation of a SCRIP runtime C component (`src/runtime/x86/sm_lower.c`), written
as "a human-readable specification of each component's behaviour and a stepping stone toward
Milestone 2 (compiler self-hosting)." It is source code with an associated test driver
(`sm_lower_test.sc` / `sm_lower_test.ref`, invoked via the special `--sc-run` / `--sc-check`
flags, not the standard `--run`/`--dump-ast` this row's suite format grades), not a program
demonstrating a language feature against pinned expected output. Folding it into a banner-block
suite would misrepresent what it is.

## The file

| file | reason |
|---|---|
| sm_lower.sc | self-hosting source (not a test), tracked separately in `GOAL-SNOCONE-SM-LOWER.md` |

## Re-running this classification

Re-read this directory's own `README.md` rather than trusting this table blind, per this
project's standing rule that a fast-moving tree makes yesterday's board stale within hours.
