# packages/snobol4/dotnet — the dotnet program set

**Origin:** in the corpus since `45cba0bea` (2026-03-11, "programs/beauty lon dotnet icon"), moved here by the re-grid `91e4465cc` (2026-08-24). Graded by `SCRIP/scripts/test_snobol4_dotnet_suite.sh` against the live oracle (`sbl -bf`); no `.ref` files. The records beside it: `OUTSIDE_SPITBOL_BASELINE.tsv` (mirrored by `UNGRADABLE.tsv`), `EXCLUDED.tsv`, `CONTAINERS.tsv`, `ALL.mask`, `ORACLE_ACCEPTANCE.tsv`.

## Conversions made once in the repo (never at grade time)

### 2026-09-28 — the leading UTF-8 BOM stripped from five programs (ceo CEO-1352, hq_snobol4)

The ruling: *strip the BOM once in the repo on the CEO-544/571 precedent, recorded in _PROVENANCE.md. The oracle gets no special copy; both engines read the same bytes.* As vendored, these five opened with the three bytes `ef bb bf`. `sbl -bf` reads them as part of the first label and stops at parse time (ERROR 214, or a crash, rc 231). So the oracle never reached the programs and they sat in `OUTSIDE_SPITBOL_BASELINE.tsv`. The only change is those three bytes, removed. Every other byte is as shipped (sha256 prefixes, before → after):

| program | before | after | what the oracle answers now |
|---|---|---|---|
| `Test.sno` | `0ebe45eab8e34b0f` | `8cd550b61fb428bb` | runs rc 0; SCRIP m3 byte-identical (grades green) |
| `Test2.sno` | `4aac8db3e9bc48d6` | `e40a3e2bc2fa1e9b` | refuses at compile, *No END statement found* (it ends in lowercase `end`); graded as a compile refusal |
| `SourceLines001.sno` | `dc64a4970ef4b82e` | `c5d11e25350095c3` | the `-LIST` listing, then *No END statement found*; `-LIST` feature debt, in the denominator |
| `SourceLines002.sno` | `47f5e8ec8c9ed231` | `93c6ec5df5782765` | the `-LIST` listing, then runs; `-LIST` feature debt, in the denominator |
| `SourceLines003.sno` | `c73489a4f55e9e61` | `7a4c060549eeed2f` | the `-LIST` listing, then runs; `-LIST` feature debt, in the denominator |

SourceLines001/002/003 print SPITBOL's `-LIST` listing. Its head names the oracle build (`macro spitbol version 4.0f`) and the time it was printed (`x86-64  <day> <mon> <dd> <hh:mm:ss> <yyyy>`). `ALL.mask` carries one identity row (CEO-1344) and one clock row (CEO-409) per program for those two lines. Nothing else in the listing is masked.

## The programs of snobol4dotnet's own tests (TestSnobol4), moved here 2026-11-19 and 2026-11-20 (seat dotnet)

Lon, in the dotnet window, 2026-11-19: "move out all the test and the harness and switch to use the $/harness and $/corpus repos. Just put all the tests inside the test-suite entitled DotNet." / "That is Snobol4Dotnet." / "Keep ones that can not move right where they are and do not touch them."; 2026-11-20: "Make sure to extract all SNOBOL4 tests (source and expected output) into corpus under the Snobol4Dotnet test-suite." / "I'm referring to TestSnobol4 folder."

### How it was cut

- Every SNOBOL4 program a TestSnobol4 test compiles was recorded as the test ran it (the test, its switches, the text, its stdin), from a run of the whole MSTest suite: 3,468 programs of 3,189 tests at snobol4dotnet 91f872e, and the same 3,468 again at d4d1ae4 on 2026-11-20 (the only differences the machine's own paths).
- One entry a distinct program (switches, text, stdin), named `<test class>__<test method>` (a second program of one method takes `__2`, and so on). `TESTS.tsv` names the test of every entry, and every other test that runs the same program.
- A test that ran its program with `-bf` is here as written. A test that ran it with `-b` (case folding on, 2,853 programs) was upper-cased, the spacing identical, by the grader's `sno_upcase_edition.py` (Lon 2026-11-15, skill snobol4 section 7) and `;end` made `;END`, since the corpus grades every engine with `sbl -bf`. Each converted program was then compared with the test's own text: `sbl -b` on the original against `sbl -bf` on the converted one, the error block's counters and the listing head masked. 2,775 read the same; the cto resolved the rest by cause (a user name written in two cases, a lower-case name inside a string handed to EVAL, CODE, TRACE, OPSYN, CONVERT or DATA, a lower-case control line), and 78 still differ only in the letters of a statement `sbl` echoes in a compile error's listing or in the dump's `&CASE` line.
- Each answer is the oracle's, `sbl -bf` twice, cut by `util_build_package_suite.py --twice`, never the C# test's own expectation. A program that prints nothing is graded by its end state: the `dump` cell, cut with `sbl -bf -D1` (Lon 2026-11-17). A program `sbl` ends with an error is an entry, its answer the error (CONTRACT.tsv `fatal gradable`).

### Counts

- entries: 2,874 (the 11 the package held, and 2,863 programs of TestSnobol4); 1,098 graded by their dump; 562 whose correct run ends nonzero (ALL.rc); 39 with a stdin (NAME.in).
- already in the corpus, so no entry here: 111 programs (DUPLICATES.tsv).
- not moved, kept in TestSnobol4: 393 programs of 294 tests. 139 LOAD a .NET or native fixture (C#, F#, VB.NET and C libraries: SPITBOL cannot load them); 91 are run with a switch outside the corpus road (`-n -k -r -l -e -m -D -cs` and the like); 77 read or write a file at an absolute path the C# test made; 42 the corpus builder does not absorb (39 name an `-INCLUDE` file the test makes, 2 answer differently on two runs, 1 does not end); 33 are compile-only (the C# test reads the compiler's structures); 11 for a stdin line ending in blanks, a subject that is case folding itself, a delegate input or TIME().
- The whole accounting, one line a captured program, is `/home/resources/progress/ports-2026-11-20/dotnet-package/MOVES.tsv` on the fleet's box.
