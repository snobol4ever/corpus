# icon_bottles99

The 99 Bottles of Beer programs in Icon and Unicon from 99-bottles-of-beer.net, the Web Archive's copies (the live site no longer resolves), read in place from
/home/packages/icon/icon_bottles99 (the grader 2026-11-20; Lon named the source: "99 Bottles of Beer"). Cut by util_build_package_suite.py --mine, twice on the oracle.

util_icon_semicolons.py added the semicolons SCRIP's parser asked for; it still refuses both (icon-1051: "1": missing right brace or semicolon; unicon-1129: if/then: expected then (got not)), so icon-1051 reads red on SCRIP until its parser takes it; unicon-1129 defines no main (CENSUS.tsv LIBRARY), so it is no entry.
