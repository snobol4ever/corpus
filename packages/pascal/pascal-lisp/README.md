# pascal-lisp

Bob Appleyard's pascal-lisp, a small Lisp (Scheme) interpreter in the Delphi dialect of Pascal (https://github.com/bobappleyard/pascal-lisp, GPL 3 or later), read IN PLACE
from `/home/resources/pascal-demos/pascal-lisp` (`ALL.source`); no file of it is stored here (CIO-92, CIO-96). One of the six collections that were the banner row PasSets
until 2026-11-11 (Lon: "So since they are six things, make them six items on the banner."; COO-514). This folder holds our index (`ALL.csv`: `path` is the path from the
collection's root, `dialect` the fpc mode that cut the answer), the entry's answer `lispi.out` cut from fpc 3.2.2 in a scrubbed environment, `ALL.omit`, which names every
program that is no entry with its verdict, and `ALL.stdin`.

THE INPUT IS FED BY PATH. The one program, `lispi.pas`, is a read-eval-print loop on standard input. Its input is `tests.scm`, 23 forms of
the collection's own Scheme (factorial, Fibonacci, map, fold, reverse, append, let and a named-let loop, cond, case, quotient, modulo, a
define-macro swap, equal?), written into the collection for this suite: `ALL.stdin` names it (the entry, a tab, the file's path from the
collection's root), `scrip --run-files` opens it where it stands, and the builder feeds the oracle the same file on both runs of the census.
`lispi.out` is fpc 3.2.2 -Mdelphi's answer, cut twice byte-equal in a scrubbed environment. Built by
`harness/scripts/util_build_package_suite.py corpus/packages/pascal/pascal-lisp --lang pascal --mine CENSUS.tsv` with `ALL.source` and
`ALL.stdin` written first (COO-508, COO-513, COO-514 (3); DESIGN-PLAN run-switches step 19).

THE CENSUS: 8 programs; 1 entry; 2 are units; 5 are parts of the unit `Lisp` that fpc does not compile alone. The entry is graded on
standard output and exit status. Every verdict in `ALL.omit` is a measurement and is expected to be re-run.

THE COLLECTION IS EDITED IN PLACE (the coo 2026-11-14, on Lon's word that a package we do not host is used, and may be edited, where it
stands under /home/resources; its local commit 96998fc records it). Before, the row read 0 of 0 and its answer measured nothing:
`lispi.pas` called `TLispInterpreter.Create(False)`, which registers no primitive and loads no prelude, and its input was `prelude.scm`
itself, so fpc's answer was one `unknown variable` error a form; and `lispi` was excluded NEEDS_C_LIBRARY because unit `BoehmGC` bound
libgc's GC_malloc and installed a memory manager over it. Three edits: `lispi.pas` calls `Create(True)`; `lispinterpreter.pas` sets
`LispPreludePath` to this checkout's `prelude.scm` by its absolute path, so the run's directory does not matter; `boehmgc.pas` installs
nothing (GCInstalled is False, `(boehm?)` answers #f), so the interpreter runs on the ordinary heap under fpc and SCRIP alike. The entry
is in the denominator; SCRIP's first stop on it is its own (2026-11-14: no unit IOStream, then an internal error at a scalar constant).
