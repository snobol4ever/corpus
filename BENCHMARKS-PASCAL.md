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

---

# PAS-DISPLAY-5 — lexical display vs static-link chain-walk (addressing only)

**Date**: 2026-06-27
**Host**: Linux x86-64 (container), same machine throughout.
**What is measured**: the *addressing* cost of a Tier-2 (enclosing-routine local)
variable access — a register-resident lexical **display** (`mov rax, r13`, one
load, O(1) regardless of depth) versus the **static-link chain-walk**
(`lea rax,[r12]; FOR hops { mov rax,[rax+0] }`, an `hops`-deep dependent load
chain). This is the win PAS-DISPLAY-1..4 implements. It is **orthogonal** to the
boxed-integer and call-frame forks reported above — those dominate absolute
SCRIP-vs-fpc time; this isolates only the uplevel-addressing instruction.

**Benchmarks** (`programs/pascal/bench/`):
- `uplevel2.pas` — a level-3 inner loop reading+writing two level-1 locals
  (`sum := sum + a`), 30000×8000 = 2.4e8 iterations. Tier-2 hop distance = **2**.
- `uplevel3.pas` — same kernel one level deeper (level-4 inner loop), hop
  distance = **3** (the deepest the 3-register display covers; level ≥4 falls
  back to the walk). Both verify `sum = 240000000` in M3, M4, and the walk build.

**Method**: same two-build A/B as the rest of this file, but the two builds are
*the same source* compiled by two *compilers*: the real display build, and a
"walk-baseline" build with the display forced off in all four frame templates
(`bb_var_frame`, `bb_assign_frame`, `bb_assign_frame_ref`, `bb_var_frame_ref`)
**and** the display push/set/pop removed from `xa_flat.cpp`, so the baseline pays
no display-machinery overhead — the two differ *only* in how a Tier-2 access is
addressed. The runtime `.so` is identical for both (emitter-only change).
M4 native exe, wall-clock; 10 interleaved A/B samples to cancel frequency drift.

## Results — wall-clock seconds per run (median of 10, interleaved)

| Benchmark | hops | display | walk | Δ (display − walk) | hot-body insns (disp/walk) |
|-----------|-----:|--------:|-----:|-------------------:|:--------------------------:|
| uplevel2  | 2 | 1.144 | 0.948 | **+0.196 (display SLOWER)** | 115 / 124 |
| uplevel3  | 3 | 1.078 | 1.009 | **+0.069 (display SLOWER)** | 115 / 124 |

(uplevel3 figures from the interleaved A/B run; display 1.067–1.093 vs walk
0.997–1.020 — the two distributions do **not** overlap, so the gap is real, not
measurement noise.)

## Honest interpretation — the architectural win does NOT show up as wall-clock here

The display build emits **fewer** instructions in the hot loop (115 vs 124 — the
9 saved per iteration are exactly the eliminated `lea`+`mov,[rax+0]` walk steps),
yet it runs **~7–20% slower** at the shallow depths this P4 dialect actually uses.
The gap **shrinks as depth grows** (+0.196 s at 2 hops → +0.069 s at 3 hops),
i.e. the trend is in the direction the design predicts (deeper walks cost more,
so the display saves more), but even at the maximum in-budget depth (3) the
display does not break even on this machine.

Why a 9-instruction-per-iteration saving loses:
- The static-link slot `[r12+0]` is **L1-cache-hot** (touched every iteration),
  so each walk hop is a ~1-cycle load the out-of-order core hides under the
  loop's real critical path (the loop-counter increment/compare recurrence). The
  walk is **not the bottleneck** at 2–3 hops, so removing it cannot speed the loop
  up — there is no dependent-chain stall to recover.
- Pinning the uplevel frame into a callee-saved register (`r13`) for the whole
  nest, plus the entry `push r13; mov r13,r12; sub rsp,8` / exit `pop`, is real
  work that the addressing saving does not pay back when the loop body is already
  bottlenecked elsewhere. The slightly different instruction layout also perturbs
  loop decode/alignment.

**This is the honest, unflattering result the rung asked for.** The display is the
right *architectural* model — O(1) per access vs O(hops), strictly fewer
instructions, no dependent chain, and the **only** model that keeps uplevel
access from degrading as nesting deepens — but on this microarchitecture, at the
≤3-hop depths real P4 programs exhibit (and with the static-link slot staying
L1-hot), it does **not** translate into a wall-clock win, and at shallow depth it
is a measurable wall-clock *loss*. The win would be expected to appear only where
(a) nesting is deep enough that the walk's dependent chain actually gates the
loop, or (b) the static-link slots fall out of L1 (large per-frame footprint /
cache pressure), neither of which the current corpus exercises. No claim of
speedup is made; the value of PAS-DISPLAY is correctness-preserving O(1) uplevel
addressing and instruction-count reduction, not measured throughput on shallow
nests.

(Both builds remain bit-for-bit correct: `sum = 240000000` for M3, M4, and the
walk-baseline. The walk-baseline build was a throwaway measurement harness and is
**not** committed — only the real display templates and these two benchmark
programs are.)
