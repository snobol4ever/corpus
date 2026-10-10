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

A DRIVER WRITTEN FOR IT (hq_pascal 2026-10-10, row prolog-rosetta-the-458-needs-driver-...): the appended goal calls the solution's own
entry on the task's sample data -- doors_unoptimized(100), ack(M, N, A) over the task's table -- and, where the solution reads
standard input or its command line, <stem>.in or <stem>.argv beside it holds the task's sample (the builder feeds both). Where the
solution's own entry prints something no ref can hold (its cputime, a random draw), the driver calls the solving predicate beneath
it and prints in the solution's own format; DRIVERS.tsv names each. A solution reading a data file this package does not
vendor, such as the tasks' unixdict.txt, is UNGRADED NEEDS_VENDORED_SOURCE (CEO-1607). A code block of one Rosetta solution split
across files is measured by util_container_or_library.py: one that defines nothing is a CONTAINER (CONTAINERS.tsv, NO_DEFINITION,
out of shipped); one that defines clauses is a LIBRARY, UNGRADED NEEDS_DRIVER, owed a driver that needs its sibling block.

THE DRIVERS ROLL-OUT (hq_pascal 2026-10-10, row prolog-rosetta-the-458-needs-driver-..., CEO-1595): every one of the 458 NEEDS_DRIVER
solutions was read and given a driver or named. 364 carry one (DRIVERS.tsv: 358 appended, 6 an .argv alone; written by six workers to one procedure, each verified
under swipl -q twice in a scratch copy and again in place): the goal calls the solution's own entry on the task's sample data; a
`<stem>.in` or `<stem>.argv` holds its input; where the solution was written for code lists (DEC-10, SWI before 7) the driver sets
`:- set_prolog_flag(double_quotes, codes).` at the file's head, named per file in DRIVERS.tsv; where the entry prints time or a random
draw, the driver calls the solver beneath it. COMPOSED DRIVERS (CEO-1608): a Rosetta page that splits one program into blocks is one
program -- the entry block's driver includes its sibling blocks (`:- include('sibling.pl').`), and each included block is a CONTAINER
INCLUDED_BY that entry; a block that is itself a graded program is never included. bitmap.pl, a module other tasks' solutions load,
carries no driver: a load-time driver there would print inside them. After the rebuild: shipped 786 = graded 483 + ungraded 62 (44
NEEDS_DRIVER, most needing a predicate only an already-graded block defines; 10 TIMEOUT; 8 NEEDS_VENDORED_SOURCE) + ungradable 232 +
containers 9; inventory_line rc 0.
THE TAKE-OVER PASS (hq_pascal 2026-10-10, ceo CEO-1613 and CEO-1621): the 44 blocks still NEEDS_DRIVER were each read and ended in a
class. A composed driver may now TAKE OVER an already-graded sibling: the sibling's own driver is stripped, the entry includes it, and
it becomes a CONTAINER INCLUDED_BY the entry, so the page's program is graded whole and once (27 siblings, 27 entries, the graded
count unchanged by the swap). One sibling is a module that an include cannot splice (its module/2 errs). The entry loads it with
use_module, and it is a CONTAINER LOADED_BY that entry, the sixth container kind the ceo ruled at CEO-1621
(bulls-and-cows-player-1 to -2). The other blocks end as follows:
- A block that calls a predicate no block of its page defines (nth/3, suffix/2, for/3, make_new_line/2 ...) is UNGRADABLE
  ORACLE_REFUSES, with swipl's own measured error line.
- A toplevel transcript pasted as facts is replayed by its driver (associative-array-iteration-1).
- consult('filename') names a file no page shows, so that block is NEEDS_VENDORED_SOURCE.
- ?- abort., whose result exists only at an interactive toplevel, is UNGRADABLE NEEDS_INTERACTIVE_TTY.
- Two runs past the grading timeout, measured, are UNGRADED TIMEOUT.
After the rebuild: shipped 786 = graded 482 + ungraded 21 (12 TIMEOUT, 9 NEEDS_VENDORED_SOURCE; NEEDS_DRIVER 0) + ungradable 240 +
containers 43 (38 INCLUDED_BY, 4 NO_DEFINITION, 1 LOADED_BY). util_container_or_library.py verify reads 43 of 43, and inventory_line
prints whole.

Graded against the oracle: swipl -q (SWI-Prolog, the Prolog oracle; a program runs its load-time directives and its initialization goal). The container ALL.pl / ALL.ref / ALL.csv is built by
SCRIP/scripts/util_build_package_suite.py, which cuts every ref from the oracle and names in ALL.excluded.txt, with its
reason, every program the oracle cannot grade (it refuses to compile or load it, fails, hangs past the timeout, prints
nothing, or answers differently on two runs). Each is also named in UNGRADABLE.tsv (the oracle gives no one ground truth: ORACLE_REFUSES,
NONDETERMINISTIC) or UNGRADED.tsv (work owed: NEEDS_DRIVER, TIMEOUT, NEEDS_RUNNER_WIRING for a program that prints a carriage
return), and stays in the published denominator as debt (CEO-1286: only a class Lon rules leaves it). The suite row (ProRosetta, Lon 2026-10-09: "Let's get rosseta for both
Pascal and Prolog on the official test suite banner. Graded against the oracle.") is written by SCRIP/scripts/test_prolog_rosetta_suite.sh.
