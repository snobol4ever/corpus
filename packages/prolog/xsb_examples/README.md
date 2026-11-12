# xsb_examples

XSB's own examples (https://git.code.sf.net/p/xsb/code, LGPL 2 or later), read IN PLACE from `/home/resources/prologs/xsb/XSB/examples` (`ALL.source`); no file of it is
stored here (CIO-92, CIO-96). This folder holds our index (`ALL.csv`), each entry's answer `NAME.out` cut from xsb 5.0.0, `ALL.omit`, which names every program that
is no entry with its verdict, and OUR OWN driver `drive.P` with the launch line that names it (`ALL.launch`, CIO-83). Built by
`harness/scripts/util_build_package_suite.py corpus/packages/prolog/xsb_examples --lang prolog --mine CENSUS.tsv --mine-dialects xsb` (COO-508, COO-513).

THE DRIVER (Lon 2026-11-11: "Make drivers for library ones, and run the others. Let's get these GRADED."). An example defines predicates and names in a comment the goal
to type, so nothing runs when it is loaded: consulted alone, 82 of the 90 print nothing. `ALL.launch` says `oracle around - drive.P` and `scrip around - drive.P`: each
engine consults the example and then the driver, which calls the example's own entry goal, `demo/0`, `test/0`, `main/0` and `go/0`, each only when the example defines
it, and prints which it calls and how each ended (yes, no, or the ball raised). It prints nothing when the example defines none of the four: such an example is no test.
The driver lists no predicate: an engine's own helper predicates are not the example's (XSB's compiler makes one for an if-then-else).

THE CENSUS (xsb 5.0.0, 2026-11-11, each program twice in a scratch copy of its folder and a scrubbed environment): 90 programs; 6 entries (`fib`, `first`, `houses`,
`qsort`, `shortest_path`, `XSB_calling_c/fibp`); 69 print nothing (no entry goal of the four names: the socket, thread, subprocess and xmc examples are servers,
clients and libraries); 6 answer differently twice (`ham`, `lips_mega`, `mandel`, `map`, `nrev`, `queens` print the time they took); 5 run the machine's C compiler; 3
fetch a page from the network; 1 changes with standard input. An entry is graded on standard output and exit status. Every verdict in `ALL.omit` is a measurement and
is expected to be re-run. 2026-11-12, the cfo: `XSB_calling_c/fibp` left the entries for `EXCLUDED.tsv` as NEEDS_C_LIBRARY (its answer needs XSB's C foreign module `fibr.c`, which calls back into the engine), so 5 entries are graded. NOT BUILT: a mask for the six that print a time; entry goals under other names.
