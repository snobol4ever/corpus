# Rosetta Code -- Pascal (PasRosetta)

Every Pascal solution on Rosetta Code, vendored from the RosettaCodeData project
(https://github.com/acmeism/RosettaCodeData, commit 1d475861d, Task/*/Pascal/), 664 programs, one file per solution.
Rosetta Code's content is published under the GNU Free Documentation License 1.2 (https://rosettacode.org).
TASKS.tsv maps each entry to its Rosetta task and its path in RosettaCodeData; a file name's characters outside
[A-Za-z0-9._-] became '_' (a+b-1, send-+-more-=-money).

Graded against the oracle: fpc -Miso (ISO 7185, the Pascal oracle). The container ALL.pas / ALL.ref / ALL.csv is built by
SCRIP/scripts/util_build_package_suite.py, which cuts every ref from the oracle and names in ALL.excluded.txt, with its
reason, every program the oracle cannot grade (it refuses to compile or load it, fails, hangs past the timeout, prints
nothing, or answers differently on two runs). The suite row (PasRosetta, Lon 2026-10-09: "Let's get rosseta for both
Pascal and Prolog on the official test suite banner. Graded against the oracle.") is written by SCRIP/scripts/test_pascal_rosetta_suite.sh.
