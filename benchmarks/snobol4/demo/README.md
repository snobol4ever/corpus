# corpus / benchmarks / snobol4 / demo — the WORKLOAD family (BM-4)

Real programs doing real work, measured the same way as the microbenchmark family one
directory up: **fix the TIME, count the ITERATIONS**. Same `harness.inc`, same
`check:`/`iters:`/`ms:` contract, same runner.

```bash
BENCH_DIR=corpus/benchmarks/snobol4/demo bash SCRIP/scripts/test_bench_snobol4_timed.sh
```

## Why these programs

The microbenchmarks isolate one operation each (a loop, a call, a table store). These
**deserialize structured text into live memory** — the workload SNOBOL4 exists for, and the
one that exercises pattern matching with sprinkled loads rather than pattern matching alone.

Each grammar ships in three variants, which is the point of the family:

| variant | what it does | what the delta tells you |
|---|---|---|
| `<name>` | parses **and builds structures** — captures + `*function()` calls | the real workload |
| `<name>-match` | the SAME grammar with **no captures, no side effects** | pure pattern throughput |
| `<name>-match-fence` | as `-match`, plus `FENCE` pruning backtrack | what backtracking costs |

`plain − match` is the price of the loads; `match − match-fence` is the price of the
backtracking the fence removes. Neither is visible from a single number.

## Input

Every program slurps its corpus from **stdin**; the runner redirects a sibling `<family>.dat`,
where family is the program name minus any `-match`/`-match-fence` suffix. All three variants
of a grammar therefore provably read the same bytes.

| data | bytes | source | fed to |
|---|---:|---|---|
| `claws5.dat` | 66,757 | CLAWS5-tagged TASA corpus | claws5 ×3 |
| `treebank.dat` | 100,155 | Penn-Treebank bracketed parses | treebank ×2 |
| `json.dat` | 631,514 | twitter.json | json ×3 |
| `calculator-1.dat` / `-2.dat` | 32,512 | generated expressions | calculator ×6 |
| `porter.dat` | 190,138 | 23,531 words | porter |

⛔ **`check:` is the deserialization census, not a byte count** — for the plain variants it is
what the parse actually *built*: `claws5` returns tokens deserialized, `json` returns
`objects/arrays/strings/ints/reals/bools/nulls/maxdepth`, the calculators return the sum of
every expression they evaluated, `porter` the total stem length. Every value the original
program would have PRINTED is accumulated into that check instead of written, which both keeps
stdout clean for the harness and makes the check witness the whole computation. The `-match`
variants have no structures to count and return `SIZE` of the slurped text, so a missing or
truncated input cannot masquerade as a passing run.

## Relationship to `programs/snobol4/demo/`

These are **timed copies; the originals stay put and are unchanged.** The scorecard's `demos`
suite (weight 15) globs `programs/snobol4/demo -maxdepth 1 -name *.sno` and diffs `.ref` files
holding real program output (`matched bytes=…`). Converting in place would have destroyed that
suite, so the two live side by side: the originals prove *correctness*, these measure *speed*.

## What is here, and what is not

15 programs. **`treebank.sno` (plain) is deliberately absent**: it does not compile on the
ORACLE — `ERROR 217 duplicate label` ×5, then SIGSEGV (rc=139) — so no `.ref` can be baked and
no engine can be scored on it. That is a corpus defect in the original program, not a SCRIP
one, and it is recorded here so the next seat does not re-derive it. Its two `-match` variants
are fine and are included.

`.ref` files hold the oracle's `check:` line only, baked with `sbl -b -s16m`. The `-s16m` is
required by `json` alone: its recursive descent overflows the oracle's default stack
(`ERROR 246`) once the match runs inside the harness function's frame. It is harmless to every
other row — a stack size is not a throughput knob — and larger values are refused by this
container.
