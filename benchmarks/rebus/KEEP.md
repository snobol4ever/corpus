# KEEP.md — corpus/benchmarks/rebus

⛔ **THESE THREE CANNOT BE ABSORBED TODAY, AND THE BLOCKER IS STRUCTURAL, NOT A BACKLOG.**
`util_unabsorbed_census.py --lang rebus` owes exactly these three, and the remedy it names —
*"absorbed into its master with an oracle-cut ref"* — **cannot be performed for Rebus by any tool we have**:

```
$ python3 SCRIP/scripts/util_build_master_suite.py --lang rebus --additive --from benchmarks
⛔ REFUSING: --additive --lang 'rebus': no oracle wired in resolve_oracle_bin yet
   (only icon, pascal, prolog, snobol4) -- prove-on-one-then-widen means widening THAT
   function first, never skipping the oracle cut
```

⭐ **AND THAT REFUSAL IS RIGHT.** Rebus has **no independent rival implementation** — `fib_recur.reb`
says so in its own header comment, and CEO-391's *one oracle per language* has no binary to name for it.
There is nothing for `resolve_oracle_bin` to be widened *to*. A language with no rival cannot satisfy
"absorbed with an oracle-cut ref" **ever**, which makes this a standing property of Rebus and not a task
anybody can pick up. (The 48 `parser_*` families in `tests/rebus` were absorbed with `--dump-ast` refs —
a PARSER ref, which grades the parser against its own dump. That route does not exist for a runtime
benchmark, where a SCRIP-derived ref would be circular.)

## The three, with their answers DERIVED INDEPENDENTLY OF SCRIP

⭐ Each of these is arithmetic, not a reading — which is exactly why it can be written down here while no
oracle exists. Measured 2026-09-12 (hq_C) at SCRIP `89e701b11`: **both modes agree with the arithmetic.**

| file | what it computes | independently derived | m3 | m4 |
|---|---|---|---|---|
| `arith_loop.reb` | `sum(1..300000)` | `300000·300001/2` = **45000150000** | 45000150000 | 45000150000 |
| `fib_recur.reb` | `fib(24)`, naive double recursion | **46368** (iterative Fibonacci) | 46368 | 46368 |
| `string_concat.reb` | `size` after 4000 `\|\|` appends | **4000** (one char per iteration) | 4000 | 4000 |

⛔ **THE DERIVATION IS THE AUTHORITY, NOT THE RUN.** The middle column was computed from the program's
text before either mode was executed; the last two columns are a CHECK of SCRIP against it, never the
source of it. Recorded this way on purpose: a ref cut from the implementation it grades proves only that
the implementation is deterministic, and Rebus is the one language where that mistake is easy to make
because nothing else can be asked.

## What would have to change

Either (a) a ruling that a no-rival language's runtime refs may be **deliberately authored** with their
derivation recorded — this file is already that content, it just has no machine-readable home, because the
only writer of `tests/rebus/ALL.excluded.txt` is the builder's additive path and that path refuses Rebus;
or (b) the census learns that a language with no oracle accounts its sources through a declaration like
this one. ⛔ Neither is a seat's call. Asked of the ceo 2026-09-12, row
`rebus-absorb-every-owed-source-into-the-one-master-unabsorbed-census-reads-zero`.
