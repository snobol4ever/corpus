# exercism_snobol4

SnoExercism: https://github.com/exercism/snobol4, the folder exercises (the Exercism SNOBOL4 track).
Licence: MIT. Version ebd72a7 (2026-11-15). Read IN PLACE from `/home/packages/snobol4/exercism_snobol4/exercises` (`ALL.source`); no program of it is stored here.

The programs were CONVERTED IN PLACE by `sno_upcase_edition.py` (Lon 2026-11-15: "You can uppercase the keywords and function names" / "Just do a simple
regex conversion instead. Keep the spacing identical." / one folder a collection): DOS line ends made LF; built-in function names, keywords, the predefined
names, the goto letters and END, RETURN, FRETURN, NRETURN in upper case; an angle-bracket subscript with square brackets; a column-one `;`, `#`, `!` or `|`
comment mark written `*`. One character for one; every string literal and user name is left as written.

| | |
|---|---|
| programs read | 42 |
| rows | 1, each answer `NAME.out` cut twice from `sbl -bf` with identical results |
| declared out | 6 `NO_ORACLE_ANSWER` in `EXCLUDED.tsv`: 6 the oracle ends with an error |
| owed | 35: 35 print nothing on standard output |

No SCRIP reading was taken at the cut (Lon 2026-11-14: host the container with the oracle's answers, the grading comes later); the cycle grades it.
Built by `util_build_package_suite.py corpus/packages/snobol4/exercism_snobol4 --lang snobol4 --mine CENSUS.tsv --twice` (the grader 2026-11-15).

## RE-CUT 2026-11-15: AN ERROR FROM THE ORACLE IS AN ANSWER

Lon, 2026-11-15 13:3x CST, in the grader's window, verbatim: "go scrutinize all excluded SNOBOL4 programs. SNOBOL4 should be rock solid." / "You do
realize when the oracle produces and error then SCRIP should produce the same error. Yes? Do you get that?" So `CONTRACT.tsv` says `fatal gradable`
and the package was cut again from `sbl -bf`, twice, with `--mine-silent-rc`. THE COUNTS ABOVE THIS SECTION ARE THE FIRST CUT'S; THESE STAND:

| | |
|---|---|
| rows | 36: 1 print an answer; 35 print nothing and are graded by exit status |
| declared out | 6 `NO_ORACLE_ANSWER` in `EXCLUDED.tsv`: 6 answer differently on two runs |

## Re-cut 2026-11-16 01:xx CST (the grader)

Entries added: `practice/acronym/test`, `practice/hello-world/test`, `practice/isogram/test`, `practice/leap/test`, `practice/pangram/test`, `practice/raindrops/test`. Each ends with SPITBOL's error and had read DIFFERS-BETWEEN-RUNS only because SPITBOL prints its three throughput lines (`stmt / microsec`, `millisec`, `second`) when a run takes 1 ms or more; those lines are its clock and are not graded (harness 71a90580f, skill snobol4 7). Every landed answer is byte-identical.
