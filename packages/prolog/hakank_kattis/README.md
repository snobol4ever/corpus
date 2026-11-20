# hakank_kattis

Hakan Kjellerstrand's Kattis problem solutions in SWI-Prolog, each fed its problem's first sample input, from https://github.com/hakank/hakank (kattis/, MIT), read in place from /home/packages/prolog/hakank_kattis (the grader 2026-11-20; Lon: "find, cut,
grade, and score programs and packages"). Cut by util_build_package_suite.py --mine, twice on the oracle.

Each program runs with drive.pl after it (ALL.launch), ours, as prolog_aoc: main/0 alone when the program defines it (the Kattis judge calls main), else go and
the other goals it names.

ALL.stdin feeds each program its problem's first sample input (N1.inp); the second sample waits for the stem column on the mine road.
