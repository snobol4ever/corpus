# KEEP.md — corpus/benchmarks/rebus

⛔⭐ **THESE THREE KERNELS CARRY A *DERIVED* REF, AND THAT IS THE FINISHED STATE — NOT A BACKLOG.**
Ruled by the ceo 2026-09-12 (**CEO-607**, option (a), on hq_C's ASK from row
`rebus-absorb-every-owed-source-into-the-one-master-unabsorbed-census-reads-zero`):

> *A language with no independent implementation cannot have an oracle-cut ref, so its runtime ref is
> DERIVED and the derivation is RECORDED beside it — and the strongest derivation is a CROSS-LANGUAGE
> computation, not a hand sum.*

Rebus has **no independent rival implementation** (`fib_recur.reb` says so in its own header), so CEO-391's
*one oracle per language* has no binary to name for it and there is nothing for `resolve_oracle_bin` to be
widened *to*. That is a standing property of the language, not a task anybody can pick up.

⭐ **AND THE OBVIOUS REPAIR IS THE ONE THAT MEASURES NOTHING.** Running SCRIP and saving what it printed
would produce a ref that *looks* exactly like every other ref in this corpus while proving only that **the
implementation is deterministic**. Rebus is the one language where that mistake is easy to make, because
nothing else can be asked.

## The three, and how each ref was derived

Per CEO-609 a kernel tree **never enters a master**: these stay here, pristine source with a `.ref` beside
it. Each ref has **two independent witnesses**, recorded in full in the `.derivation` file beside it.

| kernel | computes | WITNESS 1 — rival + its own oracle | WITNESS 2 — hand arithmetic | ref |
|---|---|---|---|---|
| `arith_loop.reb` | `sum(1..300000)` | `arith_loop.sno` under `sbl -bf` | `300000·300001/2` | **45000150000** |
| `fib_recur.reb` | `fib(24)`, naive double recursion | `fib_recur.sno` under `sbl -bf` | iterative Fibonacci | **46368** |
| `string_concat.reb` | `size` after 4000 `\|\|` appends | `string_concat.sno` under `sbl -bf` | one char per iteration | **4000** |

The rival kernels are committed at `SCRIP/scripts/fixtures/rebus_derivation/*.sno` — transliterations of the
same kernel, run under SPITBOL, **the SNOBOL4 correctness oracle**, resolved through `lib_oracle_flags.sh`.
WITNESS 1 is the authority; WITNESS 2 is the second witness; SCRIP's own output is a **check** against them
and never the source of them.

## ⛔ THE DERIVATION IS RE-PERFORMED, NEVER BELIEVED

```bash
bash SCRIP/scripts/test_gate_rebus_derived_refs_match_their_rival_oracle.sh
```

That gate re-runs each rival under the **live** oracle every time and diffs the result against the `.ref`,
asserts the `.derivation` names its rival by path, and asserts WITNESS 2 states the same number. It refuses
rc=2 when the oracle is missing rather than skipping as success. ⭐ **This is the part that matters:** a
recorded derivation nobody re-executes is a *claim*, and a static record rots exactly the way this tree's
prose digests rot — it stays readable and persuasive while the thing it describes moves underneath it. Each
of the four arms was proven to go red on a deliberate mutation before this landed.

## How the instruments now read this

- `util_unabsorbed_census.py` classifies them **`derived ref`** — its own column, accounted, **never owed**
  and deliberately **not** folded in with `accounted`: an excluded name cannot be red, so a special case has
  to stay visible as one. It reaches that arm only for a language in `NO_RIVAL_LANGS` whose `.derivation`
  exists and is non-empty, so a `.derivation` **cannot** launder an authored number for a language that has
  an oracle. `--lang rebus` reads **rc=0**.
- `util_build_master_suite.py --lang rebus` and `resolve_oracle_bin` both refuse with **"no rival: refs are
  derived, see KEEP.md"**. ⛔ They used to refuse with *"no oracle wired … **yet**"*, which every reader
  correctly parses as a backlog item — and that reading cost this row a whole sitting. **A refusal that
  names the wrong remedy costs more than a silent one:** it sends the next seat to widen a function that
  cannot be widened, and the seat who fails to widen it concludes the *sources* are the problem.

⛔ Rebus remains `PARKED-LON-HOLD`: this is **absorption/ref bookkeeping only, on Lon's word** (CEO-598/599).
No Rebus board or master is run, and its `SCORE.md` row is untouched. ONE RUNNER item 3 binds unchanged.
