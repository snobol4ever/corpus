# Pascal Benchmarks (PAS-BENCH)

Canonical Pascal benchmark programs imported for cross-engine speed comparison
(SCRIP vs. a reference x86-64 Pascal system, Free Pascal / `fpc`).

See `PROVENANCE.md` for the full three-bucket accounting (every file present, every
candidate skipped and why, and the fbench/Whetstone/Dhrystone dispositions) — this
file stays the narrative; PROVENANCE.md is the closable checklist.

Each `.pas` carries a tunable repeat count read from stdin (`readln(reps)`) so a
single compiled artifact can be run at any iteration count; the timing harness
uses a two-point slope to cancel process-startup / JIT-compile cost. Each
benchmark reduces its result to one (or two) deterministic integers, stored in
the matching `.ref` (SCRIP M3 width-11 formatting — moved from width-10 to match
the `fpc -Miso` oracle, row `pascal-refs-regen-from-fpc-oracle` — numeric value
cross-checked against `fpc`).

## Provenance

| File | Origin | Author | Status |
|------|--------|--------|--------|
| `sieve.pas`  | Sieve of Eratosthenes (Byte-magazine sieve lineage) | classic | public domain |
| `bubble.pas` | Hennessy "Bubble", Stanford integer suite | John L. Hennessy, Stanford (c.1981) | long-circulated, public domain |
| `quick.pas`  | Hennessy "Quick" (Hoare quicksort), Stanford suite | John L. Hennessy | public domain |
| `towers.pas` | Hennessy "Towers" (Towers of Hanoi), Stanford suite | John L. Hennessy | public domain |
| `queens.pas` | Hennessy "Queens" (Wirth 8-queens), Stanford suite | John L. Hennessy / N. Wirth | public domain |
| `intmm.pas`  | Hennessy "Intmm" (40x40 integer matrix multiply), Stanford suite | John L. Hennessy | public domain |
| `perm.pas`   | Hennessy "Perm" (recursive permutation), Stanford suite | John L. Hennessy | public domain — **FRONTIER (see below)** |
| `fbench.pas` | John Walker's optical raytracing FP benchmark (fourmilab.ch/fbench/), via `Pascal-P5/sample_programs/` | John Walker | permissive, origin-preserved |
| `whet.pas`   | Classic portable Whetstone (Curnow & Wichmann, NPL, 1972), via `FPCSource/tests/bench/` | Curnow & Wichmann | permissive by long-standing redistribution custom — **no `.ref` (see below)** |

Algorithm and constants for the Hennessy/Stanford programs were taken from the
faithful C descendant in the LLVM test-suite
(`github.com/llvm/llvm-test-suite`, `SingleSource/Benchmarks/Stanford`), whose
comments preserve the original Pascal type declarations. These six are
P4-faithful hand transliterations into the SCRIP Pascal subset (no variant
records, no negative array bounds — diagonals in `queens` are offset to
non-negative indices).

The canonical Hennessy pseudo-random generator is used where the original does:
`seed := (seed * 1309 + 13849) mod 65536`, seed0 = 74755.

Dhrystone (Reinhold P. Weicker, Siemens, 1984; v2.1 1988; canonical source
`github.com/Keith-S-Thompson/dhrystone`, `original-sources/dhry-pascal`, 1453
lines) is **not yet imported as runnable** — it requires variant records
(`case Discr: Enumeration of`), forward declarations, and a `clock` primitive,
all currently beyond the SCRIP Pascal frontend. See the report's frontier list.

Two OTHER `drystone.pas` files are resident on this machine (`Pascal-P5/sample_programs/`
and `FPCSource/tests/bench/`) but are **not** this canonical source and were deliberately
**not** imported here — they're shorter, independently-adapted ports that don't match the
pinned target above (one stubs `clock` with a fake counter, the other depends on a local
`timer` unit neither the canonical source nor this corpus's convention expects). Full
detail and citations in `PROVENANCE.md` Bucket 3.

## Integer-width discipline (IMPORTANT for fair comparison)

SCRIP's Pascal `integer` is 64-bit; `fpc`'s default `integer` is **16-bit**,
which overflows the RNG multiply (`seed*1309`) before the `mod 65536` and yields
a different sequence. The canonical benchmark intends wide arithmetic (the LLVM C
port converts `seed` to `long` "for 16 bit"). The peer `fpc` builds therefore
prepend `{$mode objfpc}` (32-bit `integer`); both compilers then compute
identical results. Verified byte-identical for all six runnable benchmarks.

## ✅ RESOLVED (hq_C 2026-08-27) — `perm.pas` is CURED; `quick.pas` is the open defect

Re-measured at SCRIP `da6c8099` (`make pristine`, `RT_OPT=-O0`) with real stdin
(`echo 1 |`), against `fpc 3.2.2` peers built with `{$mode objfpc}`:

**`perm` now returns 43300 ≡ fpc ≡ `perm.ref`, in BOTH mode-3 and mode-4.** The
PAS-FOR-RECURSE frontier described below is HISTORY — kept for provenance, not as
current state. Do not cite it as an open defect.

⛔ **`quick.pas` is wrong instead:** SCRIP m3 prints `-50000 10414`; fpc and
`quick.ref` both say `-50000 15505`. Deterministic, reps-independent. `quick.ref`
being byte-identical to `bubble.ref` looks like a copy-paste but is not — fpc
independently confirms 15505, so the ref is right and SCRIP is wrong. Row
`pascal-quick-wrong-checksum-m3`.

⛔ **Mode-4 is broken for 5 of the 9 kernels** (bubble, intmm, queens, quick,
sieve — SIGSEGV rc=139): the Pascal `for` lowering leaks 64 bytes of ζ-SPINE per
iteration. Non-deterministic under ASLR, so a single green run means nothing. Row
`pascal-m4-for-spine-leak-64b-per-iter`. See
`.github/FINDING-2026-08-27-hq_C-pascal-bench-devnull-trap-voids-the-7-of-7-grid-and-masks-a-64-byte-per-iteration-m4-spine-leak.md`.

⛔⛔ **NEVER run these kernels with `</dev/null`.** Seven of the nine open with
`readln(reps)`; with no stdin `reps=0`, every loop body is skipped, and the kernel
prints its zero-initialized accumulator and exits **rc=0**. Both SCRIP and fpc then
print `0` and "agree" — a vacuous agreement that has already put a false "7/7 m3 ≡
fpc" and a false "the refs are stale" into the org record. The recipe under
*Reproducing* below is correct; use it.

## Known frontier (HISTORICAL, resolved — see above) — `perm.pas`

`perm` exercises a recursive call **inside a `for` loop** whose control variable
is read after the call returns. SCRIP currently returns 635 instead of 43300
(= 5 x P(7), P(7)=8660): the inner activation's `for`-loop control variable is
not allocated per-activation, so the outer loop's variable is clobbered and the
loop terminates early. Minimal repro: a recursive procedure with
`for k := 1 to 3 do begin rec(n-1); cnt := cnt+1 end` called as `rec(2)` yields 4
on SCRIP, 12 on `fpc`. Tracked as **PAS-FOR-RECURSE**. The other five recursive
benchmarks are unaffected (none nests a recursive call inside a live `for` loop;
`queens` uses `repeat`, whose variable survives).

## Known exception — `whet.pas` (no `.ref`)

Every other benchmark here reduces to a deterministic integer/checksum result stored in
a matching `.ref`. `whet.pas` is a deliberate exception: its output (`Double Whetstone
KIPS`, `Whetstone MIPS`) is a wall-clock/CPU-speed-derived score by design, so it varies
run-to-run and machine-to-machine. It's imported (license and content verified against
`fpc`) but intentionally ships with no `.ref` — a consumer harness needs a different
success signal (clean exit + well-formed output shape) for this one file.

## Reproducing

```
# SCRIP in-process (M3):     echo <reps> | scrip --run bubble.pas
# SCRIP compiled (M4):       scrip --compile bubble.pas > bubble.s
#                            gcc -c bubble.s && gcc -no-pie bubble.o -o bubble \
#                              -L<out> -lscrip_rt -lgc -lm -Wl,-rpath,<out>
#                            echo <reps> | ./bubble
# fpc peer:                  ( printf '{$mode objfpc}\n'; cat bubble.pas ) > b.pas
#                            fpc -O2 -ob b.pas ; echo <reps> | ./b
```
