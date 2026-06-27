# SCRIP Pascal Cross-Engine Benchmark Results (PAS-BENCH)

**Date**: 2026-06-27
**Host**: Linux x86-64 (container); Free Pascal 3.2.2
**Engines**:
- **SCRIP-M4** — SCRIP `--compile` -> `.s` -> `as`/`gcc` -> native binary linked against `libscrip_rt.so` (HEAD `fb5975c`)
- **SCRIP-M3** — SCRIP `--run`, in-process JIT (same code generator as M4; per-rep timing comparable)
- **fpc -O2** — Free Pascal 3.2.2, `{$mode objfpc}` (32-bit `integer`), `-O2`, native x86-64

**Methodology**: each benchmark reads a repeat count from stdin and runs the
kernel that many times, re-initializing each pass; the result is one
deterministic integer verified identical across all three engines. Because the
SCRIP Pascal frontend has no in-program clock primitive, timing is external
wall-clock using a **two-point slope**: run at N and 2N, take
`(t(2N) - t(N)) / N`. This cancels process startup (M4 ~55 ms shared-object + GC
init; M3 ~60 ms JIT compile; fpc ~3 ms) and isolates per-repetition execution
time. Same machine throughout, so machine power cancels.

A "repetition" is one full run of the kernel (e.g. one 500-element sort, one
40x40 matrix multiply, one Towers(18)).

---

## Results — milliseconds per repetition

| Benchmark | Kernel | SCRIP-M4 | fpc -O2 | **M4 / fpc** |
|-----------|--------|---------:|--------:|:------------:|
| queens | Wirth 8-queens, first solution | 4.25 | 0.00186 | **~2,300x** |
| quick  | Hoare quicksort, 500 elements   | 71.6 | 0.0142  | **~5,000x** |
| towers | Towers of Hanoi, 18 disks       | 409  | 0.453   | **~900x**   |
| intmm  | 40x40 integer matrix multiply   | 1218 | 0.146   | **~8,300x** |
| sieve  | Sieve of Eratosthenes, < 8190   | 1367 | 0.0361  | **~37,900x**|
| bubble | Bubble sort, 500 elements       | 1684 | 0.317   | **~5,300x** |

All six produce byte-identical results across SCRIP-M3, SCRIP-M4 and fpc:
sieve=1899, bubble=-50000/15505, quick=-50000/15505, towers=262143, queens=162,
intmm=-73408.

---

## Interpretation

The slowdown is **not uniform** — it sorts the kernels by what they stress:

- **Integer-arithmetic-bound** (`sieve`, `intmm`, `quick`, `bubble`):
  ~5,000-38,000x slower. These are dominated by tight integer loops
  (`seed := (seed*1309+13849) mod 65536`, array-index arithmetic, inner
  products). The magnitude is consistent with SCRIP currently representing
  Pascal `integer` as a **boxed / heap-allocated** value (the runtime links
  libgmp and libgc) rather than a native machine word — every arithmetic op
  pays allocation + GC overhead.
- **Call-bound** (`towers`): ~900x. Towers is almost pure recursion with one
  `+1` per call; the gap here reflects activation-record / call overhead, not
  arithmetic, and is an order of magnitude smaller than the arithmetic kernels.
- **Mixed** (`queens`): ~2,300x — backtracking over boolean arrays with few
  integer multiplies, between the two regimes.

**Takeaway for the SCRIP team**: the largest, cheapest win is **unboxing Pascal
`integer` to a native 64-bit machine word** on the arithmetic fast path. That
single change would attack the 5,000-38,000x cluster directly. Call-frame
overhead (`towers`) is the secondary target. This is a flat-basic-block native
back end with a correctness-first value model being compared against a mature
optimizing compiler; the numbers are honest and unflattering, and they point at
a specific, addressable bottleneck rather than diffuse slowness.

---

## Raw two-point timing

| Benchmark | engine | N1/N2 | t(N1) s | t(N2) s | ms/rep |
|-----------|--------|-------|--------:|--------:|-------:|
| queens | M4  | 100/200     | 0.480 (vs 0.055 @1) | -    | 4.25   |
| quick  | M4  | 15/30       | 1.209 | 2.283 | 71.64  |
| towers | M4  | 3/6         | 1.328 | 2.554 | 408.70 |
| intmm  | M4  | 3/6         | 3.654 | 7.308 | 1217.94|
| sieve  | M4  | 3/6         | 4.141 | 8.243 | 1367.20|
| bubble | M4  | 2/4         | 3.489 | 6.858 | 1684.34|
| quick  | M3  | 8/16        | 0.836 | 1.344 | 63.49 (confirms M3 ~ M4) |
| sieve  | fpc | 20000/40000 | 1.009 | 1.731 | 0.03611|
| quick  | fpc | 20000/40000 | 0.293 | 0.578 | 0.01421|
| bubble | fpc | 20000/40000 | 6.379 | 12.714| 0.31675|
| queens | fpc | 20000/40000 | 0.045 | 0.082 | 0.00186|
| intmm  | fpc | 20000/40000 | 2.935 | 5.856 | 0.14605|
| towers | fpc | 2000/4000   | 0.968 | 1.875 | 0.45341|

---

## Frontiers (logged, not silently skipped)

- **PAS-FOR-RECURSE** — `perm.pas`. A `for`-loop control variable is clobbered by
  a recursive call in the loop body (inner activation's loop variable not
  allocated per-activation). SCRIP returns 635 vs correct 43300. Minimal repro in
  `benchmarks/pascal/README.md`. Affects no other benchmark here.
- **Dhrystone v2.1** (`Keith-S-Thompson/dhrystone` `v2.1/dhry.p`) — needs variant
  records, forward declarations, and a `clock` primitive; not yet runnable on the
  SCRIP Pascal frontend. Whetstone (FP/transcendentals) is a candidate next
  import once the integer-arithmetic path is profiled.
- **No in-program clock** in the SCRIP Pascal frontend — the reason timing is
  external. A `__pas_clock` builtin (milliseconds) would let these self-time and
  mirror the SNOBOL `BENCHMARKS.md` methodology exactly.
