# Rosetta Code -- Prolog (ProRosetta)

Every Prolog solution on Rosetta Code, vendored from the RosettaCodeData project
(https://github.com/acmeism/RosettaCodeData, commit 1d475861d, Task/*/Prolog/), 786 programs, one file per solution.
Rosetta Code's content is published under the GNU Free Documentation License 1.2 (https://rosettacode.org).
TASKS.tsv maps each entry to its Rosetta task and its path in RosettaCodeData; a file name's characters outside
[A-Za-z0-9._-] became '_' (a+b-1, send-+-more-=-money).

DRIVERS (CEO-700: a library is graded through a driver written for it): a solution that defines its entry predicate but never calls
it prints nothing under swipl -q, so the 120 solutions DRIVERS.tsv names carry one appended line, `:- initialization(<entry>).`,
calling the zero-arity entry they define (main, test, go, run, task, example, start) once at load. A solution with no zero-arity
entry needs a driver written for it and is named NEEDS_DRIVER in UNGRADED.tsv until it has one.

Graded against the oracle: swipl -q (SWI-Prolog, the Prolog oracle; a program runs its load-time directives and its initialization goal). The container ALL.pl / ALL.ref / ALL.csv is built by
SCRIP/scripts/util_build_package_suite.py, which cuts every ref from the oracle and names in ALL.excluded.txt, with its
reason, every program the oracle cannot grade (it refuses to compile or load it, fails, hangs past the timeout, prints
nothing, or answers differently on two runs). Each is also named in UNGRADABLE.tsv (the oracle gives no one ground truth: ORACLE_REFUSES,
NONDETERMINISTIC) or UNGRADED.tsv (work owed: NEEDS_DRIVER, TIMEOUT, NEEDS_RUNNER_WIRING for a program that prints a carriage
return), and stays in the published denominator as debt (CEO-1286: only a class Lon rules leaves it). The suite row (ProRosetta, Lon 2026-10-09: "Let's get rosseta for both
Pascal and Prolog on the official test suite banner. Graded against the oracle.") is written by SCRIP/scripts/test_prolog_rosetta_suite.sh.
