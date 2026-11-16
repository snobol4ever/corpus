# exercism_prolog (PrologExercism)

The Prolog track of Exercism (https://github.com/exercism/prolog, commit 0f03b8d of 2026-11-11; MIT licence, `LICENSE` copied here): 110
practice exercises, each with a model solution (`.meta/NAME.example.pl`) and its tests (`NAME_tests.plt`, plunit). 1,575 test cases.

ONE CASE FILE AN EXERCISE, OURS: `EXERCISE/NAME.pl` is the model solution, then its tests, joined into one file by
`/home/resources/progress/handoffs/grader-2026-11-15/exercism_cut.py`, as exercism's own runner loads the two
(`swipl -f SOLUTION -s TESTS -g run_tests -- --all`). Two changes, each keeping that run's meaning in one file: the first `pending` clause's
body reads `true`, as `--all` makes it, so every case runs; and the six solutions that set `double_quotes` are followed by the flag set back to
`string`, since the runner reads the tests as a file of their own.

THE VERDICTS (`NAME.ref`, one line a case, `PASS unit:test`) were read from swipl 9.0.4's own plunit bookkeeping after `run_tests`, one
swipl a unit, by the driver of `util_swi_cut_refs.sh` (copied unchanged in its code): every one of the 1,575 cases passes under the oracle;
three bonus units (`palindrome_products_bonus`, `pythagorean_triplet_bonus`, `triangle_bonus`) run no case and read `EMPTY`.

GRADED PER CASE (`CONTRACT.tsv` units plunit; `ALL.csv` grader swi-cases): each entry runs as three files, swi_tests' plunit shim, the case
file and a run_tests wrapper, and every case the ref names is matched by name, as PrologSwiTests is graded.

The first SCRIP reading (mode 3, SCRIP 38179ce886, on the landing's worktree): the core cell, 20 exercises, 20 of 20 with every case hit.
