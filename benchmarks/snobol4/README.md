# corpus / benchmarks / snobol4

Canonical SNOBOL4 benchmark programs for all snobol4ever implementations.
Namespaced under `snobol4/` so the benchmark root can hold per-language
sets (`snobol4/`, and future `icon/`, `prolog/`, …), mirroring
`corpus/programs/<lang>/`.

Each `.sno` file is a self-contained SNOBOL4 program that writes its result
to OUTPUT. The `.spt` files are SPITBOL-dialect programs (use `-TITLE` and
`./*` preprocessor directives) from the original SPITBOL test suite.

⚠️ PATH NOTE (2026-06-22 reorg): programs moved from `corpus/benchmarks/`
to `corpus/benchmarks/snobol4/`. Sibling repos (`snobol4jvm`,
`snobol4dotnet`) point to this corpus as a Git submodule and load programs
from this folder — their benchmark runners need their load path updated
from `benchmarks/*.sno` to `benchmarks/snobol4/*.sno`. The SCRIP-side
runners (`test_bench_snobol4_modes.sh`, `util_regen_benchmark_s_artifacts.sh`,
`test_crosscheck_jvm_artifact_check.sh`) were updated in the same reorg.

---

## Benchmark Programs

| File | Bottleneck | Key operations |
|------|-----------|----------------|
| `roman.sno` | Recursive function dispatch | DEFINE, RPOS, LEN, BREAK, REPLACE, GOTO |
| `fibonacci.sno` | Deep recursion | FIB(18) ≈ 10,945 recursive calls |
| `arith_loop.sno` | Interpreter dispatch | Tight counter loop, no I/O or patterns |
| `string_pattern.sno` | Pattern matching | BREAK, CSV parsing, 200 iters |
| `string_manip.sno` | String function throughput | REPLACE, SIZE, SUBSTR, 500 iters |
| `var_access.sno` | Identifier lookup | 5 vars, read/write in tight loop, 2000 iters |
| `op_dispatch.sno` | Arithmetic operators | +, -, *, /, GE in loop |
| `pattern_bt.sno` | Pattern backtracking | Alternation of 4 choices + SPAN, 500 iters |
| `table_access.sno` | TABLE ops | 500-entry TABLE fill + sum |
| `table_churn.sno` | Integer-keyed TABLE subscript (AGG) | ONE table, 400-entry fixed live set, 10000 read+write passes. ⛔ Measure with `SCRIP_NOHUGE=1` — see the header comment. |
| `arith_mixed.sno` | MIXED int/real arithmetic (ARITH) | The ONLY program that reaches `rt_num_arith`: integer-only programs never do (the emitter inlines int arithmetic), so `arith_loop` counts ZERO at every loop count. 40,000,001 calls/run, scales linearly, ~1.6s natural window at F=1. Checksum `floor(1.5*(P+1))` predicted in advance, matched at P=40M and P=80M. RTX-0d, s204. |
| `func_call_overhead.sno` | Call/return overhead | Trivial INC(), 3000 calls |
| `mixed_workload.sno` | Combined | Pattern parse + TABLE + recursion, 200 iters |
| `eval_fixed.sno` | EVAL() compile cost | Fixed expression, 200 iters |
| `eval_dynamic.sno` | EVAL() with no reuse | Dynamic expression, 200 iters |
| `indirect_dispatch.sno` | $ indirect dispatch | $FN(X), 500 iters — contrast with eval_fixed |
| `testpgms.spt` | SPITBOL diagnostics | Full SPITBOL test suite (4 phases) |
| `testpgms-test1.spt` … `test4.spt` | SPITBOL diagnostics | Individual phases |

---

## Adding New Benchmarks

1. Write a self-contained `.sno` file here.
2. Add a header comment: name, bottleneck, expected output.
3. The final statement must write to `OUTPUT` (not a variable) so all runners
   can verify correctness without knowing variable names.
4. Update this README table.
5. Add the program to the runner in each implementation repo.
