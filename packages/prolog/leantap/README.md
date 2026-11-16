# leantap (PrologLeanTAP)

leanTAP, the theorem prover for classical first-order logic of Bernhard Beckert and Joachim Posegga (1994; "probably the smallest theorem
prover around: the original leanTAP program is only about 12 lines of Prolog"), with its own test data, 50 formulas (`leantest.pl`: the
Pelletier problems and Overbeek's), each with the variable limit the authors give it. https://www.uni-koblenz.de/~beckert/leantap/

NOT HOSTED: the distribution states no licence, so its four files (`leantap.pl`, `nnf.pl`, `unify.pl`, `leantest.pl`) are read in place from
`/home/resources/prolog-demos/provers/leantap`, by their full path.

ONE DRIVER A FORMULA, OURS: `fml_NAME.pl` loads the three modules, takes the formula NAME from the test data, puts it in negation normal form
with leanTAP's own `nnf/2`, gives it to `prove/2` at the stated limit, and writes `NAME proved` or `NAME not proved`. leanTAP's own driver,
`provefml/1`, prints the milliseconds each proof took, which no two runs share; ours prints the verdict alone.

THE ANSWERS were cut from swipl 9.0.4 twice, with identical results, by `util_build_package_suite.py --lang prolog --twice` (TIMEOUT=60; the
grader 2026-11-15): 48 entries; `fml_pel47` and `fml_overbeek4` run past the limit (`EXCLUDED.tsv`).

The first SCRIP reading (mode 3, SCRIP 38179ce886, on the landing's worktree): 48 of 48.
