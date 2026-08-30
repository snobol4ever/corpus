# Files kept loose, deliberately not suite-converted

`corpus_suite_harness.py convert-blocks` requires every entry's ORIGINAL file to be green (PASS)
on both m3 and m4 before it will convert it — this is deliberate, matching the SNOBOL4-side
`convert` path exactly (byte-equal-or-no-delete cannot prove anything about a file that is not
green to begin with). 58 files stay loose for that reason, in three categories:

## 1. Stdin-bearing tests (5 files: read1-4, pb35)

`read1.pas`/`read2.pas`/`read3.pas`/`read4.pas`/`pb35.pas` (each with a paired `.ref` and a `.in`
stdin companion) read from standard input. The suite format has no stdin-input concept by deliberate,
permanent ruling (hq_C, 2026-08-24, on the identical SNOBOL4-side case — `cross`/`word1-4`/
`wordcount`): a one-line-per-entry encoding would need a fourth, nested, escaped format layer,
and a truncated/mis-split input fails silently. **Every stdin-bearing test stays loose files
PERMANENTLY, by ruling, not by omission.** These five continue to be graded exactly as before —
`test_gate_pascal_m3.sh`/`test_gate_pascal_m4.sh`'s loose-file loop already reads `$name.in` as
stdin when present.

⭐ **Confirmed current as of the master consolidation (seat04, 2026-08-29/30):** `util_build_master_suite.py
--lang pascal` independently reaches the same conclusion — all 5 are EXCLUDED LOUDLY (`ALL.excluded.txt`),
never silently absorbed, matching this ruling exactly. `pb35` was added to this list after being found by a
`read`/`readln`/`eof`/`eoln` sweep, not by its filename (unlike `read1`-`4`, its name gives no hint) — its
`.ref` had also been silently captured against `/dev/null` rather than its own documented input; both the
missing `.in` and the wrong `.ref` are fixed (corpus `979c8a006`). Worth re-sweeping by content, not name, if
this list is ever revisited — a filename-based assumption is exactly what missed `pb35` the first time.

## 2. Intermittent SIGSEGV under m4 — ✅ NOW ROWED as `pascal-m4-intermittent-segv-layout-sensitive` (hq_C 2026-08-28); the set is LARGER than 2

⛔ **This section read "NEW finding, not yet rowed" for a full day.** seat02's write-up below was correct and complete; what was missing was a queue row. **"Not yet rowed" in a KEEP.md is a note to nobody** — this file is read by whoever next edits this directory, the queue is read by the picker. Rowed now.

⭐ **UPDATED CENSUS (hq_C 2026-08-28, measured):** the witnesses are **`pb30`, `boolmix`, `boolchain`** — `boolmix` and `boolchain` are NEW since seat02's pass. `sieve` passed 3/3 in that sample, which is **low crash probability, not evidence of a fix**. `test_gate_pascal_m4.sh` itself reports a different number every run (PASS=142/143/144/145/144 over five consecutive runs, unchanged tree and binary), so **no single-run Pascal m4 figure is trustworthy**. All 17 suite families stay constant at 96/0 — the instability is entirely in the loose set.

⛔ **`-no-pie` IS NOT THE CURE.** Identical `.o` linked both ways, 12 runs each: `boolmix` 12/12 PIE vs 9/12 no-PIE; `boolchain` 6/12 vs 2/12; `pb30` 1/12 vs 1/12. **Both modes are non-deterministic** — the flag shifts the probability and eliminates it for none. Linking `-no-pie` would make the gate flake less often, which is strictly worse than flaking visibly. See `FINDING-2026-08-28-hq_C-the-pascal-m4-gate-cannot-measure-it-reports-a-different-number-every-run.md`.

### seat02's original finding (2026-08-27), unchanged

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
2026-08-27): `aa6.pas`, `aggloc2.pas`, `alias.pas`, `arr2dtype.pas`, `arr2dtype3.pas`,
`arrparam.pas`, `boolarg.pas`, `boolassign.pas`, `boolchain.pas`, `boolidx.pas`, `boolmix.pas`,
`boolnot.pas`, `boolptr.pas`, `char3.pas`, `deep5.pas`, `downto1.pas`, `downto2.pas`,
`enum2.pas`, `flatnoarg.pas`, `forward1.pas`, `goto2.pas`, `matmul.pas`, `nest2.pas`,
`nestcount.pas`, `nested.pas`, `nested_vp_writeback.pas`, `nestfunc.pas`, `nestrec.pas`,
`nestshadow.pas`, `nestvar.pas`, `nestvar2.pas`, `nestvar3.pas`, `patchtable.pas`, `pb31.pas`,
`pb32.pas`, `pb33.pas`, `pb34.pas`, `pb35.pas`, `pb37.pas`, `pb40.pas`,
`rec_local_collision.pas`, `recursion.pas`, `swap.pas`, `varframe.pas`, `varmix.pas`,
`varparam.pas`, `vartrans.pas`, `vparam_field_then_whole.pas`, `vparam_field_write.pas`,
`vparr.pas`, `vpfld.pas`, `withfwd1.pas`.

These are exactly `pascal-restore-prezeta`'s territory (the ζ-window regression-restoration row),
not this row's to fix. Consolidating them into a suite before that row's bisect starts would
require either faking a conversion around a non-green original (defeats byte-equal-or-no-delete)
or teaching the harness to convert non-green entries (a real behavior change to shared,
load-bearing tooling, out of scope for a consolidation pass). **Convert these once
`pascal-restore-prezeta` lands** — per this project's own sequencing interlock ("Pascal converts
either before this bisect starts or after it lands, never during"), converting them now, mid a
not-yet-started bisect, would also be the wrong order for that row's own STEP 2 denominator.

## 4. FPC-oracle regen exceptions (2 files: pb37, read3) — row `pascal-refs-regen-from-fpc-oracle`

hq_C ruled (2026-08-28) `fpc -Miso` as the correctness oracle and default integer field width
moves 10→11 to match it (one constant, `src/runtime/by_name_dispatch.c`'s `__pas_write`/
`__pas_writeln` handler). All 56 other loose pairs regenerated clean against `fpc -Miso` output
(measured this session: 51 whitespace-only + 5 already-identical, zero value disagreements —
refuting the ruling's own estimate of "4 substantive diffs", which traces to its dry run not
feeding the four stdin-bearing tests their `.in` files). These two `fpc -Miso` cannot produce a
ground truth for, so their `.ref` stays the pre-existing, SCRIP-computed value (unaffected by the
width move — neither prints a plain unspecified-width integer that a width bump would touch):

- **`pb37.pas`** — `fpc -Miso pb37.pas` fails to compile: `Fatal: Unknown compilerproc
  "fpc_write_text_enum_iso"`. FPC's ISO-mode runtime library is missing the support routine for
  `writeln` on an enum value directly (`writeln(chartp[ch])` where `chartp: array[char] of chtp`).
  A real gap in this fpc build's `-Miso` RTL, not a SCRIP or ref defect.
- **`read3.pas`** — compiles, but crashes at runtime: `Runtime error 106` (invalid numeric
  format) inside the `while not eof do read(i)` loop reading `read3.in` ("1 2 3 4 5\n"). FPC's
  ISO-mode `eof`/numeric-`read` is strict about the trailing newline after the last token in a
  way SCRIP's implementation is not; SCRIP's own answer (15, the correct sum) stays the ref.
  Reproduced directly (`fpc -Miso read3.pas && printf '1 2 3 4 5\n' | ./read3` → `Runtime error
  106`), not a dry-run artifact.

## 5. Suite-entry ref provenance — see `crosscheck/PROVENANCE.md`

The 96 blocks in `crosscheck/` are not all oracle-derived: **91 are, 4 are `ISO-DELEGATED-SCRIP-DEFAULT`
(real-number formatting, ruled by Lon via CEO-72/CEO-74 2026-08-28), and 1 (`pb:1 pb36`) has no oracle at all.**
Full provenance, sources and the measured audit: `crosscheck/PROVENANCE.md`.

⛔ **§4 above says the `pb37`/`pb36` enum-write failure is "a real gap in this fpc build's `-Miso` RTL, not a
SCRIP or ref defect". That characterization is ASSERTED, NOT SOURCED**, and the ISO conformance question is
open in both directions — see `crosscheck/PROVENANCE.md` and row
`pascal-writeln-enum-iso-conformance-unresolved`. Do not cite §4 as settled.

