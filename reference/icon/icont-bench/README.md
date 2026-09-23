# The 1993 Icon benchmark HARNESS — kept for reference, never graded as benchmarks

These six files came from Arizona Icon's own benchmark suite (`icon-master/tests/bench`) together with the
programs in `corpus/benchmarks/icon/`. They are not benchmark kernels, so they left that tree on 2026-09-23
(hq_icon, row `icon-benchmarks-double-as-tests-...`, CEO-1221; RULES.md THE KERNEL CONVENTION, CEO-567):
a benchmark tree holds only programs whose source is the computation under test and which carry a `.ref`.

| file | what it is |
|---|---|
| `post.icn` | the benchmark WRAPPER: `Init__` silenced `write` unless `$OUTPUT` was set; `Term__` printed hostname, version, elapsed time and storage counts to stdout. Timing now belongs to the generated wrapper of the three-angle harness, never to the source. |
| `micro.icn` | a timing driver for primitive operations (it calls `&time` itself) |
| `micsum.icn` | summarizes `micro`'s timing output |
| `version.icn` | prints the implementation's identity (`&version`) -- no computation to pin |
| `options.icn`, `shuffle.icn` | the two library procedures the benchmarks linked; each benchmark that used them now carries its own inlined copy, so every benchmark is one self-contained file that Arizona Icon and SCRIP read byte-identically |

`micro.icn` is also a compiler witness: `scripts/test_gate_dump_zeta_guard_arm_reads_a_name_only_from_an_op_that_carries_one.sh`
dumps its zeta layout from here. The sources are unchanged from their benchmark-tree copies (semicolons added for SCRIP).
