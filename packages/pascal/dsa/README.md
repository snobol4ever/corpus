# dsa

Toczak/DSA, data structures and algorithms in Pascal (https://github.com/toczak/DSA, no licence file in the collection), read IN PLACE from `/home/resources/pascal-demos/DSA` (`ALL.source`); no program of it is stored
here (CIO-92, CIO-96). One of the six collections that were the banner row PasSets until 2026-11-11 (Lon: "So since they are six things, make
them six items on the banner."). This folder holds our index (`ALL.csv`: `path` is the path from the collection's root, `dialect` the fpc mode
that cut the answer), each entry's answer `NAME.out` cut from fpc 3.2.2 in a scrubbed environment, and `ALL.omit`, which names every program
that is no entry with its verdict. Built by `harness/scripts/util_build_package_suite.py corpus/packages/pascal/dsa --lang pascal --mine CENSUS.tsv --mine-dialects fpc,objfpc,delphi,tp --twice`
(COO-508, COO-513; the ladder starts at fpc's own mode because these are Lazarus programs, not ISO ones: `fpc -Miso` accepts their var part after their
routines, which ISO 7185 6.2.1 refuses and SCRIP refuses with it, and pads integers to width 10 where fpc's own mode does not; officer_04 2026-11-12).

THE CENSUS: 11 programs; 5 entries; 5 need a display (crt); 1 clock-seeded (Recursion/Zadanie4 calls randomize; fpc answered Max 99, 98, 100, 97, 100
in five runs, junior_05 2026-11-12). The five Recursion programs that read standard input are fed our own `NAME.in` beside their answer (one or two
integers and the blank line their closing readln takes), written by hand before the census. An entry is a program fpc answers the same twice inside 60 s,
with something on standard output; it is graded on standard output and exit status. Every verdict in `ALL.omit` is a measurement and is expected to be re-run.
