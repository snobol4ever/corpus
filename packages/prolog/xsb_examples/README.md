# xsb_examples

XSB's own examples (https://git.code.sf.net/p/xsb/code, LGPL 2 or later), read IN PLACE from `/home/resources/prologs/xsb/XSB/examples` (`ALL.source`); no file of it is
stored here (CIO-92, CIO-96). This folder holds our index (`ALL.csv`) and `ALL.omit`, which names every program that is no entry with its verdict. Built by
`harness/scripts/util_build_package_suite.py corpus/packages/prolog/xsb_examples --lang prolog --mine CENSUS.tsv --mine-dialects xsb` (COO-508, COO-513).

THE CENSUS (xsb 5.0.0, 2026-11-11): 90 programs; 0 entries. Each program is consulted by xsb and xsb halts (`xsb --noprompt --quietload --nobanner -e
"consult('NAME'), halt."`), twice, in a scratch copy of its folder and a scrubbed environment. 82 print nothing: an example defines predicates and its text tells the
reader which goal to type, so nothing runs when it is loaded. 5 run the machine's C compiler (the four make files of `c_calling_XSB`, and `libwww/testsuite.P`, which
imports from a package written in C). 3 fetch a page from the network (`curl/curltest.P`, `sgml/sgmltest.P`, `xpath/xpathtest.P`). With no answer from the oracle there
is no entry, and the index has no row.

WHAT A SUITE OF THESE WOULD NEED, not built: the goal each example's own comments name (for `fib.P`, `queens.P`, `nrev.P` and the like), called after the consult by a
driver, one launch line a package (`ALL.launch`). The 83 `.ok` files the distribution ships are the expected output of the sgml, xpath and rdf package tests, which need
those C packages built and the network. Every verdict in `ALL.omit` is a measurement and is expected to be re-run.
