# PROVENANCE — corpus/benchmarks/pascal/

Three-bucket accounting per `corpus-import-pascal-bench-remainder`: every `.pas` present
in this directory, every resident source tree checked, and fbench's disposition. See
`README.md` for the fuller narrative (integer-width discipline, `perm.pas` frontier, the
Reproducing recipe). This file is the closable checklist; README is the story.

## Bucket 1 — Present, with source + license

| File | Source | License | Verified |
|------|--------|---------|----------|
| `bubble.pas` | Hennessy Stanford suite (via LLVM test-suite C descendant, `SingleSource/Benchmarks/Stanford`) | public domain (long-circulated) | byte-identical vs `fpc`, per README |
| `intmm.pas` | Hennessy Stanford suite | public domain | byte-identical vs `fpc`, per README |
| `perm.pas` | Hennessy Stanford suite | public domain | byte-identical vs `fpc` (SCRIP output diverges — tracked as PAS-FOR-RECURSE, not an fpc/import defect) |
| `queens.pas` | Hennessy Stanford suite (Wirth 8-queens) | public domain | byte-identical vs `fpc`, per README |
| `quick.pas` | Hennessy Stanford suite | public domain | byte-identical vs `fpc`, per README |
| `sieve.pas` | Byte-magazine Sieve of Eratosthenes lineage | public domain (classic) | byte-identical vs `fpc`, per README |
| `towers.pas` | Hennessy Stanford suite | public domain | byte-identical vs `fpc`, per README |
| `uplevel2.pas` | SCRIP-project-original — synthetic 2-level nested-procedure static-link/up-level-addressing stress test (not from any external suite; content is a minimal `p1/p2/p3` nesting summing `a` across a 30000×8000 loop). No external license applies — original work for this repo. | project-original | resident, predates this row |
| `uplevel3.pas` | SCRIP-project-original — same family, 3-level nesting (`p1/p2/p3/p4`) | project-original | resident, predates this row |
| `fbench.pas` | **NEW THIS ROW.** `Pascal-P5/sample_programs/fbench.pas` (`/home/resources/Pascal-P5/sample_programs/fbench.pas`) — John Walker's floating-point optical-raytracing benchmark (fourmilab.ch/fbench/), ported to Pascal by John Walker, Sept 2007. Header states: *"This program may be used, distributed, and modified freely as long as the origin information is preserved."* | permissive, origin-preserved (explicit in-file grant) | Compiled with `fpc -O2` + `{$mode objfpc}` prepended, run against its own `fbench.inp`; the 9 substantive numeric result lines (Marginal/Paraxial ray, spherical/coma/chromatic aberrations) are **byte-identical** to Pascal-P5's own bundled `fbench.cmp` — the only diff is P5-interpreter harness chrome (`P5 Pascal compiler vs. 1.4.x` / `Assembling/loading program` / `program complete`) that is printed by P5's own test runner, not by `fbench.pas` itself, so it's correctly absent from an `fpc`-only run. `fbench.ref` is the raw `fpc` stdout (no harness chrome). |
| `whet.pas` | **NEW THIS ROW.** `FPCSource/tests/bench/whet.pas` (`/home/resources/FPCSource/tests/bench/whet.pas`) — the classic portable Whetstone benchmark (Curnow & Wichmann, NPL, 1972; this is the widely-circulated multi-target Pascal port with `{$IFDEF}` blocks for VirtualPascal/Delphi/etc., none of which fire under plain `fpc`/`{$mode objfpc}`, so it compiles with zero extra `uses`). No separate license header is present in the file (FPC bundles it as a test-tree fixture, not FPC's own authored work); treated under the same long-standing free-redistribution custom that applies to every other Whetstone port in circulation — flag if a stricter standard is wanted later. | permissive by decades-long redistribution custom; no explicit grant found in-file (recorded, not assumed) | Compiled with `fpc -O2` + `{$mode objfpc}`, runs standalone (confirmed **zero** `readln`/`read(` calls — takes no stdin), completes in ~2s. **NOT given a `.ref`** — see Bucket 3. |

## Bucket 2 — Candidates found, deliberately skipped (with reason)

Every `.pas`/benchmark-shaped file seen in the two resident source trees that did **not**
get imported, and why:

**From `Pascal-P5/sample_programs/`** (P5's own conformance/demo suite — public domain per
the project author per `corpus-import-iso7185pat-p5`'s CEO-30 verification, but not
benchmark-shaped):
- `hello.pas` — trivial hello-world, not a benchmark.
- `roman.pas` — textbook roman-numeral demo ("program 4.7"), not a benchmark.
- `qsort.pas` — small string-quicksort demo, no timing/repeat mechanism, not a benchmark.
- `pascals.pas` — Wirth's Pascal-S meta-circular interpreter demo, not a benchmark.
- `basics.pas` — "TINY PASCAL BASIC", a BASIC-in-Pascal interpreter demo, not a benchmark.
- `startrek.pas` — the classic interactive Star Trek game, not a benchmark.
- `match.pas` — pattern-matching demo, not a benchmark. (`match.bas` alongside it is BASIC
  source, not Pascal at all — outside this accounting's scope entirely, noted so it isn't
  mistaken for an overlooked `.pas`.)
- `prime.pas` — headed "Sieve benchmark program reproduced verbatim from page 285 of BYTE
  magazine's January 1983 edition" — i.e. **another, independent port of the same Byte
  Sieve benchmark already resident as `sieve.pas`** (confirmed by diff: not byte-identical
  source, but same lineage/algorithm/magazine citation). Redundant with existing coverage;
  not part of this row's named targets (fbench/whet/dhrystone); left un-imported rather
  than duplicate the benchmark family. Revisit if a second independent Sieve port is
  ever wanted for cross-port comparison.

**From `FPCSource/tests/bench/`** (mixed bag — some are FPC's own internal compiler
regression fixtures, not general-purpose benchmarks):
- `bansi1.pp`/`bansi1mt.pp`/`bansi1.inc`, `bcase.pp`, `bdiv.pp` + `bdiv_{s32,s64,u16,u32,u64}.inc`,
  `bfloatfunc.pp`, `blea.pp`, `blists1.pp`/`blists1.inc`, `bmd5.pp`, `bval.pp` — confirmed
  (spot-checked `bcase.pp`, `bdiv.pp`) FPC-internal compiler codegen micro-tests: each
  defines its own `GetRealTime` harness helper and carries FPC-testsuite-only pragmas
  (e.g. `{ %OPT=-O2 }`) meant for FPC's own test runner, not general standalone benchmarks.
  Skipped as out of scope.
- `stream.pp` — genuine, well-known benchmark (STREAM memory-bandwidth, McCalpin 1991-2005,
  Pascal port by Daniel Mantione) with an explicit, fairly involved license (free to use/
  redistribute/modify for own use; publishing results requires STREAM Run Rules conformance
  and labelling — see the file's own header for full text, not reproduced here). **Not
  imported this row**: it `uses timer` (this directory's own `timer.pas` unit, not a
  standard FPC RTL unit), which would break this corpus's single-file-benchmark convention
  unless `timer.pas` is bundled alongside — that's a real, doable option, just out of this
  row's explicit scope (fbench/whet/dhrystone were the named targets). Left as a follow-up
  candidate, not a hard blocker.
- `pi.pp` — Pi-digit-computation benchmark; same `uses timer` dependency issue as `stream.pp`.
  Skipped for the same reason.
- `shortbench.pp` — FPC ShortString-operations micro-benchmark (`TestShortStr`); same
  `uses timer` dependency issue. Skipped for the same reason.
- `timer.pas`, `dmisc.pas` — support units consumed by the above, not benchmarks themselves.
  Not imported (nothing to import them for, since their consumers weren't imported either).
- `shootout/` — a full bundled copy of the "Computer Language Benchmarks Game" (formerly
  "Great Language Shootout") Pascal entries, per its own `README.txt`. Each file under
  `shootout/src/` would need its own individual license check (shootout entries are
  contributed per-author, historically BSD-ish but not uniform). A legitimately large task
  of its own — out of scope for this row, flagged as a candidate for a dedicated future row
  rather than silently dropped.

## Bucket 3 — Named-target dispositions (fbench / Whetstone / Dhrystone)

Per the task's explicit ask to resolve where Whetstone/Dhrystone actually live or record
that they're not resident:

- **fbench** — resident in `Pascal-P5/sample_programs/fbench.pas`. Imported this row (see
  Bucket 1). License clear, output deterministic and fpc-verified.

- **Whetstone** — resident in `FPCSource/tests/bench/whet.pas`. Imported this row (see
  Bucket 1), **with one honest caveat**: this benchmark's entire output (`Double Whetstone
  KIPS`, `Whetstone MIPS`) is a wall-clock/CPU-speed-derived performance metric, not a
  deterministic checksum — it will differ run-to-run and machine-to-machine by design.
  That breaks this corpus's stated invariant ("each benchmark reduces its result to one
  (or two) deterministic integers, stored in the matching `.ref`" — README.md). Rather
  than force a fake `.ref` or silently skip a named target, the file is imported with
  **no `.ref`**; a consumer harness wanting to score Whetstone needs a different signal
  (clean exit + well-formed output shape, not an exact diff). Flagging this explicitly so
  it isn't mistaken for an oversight.

- **Dhrystone — CORRECTED FINDING.** The prior LEDGER entry on this task ("no
  whetstone/dhrystone match anywhere under Pascal-P5/ or pascal-p4-main/, `find -iname`")
  was a **false negative**: that search looked for the literal words "whetstone"/
  "dhrystone", but the resident files are named `drystone.pas` (no 'h'). Both
  `Pascal-P5/sample_programs/drystone.pas` and `FPCSource/tests/bench/drystone.pas` exist
  and are real Dhrystone 2.1 Pascal ports (Weicker/Richardson lineage). **Neither was
  imported.** Per `GOAL-PASCAL-100.md` (~line 460) the project has already pinned the
  *canonical* Dhrystone target to a specific, different, larger source —
  `github.com/Keith-S-Thompson/dhrystone` → `original-sources/dhry-pascal` (1453 lines,
  Weicker's own "Dhrystone Benchmark (Pascal Version 2)" distribution) — which is the same
  source this directory's own README.md already documents as "not yet imported as runnable"
  (needs variant records, forward declarations, and a `clock` primitive beyond SCRIP's
  current Pascal frontend). The `corpus-import-iso7185pat-p5` task's LEDGER (seat12) had
  already flagged `Pascal-P5/sample_programs/drystone.pas` specifically as **"a false
  friend" for the canonical Dhrystone target** and deliberately did not import it, to avoid
  exactly the false-green risk this project's RULES.md warns about (a resident-but-wrong
  file quietly standing in for the real benchmark). This row independently reached the same
  conclusion after reading both resident copies and confirms it in writing here. Neither
  resident `drystone.pas` is byte-identical to the canonical 1453-line source (both are
  shorter single-file ports; the FPC copy additionally depends on the local `timer.pas`
  unit, the P5 copy stubs `clock` with a deterministic fake counter rather than the real
  primitive the canonical source expects). **Disposition: Dhrystone remains not resident
  on this machine in its canonical form.** Importing the canonical source requires fetching
  from GitHub, which is outside "resident packages" scope for this row. Left as the next
  actionable step for whoever picks up Dhrystone proper.
