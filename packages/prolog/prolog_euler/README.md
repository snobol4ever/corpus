# prolog_euler

Project Euler ("project euler" language:prolog) solutions in Prolog from GitHub, read in place from /home/packages/prolog/prolog_euler. Cut by
util_build_package_suite.py --mine, twice, on swipl (the grader 2026-11-20; Lon: "keep on cutting, grading, and scoring.").

Each program defines its goal and calls none (MEASURED 2026-11-18: all 141 printed nothing), so each runs with drive.pl after it (ALL.launch), ours: it calls
main/0 alone when the program defines it, else each goal it defines among solve, run, go, start, solution, answer, the parts (part1, p1, star1, task1, q1 and
their twos) and the numbered ones (euler7, problem11, p3), a goal of one argument printed when the call binds it. A program that has already printed when it
is loaded is left as it stands. The same driver runs under SCRIP (scrip around - drive.pl).

MEASURED 2026-11-20: 3 entries of 141. The driver is loaded after the program on swipl's command line, and swipl loads a first file that is no `.pl` as a
script and passes every later file to it as an argument, so drive.pl never loads after the 67 `.pro` programs (maglob, fp555, lunixbochs); the
rest define no goal the driver knows (KarlHolt names its goals in full, monoscale's and lunixbochs' `.pl` files are Perl).
