# PRESS on 131 equations, one entry each

Each `eqNNN.in` is line NNN of `../press.session`, the 132 equations of PRESS's own `exam.pl` (A-level problems: trigonometric, hyperbolic, exponential and logarithmic). Each is graded as its own entry `press/eqNNN`, which runs `../press.pl` with that line as standard input (the `stem` column of `../../ALL.csv`). Line 53 repeats line 27, so it has no entry of its own.

Each `eqNNN.out` is swipl 9.0.4's answer, `swipl -q press.pl < eqNNN.in`, cut twice through `util_oracle.sh` with the cache off; both runs were byte for byte equal, and every one ended 0 with an `Answer is` block (2026-11-26, the grader, on Lon's word: "yes, grade the 132 as a stem"). None of these inputs is ours.
