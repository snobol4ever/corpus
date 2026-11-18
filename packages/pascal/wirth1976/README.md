# wirth1976

PasWirth: the sorting programs of Niklaus Wirth's "Algorithms + Data Structures = Programs" (1976) as bonthron/wirth1976 keeps them in
Pascal (https://github.com/bonthron/wirth1976, 02cb139 of 2020-11-14; no licence file in the collection), read IN PLACE from
`/home/packages/pascal/wirth1976` (`ALL.source`); no program of it is stored here. Four programs, each sorting ten records by
key and printing the list before and after: heapsort, straight insertion, straight selection and straight exchange. They share one
unit, `TypeUtils.pas`, which is a library and no row (`EXCLUDED.tsv`).

This folder holds our index (`ALL.csv`: `path` is the path from the collection's root, `dialect` the fpc mode that cut the answer),
each entry's answer `NAME.out` cut from fpc 3.2.2 twice with identical results, and `ALL.omit`. Built by
`harness/scripts/util_build_package_suite.py corpus/packages/pascal/wirth1976 --lang pascal --mine CENSUS.tsv --twice` (the grader
2026-11-14; the census is `/home/resources/progress/handoffs/grader-2026-11-14/census_wirth1976.tsv`).

THE FIRST SCRIP READING (mode 3, SCRIP c5622f4448): 0 of 4, ONE CAUSE: `TypeUtils.pas` says `uses typinfo` (Free Pascal's run-time
type information, which it uses to print an enumeration's name), and SCRIP has no prelude unit of that name: `pascal: uses typinfo
in .../TypeUtils.pas: no unit typinfo.pas beside it and no SCRIP prelude unit of that name`.
