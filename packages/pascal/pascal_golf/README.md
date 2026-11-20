# pascal_golf -- Anarchy Golf in pascal

Every revealed pascal solution of Anarchy Golf (golf.shinh.org), read in place from /home/packages/pascal/pascal_golf, each fed its problem's first test input on stdin
(ALL.stdin), cut by the oracle twice (the grader 2026-11-18; Lon: "Go mine all you can from the web-sites and events you mention.").

The oracle is fpc 3.2.2 on its mode ladder; the site's Pascal is GNU Pascal, so 482 of the 619 are refused by fpc (double-quoted strings and their escapes the most), each named in CENSUS.tsv.

Cut again 2026-11-20 with GNU Pascal, the site's own Pascal, as the last rung of the ladder (`--mine-dialects iso,fpc,objfpc,delphi,tp,gpc`; skill pascal section 1):
240 entries of 619 (gpc 135, iso 79, fpc 24, tp 2), 42 refused by both oracles, 244 whose answer changes with standard input where the site gives none, 27 that
answer differently on two runs, 11 that do not end, 55 that print nothing. A gpc entry reads red on SCRIP until SCRIP reads GNU Pascal.
