# rosetta_live_prolog

Rosetta Code's Prolog solutions that the RosettaCodeData dataset of the rosetta packages lacks, fetched from the live site and read in place from /home/packages/prolog/rosetta_live_prolog
(the grader 2026-11-20; Lon: "find, cut, grade, and score programs and packages"). Cut by util_build_package_suite.py --mine, twice on the oracle.

Each program runs with drive.pl after it (ALL.launch), ours, as prolog_aoc (main/0 alone when the program defines it, else go and the other goals it names), since
30 of the 35 printed nothing without it.
