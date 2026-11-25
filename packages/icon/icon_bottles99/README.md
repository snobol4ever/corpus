# icon_bottles99

The 99 Bottles of Beer programs in Icon and Unicon from 99-bottles-of-beer.net, the Web Archive's copies (the live site no longer resolves), read in place from
/home/packages/icon/icon_bottles99 (the grader 2026-11-20; Lon named the source: "99 Bottles of Beer"). Cut by util_build_package_suite.py --mine, twice on the oracle.

`icon-1051.icn` was given the semicolons SCRIP Icon requires IN PLACE (18 by `util_icon_semicolons.py`, which does not separate the arms of a `case`, and two by hand
after `"No more bottles"` and `"One bottle"`), proved same-code by the stock Arizona translator (`CONVERSION-PROOF.tsv`: the .u1 and .u2 of `icont -s -c` of the
archived text and of the converted text byte equal; the line endings of the archived text, mixed CRLF and LF, became LF). It reads PASS on SCRIP in mode 3 against `icon-1051.out`.
`unicon-1129.icn` defines no main (CENSUS.tsv LIBRARY), so it is no entry and is left as archived.
