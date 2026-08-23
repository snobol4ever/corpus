# corpus / benchmarks / snobol4

Canonical SNOBOL4 **timed** benchmark programs for all snobol4ever implementations.
Namespaced under `snobol4/` so the benchmark root can hold per-language sets
(`snobol4/`, `icon/`, …), mirroring `corpus/programs/<lang>/`.

**ONE FAMILY, ONE SHAPE (BM-2 end state, 2026-08-19 s170).** Every `.sno` in this
directory is a **harness body**: it supplies a `ZBODY(ZKN)` kernel plus `ZCHK`/`ZBUD`/`ZFLR`
and ends with `-INCLUDE 'harness.inc'`. There is no second shape, no `timed/` subdir, and
no generator — `harness.inc` is the ONE driver and the bodies are **hand-edited**.
`gen_timed_bench_snobol4.sh` is DELETED; do not resurrect it.

Three phases per program: **CHECK** (fixed count, deterministic — the `check:` line is the
only thing the `.ref` holds and the only thing diffed) · **CALIBRATE** (double the batch
until it spans `ZFLR` ms) · **MEASURE** (batches to a `ZBUD` ms deadline, printing `iters:`
and `ms:`). Fix the TIME, count the ITERATIONS — a throughput directly comparable across
engines, and a suite whose wall cost is bounded by construction. **This TIME-based shape is
still the default** — selected whenever stdin is EOF, i.e. every existing call site's
`< /dev/null` convention, unchanged.

⭐ **FIXED-WORK MODE (bench-harness-unmeasurable, 2026-08-22).** A wall-clock deadline cannot
be instruction-counted: under callgrind (or any ~30–100x instrument) every arm self-shrinks
its batch to fit the budget's *slowed* real time, so total `Ir` measures the INSTRUMENT's own
throughput, not the kernel's — MEASURED, `arith_loop` and `table_access` land within 5% of
each other under callgrind despite a ~20,481x native throughput gap. Pipe one line holding a
positive integer on stdin and the harness runs `ZBODY` that many times total with no deadline
anywhere in the run, batching at the kernel's own pinned `ZK` when it has one (so a
non-steady-state kernel like `string_concat` still measures many `ZK`-sized batches, not one
giant call):
```bash
./scrip --run   arith_loop.sno < /dev/null    # TIME mode (default, unchanged)
echo 75000000 | ./scrip --run arith_loop.sno  # FIXED-WORK mode, 75,000,000 total iterations
```
No new killswitch, global, or builtin — the switch is a pure stdin gate in `harness.inc`
(`INPUT` fails cleanly at EOF, exactly the SNOBOL4/SPITBOL semantics `.ref`-diffing already
relies on for the CHECK phase). Full detail and the callgrind numbers for all 15 kernels in
both modes: `FINDING-2026-08-22-bench-harness-unmeasurable.md`.

```bash
bash SCRIP/scripts/test_bench_snobol4_timed.sh         # sbl / m3 / m4 throughput table + check gate
bash SCRIP/scripts/bake_noise_floor_snobol4_timed.sh   # re-bake NOISE-FLOOR.tsv (TIME-mode rows)
```

The `.spt` files are SPITBOL-dialect programs (`-TITLE`, `./*` directives) from the original
SPITBOL test suite — data for the diagnostics runners, not part of this family.

---

⛔ **`test_bench_snobol4_timed.sh` CURRENTLY GRADES ZERO OF THE 15 (2026-08-23, s265 STANDALONE
REVAMP).** The runner now builds every kernel's timed twin via `bench_wrap.sh`, which requires a
`*BENCH kernel=... check=... bud=... flr=...` marker line (see `bench_wrap.sh` header) — none of
the 15 `.sno` below carry one yet, so every row prints `UNGRADED` and `CHECK RESULT: ok=0 bad=0`.
The kernels themselves are unaffected and still run correctly as plain harness.inc TIME-mode
programs; until they are migrated to the `*BENCH`/standalone shape, use
`scripts/bench_snobol4_timed_direct.sh` (interim bridge, same run1()/best() methodology, bypasses
`bench_wrap.sh`) to get real numbers. Task: `bench-rebaseline-15-kernels-clean-oracle`.

## Benchmark Programs (15, all graded)

| File | Bottleneck | Key operations |
|------|-----------|----------------|
| `arith_loop.sno` | Counter increment; loop dispatch | Tight counter loop, no I/O or patterns |
| `array_sum.sno` | Array allocation, indexed store and fetch | `ARRAY`, subscript store/fetch |
| `eval_fixed.sno` | Run-time compilation of a fixed expression string | `EVAL()` |
| `fibonacci.sno` | Recursive call depth | Recursive `FIB` |
| `func_call.sno` | Program-defined call and return overhead | Direct call to a SNOBOL-defined function |
| `indirect_dispatch.sno` | **BY-NAME dispatch** | `APPLY(<name in a variable>, arg)` — contrast with `func_call` (direct) and `eval_fixed` (EVAL). ⭐ **m4 status corrected 2026-08-23** (task `bench-rebaseline-15-kernels-clean-oracle`): compiles, links, and runs cleanly (`check: 125750`, matches `.ref`) — the old "m4 XFAIL, B1 class" note is stale (no `indirect_dispatch.xfail` file exists on disk either). Also noted, unacted-on, by seat2 2026-08-22 (`FINDING-2026-08-22-seat2-bench-harness-unmeasurable.md` §4). Re-verify before trusting either status blindly. |
| `mixed_workload.sno` | Combined | Pattern parse + TABLE + recursion, one of each per iteration. ⭐ **m4 status corrected 2026-08-23** (task `bench-rebaseline-15-kernels-clean-oracle`): compiles, links, and runs cleanly (`check: 12100`, matches `.ref`) — the old "m4 SIGSEGV" note is stale. Also noted, unacted-on, by seat2 2026-08-22 (same FINDING). Re-verify before trusting either status blindly. |
| `op_dispatch.sno` | Arithmetic operator dispatch and predicate test | `+ - * /`, `GE` in a loop |
| `pattern_bt.sno` | Alternation backtracking | 4 choices + `SPAN`, capture on the winning arm |
| `roman.sno` | Recursive function dispatch | `DEFINE`, `RPOS`, `LEN`, `BREAK`, `REPLACE`, converting a different integer each iteration |
| `string_concat.sno` | String growth; cost rises with length | Repeated concatenation |
| `string_manip.sno` | `REPLACE` character translation over a fixed string | `REPLACE`, `SIZE` |
| `string_pattern.sno` | `BREAK` scanning with conditional capture | Field split, CSV shape |
| `table_access.sno` | Table creation, hashed store and fetch | 500-entry `TABLE` fill + sum |
| `var_access.sno` | Natural variable read and write traffic | 5 vars, read/write in a tight loop |

**Retired 2026-08-19 s170** per Lon's *"enough variations"* (BM-2): `arith_int`, `arith_mixed`,
`arith_str`, `cap_imm_nret`, `cap_imm_nret2`, `eval_dynamic`, `func_call_overhead`,
`pattern_bt_deep`, `table_churn` — each a redundant variant of a surviving row, all nine
legacy-shaped (fixed count, printed a raw ms delta, and so could never match a `.ref`).
Their text is in corpus git history. ⛔ `arith_mixed` was the only program reaching
`rt_num_arith` and `table_churn` the densest `rt_agg_alloc` row — `scripts/bench_sno_rtx.sh`'s
ARITH/ALLOC family sets were repointed and the loss is named there, not silently absorbed.

---

## Reading the numbers

⛔ **Read `NOISE-FLOOR.tsv` before calling any difference real.** The floor is a property of
the (kernel, engine, THP-arm) triple, not of the harness — measured range 0.2%–34.6% cv. The
runner prints each row's min-detectable difference; a smaller delta is WEATHER.

⛔ **SCRIP engines are measured with `SCRIP_NOHUGE=1`.** Transparent huge pages make every
*allocating* row unmeasurable in the shipping arm and cost real throughput (2.26x on
`table_access`). See `FINDING-2026-08-19-s149-time-based-benchmarks-and-the-thp-throughput-defect.md`.

⛔ **A window containing a garbage collection is not a throughput reading.** The runner sizes
the arena past the window (`HEAP=1024`) and prints a per-row `gc` count; `gc>0` marks the row
untrusted rather than averaging an ~835 ms stall into it (BM-3).

---

## Adding or changing a benchmark

1. Write the kernel as `DEFINE('ZBODY(ZKN)')` returning a check value that **witnesses the
   computation** (a census, not "it ran"), set `ZCHK`/`ZBUD`/`ZFLR`, end with
   `-INCLUDE 'harness.inc'`. Reserved: labels `ZCAL ZMEAS ZB ZFIXRUN ZFB ZFL ZEXIT`, variables
   `ZT ZD ZE ZN ZK ZKN ZCHK ZBUD ZFLR fixed_n`.
2. Put the phase-1 value in a sibling `.ref` as the single line `check: <value>`, taken from
   the live oracle (`x64/bin/sbl -b`).
3. Update this table, then re-bake `NOISE-FLOOR.tsv`.
4. A program that is not harness-driven is **not graded**, and the runner now prints it by
   name under `UNGRADED` and fails — the end state is mechanical, not a convention.
