# packages/prolog/gnu_fd — GNU Prolog finite-domain constraint programs

**Upstream:** the local GNU Prolog drop `/home/resources/gprolog-master/examples/ExamplesFD/`, vendored 2026-09-11 by ceo on Lon's order (*"Get the GNU programs in our corpus repo"*). Same distribution our `gprolog` oracle is built from.
**License:** GPL-3 — `COPYING` vendored beside the programs (the gprolog distribution's own).

**Population:** 30 `.pl` constraint programs. We held **zero** of these. What they exercise, by frequency of call:

| builtin | calls | builtin | calls |
|---|---|---|---|
| `fd_labeling` | 66 | `fd_all_different` | 15 |
| `fd_element` | 50 | `fd_set_vector_max` | 13 |
| `fd_domain` | 27 | `fd_exactly` | 10 |
| `fd_atmost` | 16 | `fd_only_one` / `fd_tell` / `fd_minimize` / `fd_min` | 3/3/3/2 |

Classic constraint problems: `queens bqueens alpha donald bdonald sendmore bsend crypta eq10 eq20 five gardner langford magic magsq multipl pigeon ramsey schur bridge cars digit8 interval array bdiag`.

⛔ **THESE ARE ALMOST CERTAINLY OUTSIDE THE BASELINE, AND THAT MUST BE MEASURED, NOT ASSUMED.** GNU Prolog's finite-domain solver is an extension, not ISO core. Our Prolog ruling is THE SUPERSET (ISO core as default, every non-conflicting GNU/SWI builtin added — CEO-391), which *by its letter* puts `fd_*` inside the superset; but implementing a constraint solver is a different order of work from adding a builtin, and nobody has ruled whether the superset was meant to reach that far. **Until it is ruled these carry CORRECTNESS=UNGRADED with this note**, never a silent exclusion and never a quiet inclusion in a denominator we cannot move. ⭐ A wrong exclusion costs more than a wrong cure: a red stays visible, an excluded name cannot be red.

## Graded (the grader 2026-11-17)

Until this cut the package had a table and no answers, so nothing graded it. Now every row's `dialect` cell is `gnu`, so the builder cuts each ref from GNU Prolog 1.6.0 (gprolog_oracle_run.sh, twice) and SCRIP runs `--dialect=gnu` from the same cell; `compile_args` is empty.

ONE CHANGE OF OURS IN THE PROGRAMS: each program that prints its run time read `write('time : '), write(Y)`, Y being `statistics(runtime, _)`, a clock. That second call is now `_ = Y, write(0)`, marked by a comment on its line, so the answer line `time : 0` is compared byte for byte. `_ = Y` keeps Y used, because gprolog's singleton warning names the scratch directory. A mask would have covered one line of a two-line answer, which the harness refuses as half masked.

20 of 30 are entries. `ALL.omit` names the other 10 with the measurement:
- **array:** a library the b* programs include.
- **bdonald, bpigeon, bqueens, bschur, bsend, magsq, qg5:** include `array.pl`, which the oracle's scratch copy does not hold.
- **queens, bridge1:** call `fd_tell/1`, which only gplc accepts.

MEASURED on SCRIP (worktree base, mode 3): 19 of 20 PASS; digit8 prints nothing.

Graded as `gnu_fd` (SUITE_RUNNERS.tsv), the per-entry road, mode 3.
