# pack_loadfuncpp

Eight example programs of loadfuncpp, the Icon library's interface for loading C++ functions (Carl Sturtivant; `/home/resources/icon-master/ipl/packs/loadfuncpp/examples`,
Icon 9.5.25a, public domain: `COPYRIGHT.icon`). One package a pack (see `pack_tcll1`). VENDORED, with their semicolons (CIO-98, CIO-100, CIO-101).

WHAT IS HERE. The eight programs of the pack's 37 that answer alone: `factorials hello hexwords hexwords_oneline newprimes primes sums sums2`. Each is one file of plain
Icon that loads nothing; each is a row with its answer `NAME.out`. The other programs of the pack load a C++ library the pack builds with a C++ compiler; none is
built here, so the oracle answers none of them (the census, `/home/resources/progress/MINING-ICON-LIBRARY-PACKS-CENSUS.tsv`: 26 ORACLE-REFUSES, 1 NEEDS-INPUT, 1
NO-OUTPUT, 1 LIBRARY).

THE SEMICOLONS (CIO-100): the tab characters of a scratch copy written as spaces, then `harness/scripts/util_icon_semicolons.py` over the files until nothing changed (six
of the eight changed; two already carried theirs). No other byte is changed. PROVED for each of the eight: the converted text by the fleet's `icont` and the original by
the distribution's own translator give the same answer, twice; SCRIP parses it.

THE ANSWERS are cut from the oracle: the fleet's `icont -s` on the converted file, then the program with standard input closed, twice the same. An entry is graded on
standard output and exit status. FIRST READING, mode 3, the grader's worktree at SCRIP of 2026-11-11: 8 of 8.
