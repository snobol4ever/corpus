# `corpus/benchmarks/raku/` — SCRIP-relevant kernels from raku-bench

Imported per Lon's order 2026-08-27 ("ensure we have a copy in our corpus for all in which would not
violate license agreement"), row `corpus-import-raku-bench`. Source drop: `/home/resources/raku-bench/`
(perl6-bench), a checkout of **japhb/raku-bench**, `github.com/japhb/raku-bench`, HEAD
`7cacc587106f16fd299bcbe7e47c90ca019fd8e5` (2021-03-22).

## License — two, not one (read before adding or copying a file)

The drop carries no top-level `LICENSE` file; the license is stated in `README.md`'s COPYRIGHT section:

> raku-bench is Copyright 2012-2014, Geoffrey Broadwell. This project is open source, and may be used,
> copied, modified, distributed, and redistributed under the terms of the **Artistic License 2.0**.
>
> Some benchmarks have been based on other open-source programs; in particular, benchmarks named with a
> leading `rc-` prefix were modified from versions found on **Rosetta Code**, which licenses all content
> under the **GNU Free Documentation License 1.2**.

So this directory carries **both** license texts, verbatim, fetched from their canonical URLs
(perlfoundation.org / gnu.org, the same ones raku-bench's own README cites):

| File | Covers |
|---|---|
| `LICENSE` | Artistic License 2.0 — every kernel here **except** the `rc-*`-prefixed ones |
| `LICENSE-ROSETTACODE-GFDL-1.2` | GNU FDL 1.2 — the `rc-*`-prefixed kernels (ported from Rosetta Code) |

`point_class_add*` carry the Artistic License (raku-bench's own port of a LuaJIT-wiki benchmark, not a
Rosetta Code one — see `point_class_add_README` note below).

## The kernels (17 imported)

All are self-contained (no CLI args, no external files) and deterministic (verified by running each
twice under Rakudo 2026.05 — `/home/resources/rakudo-local/bin/raku`, `rakudo_bin()` accessor in
`SCRIP/scripts/lib_oracle_flags.sh` — and diffing byte-for-byte). `.ref` is that verified stdout.

| Kernel | License | Modified from upstream? |
|---|---|---|
| `divide-and-conquer.raku` | Artistic 2.0 | recursion depth baked to 10 (upstream took it as an unbounded CLI arg; depth is FANOUT=2 branching, so upstream's own `100000`-style example argument is not runnable — see PITFALL below) |
| `insertion-sort.raku` | Artistic 2.0 | `srand(42)` added (upstream uses unseeded `.rand()` for the array — non-deterministic as shipped); scale baked to 500 |
| `merge-sort.raku` | Artistic 2.0 | same `srand(42)` fix; scale baked to 500 |
| `pi-sequential-iteration.raku` | Artistic 2.0 | scale baked to 1_000_000 |
| `point_class_add.raku` | Artistic 2.0 | iteration count 100_000_000 → 1_000_000 (upstream did not finish in 60s at full scale) |
| `point_class_add1.raku` | Artistic 2.0 | same scale-down |
| `point_class_add2.raku` | Artistic 2.0 | same scale-down, **plus `use nqp;` added** — upstream no longer compiles on current Rakudo (`Could not find nqp::create, did you forget 'use nqp;'?`); this is a bit-rot fix, not a semantic change |
| `rc-9-billion-names.raku` | GFDL 1.2 | arg baked to n=15 |
| `rc-dragon-curve.raku` | GFDL 1.2 | arg baked to order=6 |
| `rc-forest-fire-stringify.raku` | Artistic 2.0 | args baked to 20,20,5 (default values added to the `MAIN` signature only) |
| `rc-mandelbrot.raku` | GFDL 1.2 | **unmodified** — upstream's own defaults (w=31, max_iterations=50) are already self-contained |
| `rc-man-or-boy-test.raku` | GFDL 1.2 | arg baked to k=10 |
| `rc-perfect-shuffle.raku` | GFDL 1.2 | arg baked to decksize=52 |
| `rc-self-describing-numbers.raku` | GFDL 1.2 | arg baked to n=5000 |
| `send-more-money-loops.raku` | Artistic 2.0 | **unmodified** — was already self-contained (hardcoded 0-9 brute force) |
| `spinner.raku` | Artistic 2.0 | **unmodified** — upstream's own defaults (h=64, w=64, spins=64) are already self-contained |
| `string-escape.raku` | Artistic 2.0 | arg baked to n=1000 |

"Baked" means: upstream reads the value from `@*ARGS` or an argument-less `MAIN` parameter with no
default; here it is a literal constant (or a `MAIN` default), chosen small enough to run in a few
seconds under Rakudo 2026.05 while remaining a non-trivial workload. No kernel's algorithm was changed.

## Self-timed kernels — the two-number basis (hq_B 2026-09-01, row `bench-grids-rebase-to-two-number-basis`)

Lon's basis ruling (2026-08-30, `RULES.md` § THE TWO-NUMBER BENCHMARK BASIS): a published multiple is
**work on work**, and each engine's startup/finish **overhead** is its own number, derived as
(external elapsed − self-timed work). The totals basis charged Rakudo's ~300 ms process startup to its
engine; on a 2 ms kernel that is a 99% startup story wearing an engine multiple.

**How a kernel is self-timed** (the Prolog kernels under `../prolog/bench/` are the model, e.g. `fib.pl`):
`my $t0 = wall_us(); my $m0 = wall_ms();` before the work, the `$t1`/`$m1` twins after it, and
`note("BENCH kernel=<name> work_us=" ~ ($t1 - $t0) ~ " work_ms=" ~ ($m1 - $m0));` **after** the
kernel's own output. `note` writes to **stderr**, so stdout stays byte-comparable and the `.ref` still
verifies unchanged — a harness never has to strip a timing line out of the answer. Both units are
reported on purpose: `work_us` is the measurement, `work_ms` is the cross-check that a µs numerator is
never divided by a ms denominator unnoticed.

**Where the hooks come from.** `wall_us()`/`wall_ms()` are SCRIP builtins (beside the Prolog
`wall_us/1`/`wall_ms/1` in `src/runtime/by_name_dispatch.c`, deliberately adjacent so the two cannot
drift). The Rakudo arm gets the same subs from **`prelude_rakudo.rakumod`** in this directory, loaded
with `-M` so the kernel source is **byte-identical on every engine**. Precision floors: SCRIP reads
`CLOCK_MONOTONIC` (~20 ns floor), Rakudo reads `now` (sub-µs `Instant`) — both arms are genuinely
microsecond-precise, unlike gprolog's 1 ms `real_time/1` that refused the gplc column on the Prolog grid.

⛔ **Never `raku -I. -M…` from this directory.** Rakudo precompiles a `-M` module into a `.precomp/`
beside it and wrote one **into the corpus** on the first hand run. `SCRIP/scripts/bench_triangulate_raku.sh`
stages the prelude in a `mktemp` dir and passes `-I<that dir>`; do the same by hand. The corpus is not a
Rakudo output directory.

**Which kernels are self-timed** — census, never a remembered list: `grep -l 'wall_us()' *.raku`. The
triangulator declares the rest as NOT SELF-TIMED by name on every run; a kernel joins the grid the day it
carries the bracket **and** still byte-matches its `.ref` on m3, m4 and Rakudo.

**Angles 1+2 (added 2026-09-02, row `bench-grids-rebase-to-two-number-basis`).** `test_bench_raku_timed.sh`
(angle 1: fixed CPU-time budget, live doubling search) and `bench_raku_fixed_iter.sh` (angle 2: fixed
iterations, N read from the committed `fixed-iter-n.tsv` below) mirror the Prolog pair of the same name.
Neither can rename a predicate head the way Prolog's `mkwrap()` does — Raku kernels are top-level scripts —
so both build their N-times-looped derived twin via `SCRIP/scripts/lib_raku_bench_wrap.sh`, which loops
exactly the region the kernel's own `wall_us()`/`wall_ms()` bracket delimits (its header documents a real
scoping subtlety: a bracket-local `my $x` the kernel reads *after* the loop must be hoisted above it, or
Rakudo refuses to compile the naive wrap). `bench_triangulate_raku.sh` runs both fresh every invocation and
requires their rates to AGREE (flat 10%, UNBAKED) before a kernel counts MEASURED.

⛔ **`NMAX`/`CAL_NMAX` cap at 32768, not higher** — a real SCRIP runtime ceiling, not a harness choice: an
N-times-looped `string-escape` aborts both m3 and m4 past ~49152 iterations with `[WSI] workspace island
exhausted (1024 MB, ... blocks)`. See `FINDING-2026-09-02-seat01-raku-loop-exhausts-1gb-workspace-island.md`
in `.github/` — filed for the runtime/RTCC lane, not fixed here; it caps how large a looped Raku benchmark
this harness can ever measure, independent of benchmarking.

**`fixed-iter-n.tsv`** — the committed calibration table angle 2 reads (`kernel<TAB>N`), the lighter-weight
Raku counterpart to Prolog's checked-in `vanroy/<k>.pl` wrappers (no derived `.raku` source is committed
here — see `bench_raku_fixed_iter.sh`'s header for why: a committed derived kernel would collide with
`test_gate_bench_rivals_coverage.sh`'s basename kernel count, the same false-denominator class its own
header documents for `src/`/`vanroy/`). Regenerate via `bench_raku_fixed_iter.sh --calibrate`, never hand-edit.

**Output artifacts.** `worktime-<UTC stamp>.tsv` is angle 3's own rich table (work, elapsed, overhead,
spread, verdict, **and now real `angle1`/`angle2`/`crossproof` columns** instead of the old
`REFUSED-NO-INSTRUMENT` placeholder). `triangulation-<UTC stamp>.tsv` is a companion in
`bench_triangulate_prolog.sh`'s own 8-column schema (`kernel engine angle1_rate angle2_rate ratio verdict
disk_inblock disk_oublock`) — `test_gate_bench_rivals_coverage.sh` globs exactly that filename pattern and
reads column 6 as the verdict; it does not know the richer `worktime-*.tsv` shape. **Keep exactly one of
each checked in** (Prolog's own convention — its directory carries a single `triangulation-*.tsv`, replaced
whole on regeneration, never accumulated); a stale run left alongside a fresh one lets the coverage gate
credit an old AGREE that a fresh run no longer reproduces, found live this row before it was committed.
First real run (2026-09-02, `NMAX=32768`, `TIME_BUDGET_MS=3000`): every cross-proof cell reads `DISAGREE`
(10–36% spread) — neither angle repeats internally the way angle 3's REPS=3 best-of does, so a single live
search against a single fixed-N sample is this noisy on a shared box. The WORK/OVERHEAD numbers remain
citable on angle 3's own byte-verified, best-of-3 basis; `test_gate_bench_rivals_coverage.sh raku` correctly
still refuses (0 of 4 self-timed kernels cross-proven MEASURED) until either a noise floor is baked (mirroring
the SNOBOL4 triangulator's `NOISE-FLOOR.tsv`) or angles 1/2 gain their own repetition.

## Excluded from this import (measured, not silently dropped)

| File | Why excluded |
|---|---|
| `rc-forest-fire` | Genuinely non-deterministic: the simulation itself is driven by `rand` (tree growth probability `$.p`, fire probability `$.f`). Two runs of the *unmodified* upstream kernel with identical arguments produced different grids — confirmed by direct diff, not assumed. `rc-forest-fire-stringify` (no `rand` at all — it stringifies a fixed grid) is imported in its place and covers the same rendering code path. |
| `send-more-money-subs` | Confirmed non-deterministic across two runs with identical (no) input: one run found and printed the puzzle's unique solution, the other printed nothing. Root cause not fully bisected; likely `Set.keys` iteration order interacting with the recursive `choose`/`guard` CPS pattern (Raku hash/set iteration order is not guaranteed stable across process runs). `send-more-money-loops` solves the identical puzzle deterministically and is imported instead. |
| `parse-json`, `parse-json-no-obj-creation` | Not self-contained — both read an external JSON file via `slurp($json-file)`. Corpus rule requires self-contained kernels (no file I/O); embedding a fixed JSON literal would be a bigger rewrite than the "bake the arg" treatment applied elsewhere, deferred rather than done under this row. |
| `point_class_add_README` | Not a kernel (plain-text note), folded into the table above instead. It attributes the point_class family's origin: ported from a benchmark presented at `wiki.luajit.org/Allocation-Sinking-Optimization`, demonstrating LuaJIT's allocation-sinking/escape-analysis optimizations against several Point-object-construction strategies. |

## Regenerating `.ref`

```bash
raku="$(bash SCRIP/scripts/lib_oracle_flags.sh; rakudo_bin)"    # or: /home/resources/rakudo-local/bin/raku
for f in corpus/benchmarks/raku/*.raku; do
    "$raku" "$f" > "${f%.raku}.ref"
done
```

Every kernel here takes zero arguments by construction (see above), so this is the entire recipe — no
per-kernel argument table to keep in sync. Label any grid quoting a Rakudo arm with its version
(`rakudo-local` 2026.05, per the FACT RULE in `.github/RULES.md`).

## PITFALL for the next seat touching `divide-and-conquer.raku`

Upstream's own argument is **recursion depth**, not a data-size "scale" despite the variable being named
`SCALE` and `FANOUT` being fixed at 2 — so the task count is `FANOUT**depth`. Upstream's own usage
examples elsewhere in the raku-bench tree pass small integers (single digits to ~20) for exactly this
reason; passing anything resembling a typical "scale" value (thousands/millions) does not terminate.
Measured here: depth=15 already costs ~4.3s wall / ~22s CPU (concurrent, via `start`/`await`); depth=10
(baked into this import) costs ~0.5s. The output is always `1` regardless of depth — the recursion
telescopes a `1.0` down and back up through equal fractions, so correctness of the *result* is a weak
signal here; the interesting benchmark axis is task-spawn/await overhead, not the printed value.
