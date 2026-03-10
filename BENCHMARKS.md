# SNOBOL4-plus Cross-Engine Benchmark Results

**Date**: 2026-03-10  
**Host**: Linux x86-64, Java 21.0.10  
**Engines**:
- SPITBOL v4.0f — compiled native x64 (`spitbol -b -`)
- CSNOBOL4 2.3.3 — compiled C (`snobol4 -`)
- SNOBOL4-jvm 0.2.0 — Clojure/JVM uberjar (`java -jar ...`)

**Timing**: All times measured by `TIME()` calls inside the program.
SPITBOL and CSNOBOL4 startup is sub-millisecond. JVM uberjar startup
(cold, dynamic classload) is approximately 8–10 seconds; this is
excluded from all reported times below.

**Note on SPITBOL/CSNOBOL4 showing 0ms**: These engines are so fast
on short benchmarks that TIME() resolution is sub-millisecond. The
iteration counts for several benchmarks need to be increased to get
meaningful readings from the native engines.

---

## Results

| Benchmark | What it measures | SPITBOL (ms) | CSNOBOL4 (ms) | JVM (ms) | JVM / SPITBOL |
|-----------|-----------------|:------------:|:-------------:|:--------:|:-------------:|
| arith_loop | Pure arithmetic dispatch, 1M iters | 30 | 130 | 8,543 | ~285× |
| eval_dynamic | EVAL() dynamic expression, 200 iters | <1 | <1 | 620 | — |
| eval_fixed | EVAL() fixed expression, 200 iters | <1 | <1 | 518 | — |
| fibonacci | Recursive FIB(18), ~10,945 calls | <1 | <1 | FAIL | — |
| func_call | DEFINE'd INC(), 2M calls | 90 | 490 | FAIL | — |
| func_call_overhead | DEFINE'd INC(), 3K calls | <1 | <1 | FAIL | — |
| mixed_workload | Pattern + TABLE + recursion, 200 iters | <1 | <1 | FAIL | — |
| op_dispatch | Mixed +,-,*,/ in loop | <1 | <1 | 14 | — |
| pattern_bt | Alternation backtrack, 500 iters | <1 | <1 | 1 | — |
| roman | Recursive ROMAN(), 4 calls | <1 | <1 | FAIL | — |
| string_concat | Append char 2000 times | <1 | <1 | 205 | — |
| string_manip | REPLACE+SIZE, 500 iters | <1 | <1 | 110 | — |
| string_pattern | BREAK CSV parse, 200 iters | <1 | <1 | 228 | — |
| table_access | TABLE write+read, 500 entries | <1 | <1 | 120 | — |
| var_access | 5-var arithmetic, 2000 iters | <1 | <1 | 313 | — |

---

## JVM Failures

Four benchmarks produce no output on the JVM engine. All involve `DEFINE`:

- `fibonacci` — recursive DEFINE'd function
- `func_call` — DEFINE'd INC(), 2M calls
- `func_call_overhead` — DEFINE'd INC(), 3K calls  
- `mixed_workload` — DEFINE + recursion + TABLE
- `roman` — recursive DEFINE'd ROMAN()

These are silently failing via `vm/run-program!`. The interpreter supports
DEFINE (2033 tests pass including recursive cases) but the uberjar's
`vm/run-program!` entry point appears not to handle the full DEFINE+RETURN
path in all cases. Needs investigation.

---

## Startup Overhead (wall clock, not measured by TIME())

| Engine | Startup |
|--------|---------|
| SPITBOL | ~5ms |
| CSNOBOL4 | ~10ms |
| SNOBOL4-jvm uberjar | ~8,000–10,000ms (JVM + dynamic classload of all namespaces) |

The JVM startup cost is the primary target of Sprint 23H (AOT .jar corpus cache).

---

## Notes

- `indirect_dispatch.sno` excluded — SPITBOL error 022 on `$FN(X)` syntax.
- SPITBOL `systm.c` patched to return milliseconds (default is nanoseconds).
- CSNOBOL4 `mstime.c` already returns milliseconds, no patch needed.
