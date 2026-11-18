# pascaline

PasClassic: three classic Pascal programs from Scott Moore's Standard Pascaline site (https://www.standardpascaline.org/source.html, as
the coo fetched them on 2026-10-09; `links.txt` in the collection names each file; no licence file in the collection), read IN PLACE
from `/home/packages/pascal/pascaline` (`ALL.source`); no program of it is stored here.

| row | the program | its input, ours |
|---|---|---|
| pascals | Wirth's Pascal-S, the subset compiler and interpreter of 1975, as converted to ISO 7185 by S. A. Moore | `pascals.in`: a Pascal-S program, a sieve of the primes below 60 and a recursive gcd |
| plzero | Wirth's PL/0 compiler with code generation and its interpreter | `plzero.in`: a PL/0 program, factorial, a power of two and Fibonacci by three procedures |
| prettyp | the Pascal pretty-printer of Hueras and Ledgard | `prettyp.in`: a four-line Pascal program written on long lines |

Each program reads its text from standard input, so each row has a `NAME.in` of ours beside its answer; the inputs are small programs
written for this package (the PL/0 of this compiler has no `<=`, so the loop tests are written `i < n + 1`). So a row is a compiler or
a formatter at work: Pascal-S lists, compiles and runs the sieve; PL/0 lists the program, prints its code and every value stored.

This folder holds our index (`ALL.csv`: `dialect` is the fpc mode that cut the answer, iso for all three), each answer `NAME.out`
cut from fpc 3.2.2 twice with identical results, `ALL.omit` and `EXCLUDED.tsv`. Built by
`harness/scripts/util_build_package_suite.py corpus/packages/pascal/pascaline --lang pascal --mine CENSUS.tsv --twice` (the grader
2026-11-14). NOT ROWS: `Chess05.pas` (fpc compiles it in no mode: a double quote where Pascal wants an apostrophe), `basics.pas` (a
BASIC interpreter) and `startrek.pas`, which wait at a prompt for ever with no input; each of those two enters when it has a scripted
session of ours.

THE FIRST SCRIP READING (mode 3, SCRIP c5622f4448): 0 of 3, three causes. `plzero`: SCRIP refuses the program where fpc -Miso takes
it, `ISO 7185 6.8.3.9 violation ... for-statement control-variable 'ch' is threatened at line 70`. `prettyp`: a run-time error,
`ISO 7185 6.6.6.4: pred(x) of the smallest value of its type -- the value -1 is outside 0..32`, a range check fpc does not make.
`pascals`: it runs and its output differs.
