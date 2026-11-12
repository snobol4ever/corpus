# pascal-lisp

Bob Appleyard's pascal-lisp, a small Lisp (Scheme) interpreter in the Delphi dialect of Pascal (https://github.com/bobappleyard/pascal-lisp, GPL 3 or later), read IN PLACE
from `/home/resources/pascal-demos/pascal-lisp` (`ALL.source`); no file of it is stored here (CIO-92, CIO-96). One of the six collections that were the banner row PasSets
until 2026-11-11 (Lon: "So since they are six things, make them six items on the banner."; COO-514). This folder holds our index (`ALL.csv`: `path` is the path from the
collection's root, `dialect` the fpc mode that cut the answer), the entry's answer `lispi.out` cut from fpc 3.2.2 in a scrubbed environment, `ALL.omit`, which names every
program that is no entry with its verdict, and `ALL.stdin`.

THE INPUT IS FED BY PATH. The one program, `lispi.pas`, is a read-eval-print loop on standard input. Its input is the collection's own Lisp file, `prelude.scm`, which may
not be copied here (GPL): `ALL.stdin` names it (the entry, a tab, the file's path from the collection's root), `scrip --run-files` opens it where it stands, and the builder
feeds the oracle the same file on both runs of the census. Built by `harness/scripts/util_build_package_suite.py corpus/packages/pascal/pascal-lisp --lang pascal --mine
CENSUS.tsv` with `ALL.source` and `ALL.stdin` written first (COO-508, COO-513, COO-514 (3); DESIGN-PLAN run-switches step 19).

THE CENSUS: 8 programs; 1 entry; 2 are units; 5 are parts of the unit `Lisp` that fpc does not compile alone. The entry is the program fpc answers the same twice when fed
`prelude.scm`, inside 60 s; it is graded on standard output and exit status. Every verdict in `ALL.omit` is a measurement and is expected to be re-run.

THE EXCLUSION (officer_04 2026-11-12, row pascal-lisp-red-lispi): `EXCLUDED.tsv` takes `lispi` out of the denominator as NEEDS_C_LIBRARY: through unit `Lisp` it uses the
collection's unit `BoehmGC`, which binds libgc's `GC_malloc` as a cdecl external and installs a memory manager over it; the row reads 0 of 0, excluded 1. The entry and
its answer stay in the index, to be graded again the day SCRIP has a stand-in.
