# snobol4ever Cross-Engine Benchmark Results

**Date**: 2026-04-01 (JS added SJ-8; DOTNET updated session154/156; SPITBOL/CSNOBOL4/JVM from 2026-03-10)
**Host**: Linux x86-64, Java 21.0.10, .NET 10.0.103, Node.js v22.22.0
**Engines**:
- SPITBOL v4.0f — compiled native x64 (`spitbol -b -`)
- CSNOBOL4 2.3.3 — compiled C (`snobol4 -`)
- snobol4dotnet — C#/.NET 10 threaded executor HEAD `d8f11f9` (session154 BenchmarkSuite2)
- snobol4jvm 0.2.0 — Clojure/JVM uberjar
- **one4all JS** — scrip-cc JS backend HEAD `09fb31f`, Node.js v22, trampoline engine (SJ-8)

**Methodology**: Each engine runs each benchmark at a count suited to its
own speed, timed by `TIME()` calls inside the program (startup excluded).
Results are normalized to **ms per million iterations** for comparison.
All engines run on the same machine so machine power cancels out.

**Startup overhead** (excluded from all timings):
- SPITBOL: ~5ms
- CSNOBOL4: ~10ms
- snobol4dotnet: ~1-2s (.NET JIT)
- snobol4jvm: ~8-10s (JVM + dynamic classload)

---

## Results — ms per million iterations

| Benchmark | SPITBOL | CSNOBOL4 | DOTNET | JVM | **JS** | JS/SPITBOL | DOTNET/SPITBOL | JVM/SPITBOL |
|-----------|--------:|---------:|-------:|----:|-------:|:----------:|:--------------:|:-----------:|
| arith_loop | 20 | 170 | 12,594 | 9,624 | **464** | **23×** | 630× | 481× |
| eval_dynamic | 370 | 1,310 | 355,000 | 4,070,000 | — | — | 959× | 11,000× |
| eval_fixed | 280 | 760 | 425,000 | 2,900,000 | — | — | 1,518× | 10,357× |
| op_dispatch | 70 | 400 | 39,838 | 25,502 | **1,180** | **17×** | 569× | 364× |
| string_concat | 2,000 | 6,000 | 14,760 | 80,200 | **6,770** | **3×** | 7× | 40× |
| string_manip | 78 | 348 | 40,400 | 117,000 | **1,879** | **24×** | 518× | 1,500× |
| string_pattern | 1,080 | 4,140 | 752,000 | — | — | needs E_18 | 696× | FAIL |
| table_access | 50 | 492 | 219,800 | 362,400 | — | needs TABLE | 4,396× | 7,248× |
| var_access | 91 | 407 | 40,440 | 50,440 | **1,119** | **12×** | 444× | 554× |
| fibonacci | — | — | 43,003† | — | — | needs DEFINE | — | FAIL |
| pattern_bt | 480 | 580 | 20,079‡ | FAIL | **2,744** | **6×** | — | FAIL |

*† fibonacci: FIB(30), not per-million-iters — single call timing*  
*‡ pattern_bt: 500K iters total*  
*JS —: feature not yet implemented (DEFINE/RETURN, TABLE, ARRAY, value-context pattern E_18)*

---

## Raw Timing Data

| Benchmark | SP count | SP ms | CS count | CS ms | DN count | DN ms | JVM count | JVM ms | **JS count** | **JS ms** |
|-----------|:--------:|------:|:--------:|------:|:--------:|------:|:---------:|-------:|:------------:|----------:|
| arith_loop | 1M | 20 | 1M | 170 | 1M | 12,594 | 1M | 9,624 | **1M** | **464** |
| eval_dynamic | 1M | 370 | 1M | 1,310 | 200 | 71 | 200 | 814 | — | — |
| eval_fixed | 1M | 280 | 1M | 760 | 200 | 85 | 200 | 580 | — | — |
| op_dispatch | 1M | 70 | 1M | 400 | 1M | 39,838 | 1M | 25,502 | **1M** | **1,180** |
| string_concat | 100K | 200 | 100K | 600 | 10K | 1,476 | 10K | 802 | **100K** | **677** |
| string_manip | 5M | 390 | 5M | 1,740 | 5K | 202 | 5K | 585 | **5M** | **9,395** |
| string_pattern | 500K | 540 | 500K | 2,070 | 500 | 376 | 500 | 510* | — | — |
| table_access | 5K cyc | 250 | 5K cyc | 2,460 | 50 cyc | 1,099 | 50 cyc | 1,812 | — | — |
| var_access | 10M | 910 | 10M | 4,070 | 50K | 2,022 | 50K | 2,522 | **10M** | **11,191** |
| fibonacci | FIB(30) | <1 | FIB(30) | <1 | FIB(30) | 43,003 | — | FAIL | — | — |
| pattern_bt | 500K | 480 | 500K | 580 | 500K | 20,079 | 500K | FAIL† | **500K** | **1,372** |

*\* string_pattern JVM produces empty result — partial pattern failure*  
*† pattern_bt JVM returns result=0 instead of 500000 — pattern match failing*

---

## Failures

| Benchmark | DOTNET | JVM | Notes |
|-----------|:------:|:---:|-------|
| fibonacci | ✓ | FAIL | JVM silent failure — DEFINE recursion in vm/run-program! |
| func_call | ✓ | FAIL | JVM silent failure — DEFINE |
| func_call_overhead | ✓ | FAIL | JVM silent failure — DEFINE |
| mixed_workload | ✓ | FAIL | JVM silent failure — DEFINE + recursion |
| roman | ✓ | FAIL | JVM silent failure — DEFINE recursion |
| pattern_bt | ✓ | FAIL | JVM result=0, should be 500000 |
| string_pattern | ✓ | partial | JVM result empty string |

DOTNET handles all benchmarks correctly. JVM fails on all DEFINE-based benchmarks
and has pattern match issues in the uberjar `vm/run-program!` entry point.

---

## Notes

- SPITBOL `systm.c` patched to return milliseconds (default is nanoseconds).
- CSNOBOL4 `mstime.c` already returns milliseconds, no patch needed.
- DOTNET `_timerExecute` started before `ExecuteLoop()` in threaded path (Builder.cs fix).
- `indirect_dispatch.sno` excluded — SPITBOL error 022 on `$FN()` indirect call syntax.
- EVAL benchmarks show very high interpreter overhead in both DOTNET and JVM vs SPITBOL.
  Sprint 23E (JVM inline EVAL!) targets this bottleneck.

---

## DOTNET Wall-Clock Baseline (session154 BenchmarkSuite2)

Full pipeline: lex → parse → emit → compile → execute. 5 reps, 1 warmup.
HEAD `d8f11f9`. Build: Release, net10.0, `-p:EnableWindowsTargeting=true`.

| Benchmark | Iterations | Mean | ±StdDev | Alloc/run | Result |
|-----------|:----------:|-----:|--------:|----------:|--------|
| Roman_1776 | — | 23.4ms | 22.2ms | 438 KB | MDCCLXXVI |
| ArithLoop | 1000 | 41.6ms | 24.5ms | 1662 KB | 1000 |
| StringPattern | 200 | 92.0ms | 33.6ms | 5699 KB | alphabeta… |
| Fibonacci | FIB(18) | 237.4ms | 32.5ms | 11853 KB | 2584 |
| StringManip | 500 | 44.2ms | 25.1ms | 2707 KB | 43 |
| FuncCallOverhead | 3000 | 19.0ms | 18.4ms | 877 KB | 300 |
| StringConcat | 500 | 18.8ms | 25.6ms | 394 KB | 100 |
| VarAccess | 2000 | 98.0ms | 33.2ms | 6282 KB | 12012 |
| OperatorDispatch | 100 | 21.0ms | 27.0ms | 611 KB | 165116 |
| PatternBacktrack | 500 | 59.0ms | 35.6ms | 1971 KB | 500 |
| TableAccess | 500 | 33.6ms | 21.9ms | 1623 KB | 250500 |
| MixedWorkload | 200 | 220.6ms | 20.5ms | 13930 KB | 550 |
| CodeFixed | 200 | 65.8ms | 25.0ms | 6125 KB | 200 |
| CodeDynamic | 200 | 89.4ms | 54.9ms | 6432 KB | 200 |
| EvalFixed | 200 | 54.6ms | 30.2ms | 5935 KB | 11 |
| EvalDynamic | 200 | 39.4ms | 14.5ms | 6134 KB | 400 |
| IndirectDispatch | 500 | 5.0ms | 0.0ms | 264 KB | *(error 22 — known gap)* |

*Note: StdDev is high due to single warmup + container noise. Production measurements
should use `--reps 20 --warmup 5` or BenchmarkDotNet for stable numbers.*
