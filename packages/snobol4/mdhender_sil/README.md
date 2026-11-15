# mdhender_sil

SnoSil: the 22 SNOBOL4 test programs of Michael D Henderson's SIL interpreter in Go (https://github.com/mdhender/sil at 398c46e,
`internal/programs/sno`; BSD 2-Clause), read IN PLACE from `/home/resources/collections/snobol4/mdhender-sil` (`ALL.source`). No program
of it is stored here.

| | |
|---|---|
| programs | 22 |
| rows | 13, each answer `NAME.out` cut twice from `sbl -bf` with identical results |
| declared out | 8 `NO_ORACLE_ANSWER` in `EXCLUDED.tsv`: 6 the oracle ends with an error (they are the collection's error cases: an undefined label, an undefined function, the statement limit, a stack overflow, and two that redefine a system function), 2 that answer differently on two runs |
| owed | 1, `noend.sno`: nothing on standard output, its error is on standard error alone |

MEASURED 2026-11-15: all 13 answers equal the collection's own `NAME.out` byte for byte. CHANGED IN PLACE (skill snobol4 section 7, Lon 2026-11-14: an angle-bracket subscript is rewritten with square brackets where the package lives; the cqo 2026-11-15, row snobol4-sil-doors-and-sieve-spell-their-subscripts-with-square-brackets): `doors.sno` and `sieve.sno` spell `NAME<...>` as `NAME[...]`, one character for one (2 and 3 lines), since SCRIP refuses the angle form by the ruling of 2026-10-02; `sbl -bf` answers the same bytes for both spellings, each cut twice, equal to `doors.out` and `sieve.out`, so no answer moved. No SCRIP reading was taken at the cut (Lon
2026-11-14: host the container with the oracle's answers, the grading comes later); the cycle grades it. Built by
`util_build_package_suite.py corpus/packages/snobol4/mdhender_sil --lang snobol4 --mine CENSUS.tsv --twice` (the grader 2026-11-15).
