# uni_ipl -- the Unicon program library's own programs

The programs of Unicon's `ipl/progs` and `ipl/mprogs` (`/home/resources/unicon/ipl`) whose text differs from Arizona Icon's IPL (Arizona's are the
`ipl` package's), cut by the unicon translator (CONTRACT.tsv `oracle unicon`, `unmarked_compile_args --dialect=unicon`). MEASURED 2026-11-13 by the
grader: 81 such programs, 22 of them graphics (left upstream: no window on this box), so 59 vendored with the 31 files of their link closure that
differ from Arizona's, in `procs/` and `mprocs/` (named by the contract's `ipath` lines, searched before both IPL folders, shipped as no test).

Every file carries the semicolons SCRIP Icon requires, inserted once by util_icon_semicolons.py and proved by `unicon -s -c` giving the upstream
original and the converted text the same ucode, the uid line aside (CONVERSION-PROOF.tsv). One hand edit: `procs/io.icn` isabspath, whose
`return fname` ends its `{ }` block once the preprocessor drops the `$ifdef _MS_WINDOWS_NT` lines under it, so it takes no `;` (the converter's
raw-text pass had added one; the ucode then differed). Left upstream and named there: 25 files the converter refused (the execution monitors and
their library, which `$include "evdefs.icn"` from Unicon's `ipl/mincl`, outside SCRIP's include search, and progs/xtable at the insertion cap) and 3
monitors whose link closure lost one of those files.

39 programs ship. A program whose Arizona namesake the `ipl` package grades takes that namesake's stdin (`NAME.in`), its `NAME.fixtures/` tree and
its arguments (`NAME.argv`, the program's own name dropped where Arizona's line repeats it). 22 are graded; 4 are NO_ORACLE_ANSWER (EXCLUDED.tsv:
two the oracle never finished, two it answered differently on two runs); 13 are OWED: 12 whose answer was empty with no input yet found for them,
and progs/literat, whose 8-bit source the container writer cannot hold.
