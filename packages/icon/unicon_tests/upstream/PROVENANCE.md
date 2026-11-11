# unicon_tests/upstream -- the distribution's own files that grade nothing here

Source: `/home/resources/unicon/tests` (the Unicon git drop d784f58, 2026-09-06; Unicon 13.3), vendored by
`harness/scripts/util_vendor_unicon_tests.sh`. See `../README.md` for the package.

Moved here on 2026-11-10 by the coo (COO-502 (g), CIO-115), each file at the path it had in the package, when the
package took the files form (a path column in `ALL.csv`, `NAME.in` and `NAME.out` beside each program):

- `<category>/stand/NAME.std` and `stand/NAME.out`: the distribution's own expected output, kept where the oracle
  (unicon 13.3 on this box) answers differently or the program is no entry. A `.std` the oracle disagrees with is a
  finding, not a grading; the graded answer is `NAME.out` beside the program, cut from the oracle.
- `Test-icon`, `Test-icont`, `Test-iconc`, the `*.lst` lists and `udb/test.sh`: the distribution's own test drivers.
- data and image files no entry reads.

Not moved, because the form now holds their bytes beside the program: every `NAME.dat` and `data/NAME.dat` that was a
program's standard input (it is `NAME.in`), and every `stand/NAME.std` equal to the oracle's answer (it is `NAME.out`).
Nothing here is run or graded. The originals stay until Lon says they go.
