# Files kept loose, deliberately not suite-converted

`corpus_suite_harness.py convert-blocks` requires every entry's ORIGINAL file to be green (PASS)
on both m3 and m4 before it will convert it — this is deliberate, matching the SNOBOL4-side
`convert` path exactly (byte-equal-or-no-delete cannot prove anything about a file that is not
green to begin with). 58 files stay loose for that reason, in three categories:

## 1. Stdin-bearing tests (4 files: read1-4)

`read1.pas`/`read2.pas`/`read3.pas`/`read4.pas` (each with a paired `.ref` and a `.in` stdin
companion) read from standard input. The suite format has no stdin-input concept by deliberate,
permanent ruling (hq_C, 2026-08-24, on the identical SNOBOL4-side case — `cross`/`word1-4`/
`wordcount`): a one-line-per-entry encoding would need a fourth, nested, escaped format layer,
and a truncated/mis-split input fails silently. **Every stdin-bearing test stays loose files
PERMANENTLY, by ruling, not by omission.** These four continue to be graded exactly as before —
`test_gate_pascal_m3.sh`/`test_gate_pascal_m4.sh`'s loose-file loop already reads `$name.in` as
stdin when present.

## 2. Intermittent SIGSEGV under m4 — NEW finding, not yet rowed (2 files: pb30, sieve)

Discovered during this conversion pass: both `pb30.pas` and `sieve.pas` are reported green by a
single m3/m4 run, but a tight repeat loop (5x, same compiled binary, `SCRIP` unchanged) showed
**genuine non-determinism** — `pb30`: PASS,PASS,PASS,SIGSEGV,SIGSEGV; `sieve`: PASS,SIGSEGV,
SIGSEGV,PASS,PASS. Not a conversion artifact — reproduced directly against the standalone files.
Distinct from the already-tracked `pascal-m4-registered-dispatch-segv` (that row's witness,
`arrparam.pas`, crashes on the FIRST call deterministically; this is intermittent on unrelated
programs). See `FINDING-2026-08-27-seat02-pascal-m4-intermittent-segv-pb30-sieve.md`. Left loose
rather than force a lucky green run into the suite, which would just hide the flakiness inside a
regression-guard file instead of surfacing it.

## 3. Pre-existing failures — `pascal-restore-prezeta` territory (52 files)

Not green today on m3 and/or m4 (measured fresh, `tests-consolidate-pascal` session,
2026-08-27): `aa6`, `aggloc2`, `alias`, `arr2dtype`, `arr2dtype3`, `arrparam`, `boolarg`,
`boolassign`, `boolchain`, `boolidx`, `boolmix`, `boolnot`, `boolptr`, `char3`, `deep5`,
`downto1`, `downto2`, `enum2`, `flatnoarg`, `forward1`, `goto2`, `matmul`, `nest2`, `nestcount`,
`nested`, `nested_vp_writeback`, `nestfunc`, `nestrec`, `nestshadow`, `nestvar`, `nestvar2`,
`nestvar3`, `patchtable`, `pb31`, `pb32`, `pb33`, `pb34`, `pb35`, `pb37`, `pb40`,
`rec_local_collision`, `recursion`, `swap`, `varframe`, `varmix`, `varparam`, `vartrans`,
`vparam_field_then_whole`, `vparam_field_write`, `vparr`, `vpfld`, `withfwd1`.

These are exactly `pascal-restore-prezeta`'s territory (the ζ-window regression-restoration row),
not this row's to fix. Consolidating them into a suite before that row's bisect starts would
require either faking a conversion around a non-green original (defeats byte-equal-or-no-delete)
or teaching the harness to convert non-green entries (a real behavior change to shared,
load-bearing tooling, out of scope for a consolidation pass). **Convert these once
`pascal-restore-prezeta` lands** — per this project's own sequencing interlock ("Pascal converts
either before this bisect starts or after it lands, never during"), converting them now, mid a
not-yet-started bisect, would also be the wrong order for that row's own STEP 2 denominator.
