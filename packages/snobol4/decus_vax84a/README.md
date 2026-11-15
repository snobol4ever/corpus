# decus_vax84a

SnoDecus: the 13 sample programs of Wendell Turner's VAX-11 SNOBOL4 (SIL 3.11 for VMS) from DECUS VAX SIG tape VAX84A, [SDC.SNOBOL]
(https://www.digiater.nl/openvms/decus/vax84a/sdc/snobol/, fetched 2026-11-15; no licence stated, its readme says "Feel free to
modify"), read IN PLACE from `/home/resources/collections/snobol4/decus-vax84a` (`ALL.source`). No program of it is stored here.

The programs are written in lower case for a folding SNOBOL4, and the oracle, `sbl -bf`, is case-sensitive. So they were CONVERTED IN
PLACE by `sno_upcase_edition.py` (Lon 2026-11-15: "You can uppercase the keywords and function names to get DECUS and others like it
to work." / "Just do a simple regex conversion instead. Keep the spacing identical."): built-in function names, keywords, the predefined
names, the goto letters and END, RETURN, FRETURN, NRETURN in upper case, an angle-bracket subscript with square brackets, DOS line ends
made LF; one character for one, every string literal and user name left as written.

| | |
|---|---|
| programs | 13 |
| rows | 1, `fact` (the table of factorials), its answer cut twice from `sbl -bf` |
| declared out | 12 `NO_ORACLE_ANSWER` in `EXCLUDED.tsv`: 8 the oracle ends with an error and 4 end with an error whose text differs between two runs. The text is VAX SNOBOL4's, not SPITBOL's: file associations SPITBOL refuses (errors 116 and 160), lower-case names inside the strings handed to TRACE and OPSYN, and one undefined function |

No SCRIP reading was taken at the cut (Lon 2026-11-14); the cycle grades it. Built by
`util_build_package_suite.py corpus/packages/snobol4/decus_vax84a --lang snobol4 --mine CENSUS.tsv --twice` (the grader 2026-11-15).

## RE-CUT 2026-11-15: AN ERROR FROM THE ORACLE IS AN ANSWER

Lon, 2026-11-15 13:3x CST, in the grader's window, verbatim: "go scrutinize all excluded SNOBOL4 programs. SNOBOL4 should be rock solid." / "You do
realize when the oracle produces and error then SCRIP should produce the same error. Yes? Do you get that?" So `CONTRACT.tsv` says `fatal gradable`
and the package was cut again from `sbl -bf`, twice, with `--mine-silent-rc`. THE COUNTS ABOVE THIS SECTION ARE THE FIRST CUT'S; THESE STAND:

| | |
|---|---|
| rows | 11: 1 print an answer; 6 end with SPITBOL's run-time error and are graded on its text and exit status; 4 are refused at compile time (exit 231) and are graded on the line and code of each diagnostic |
| declared out | 2 `NO_ORACLE_ANSWER` in `EXCLUDED.tsv`: 2 answer differently on two runs |
