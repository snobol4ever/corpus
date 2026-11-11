# cocor-pascal

The Coco/R compiler generator in Pascal (https://github.com/norayr/cocor_pascal, no licence file in the collection), read IN PLACE from `/home/resources/pascal-demos/cocor_pascal` (`ALL.source`); no program of it is stored
here (CIO-92, CIO-96). One of the six collections that were the banner row PasSets until 2026-11-11 (Lon: "So since they are six things, make
them six items on the banner."). This folder holds our index (`ALL.csv`: `path` is the path from the collection's root, `dialect` the fpc mode
that cut the answer), each entry's answer `NAME.out` cut from fpc 3.2.2 in a scrubbed environment, and `ALL.omit`, which names every program
that is no entry with its verdict. Built by `harness/scripts/util_build_package_suite.py corpus/packages/pascal/cocor-pascal --lang pascal --mine CENSUS.tsv`
(COO-508, COO-513).

THE CENSUS: 19 programs; 2 entries; 16 are units, 1 needs input. An entry is a program fpc answers the same twice with standard input closed, inside 60 s, with something on standard
output; it is graded on standard output and exit status. Every verdict in `ALL.omit` is a measurement and is expected to be re-run.
