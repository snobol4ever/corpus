# eliza_prolog (PrologEliza)

Elisa, Martin Mareš's psychotherapist chatbot in SWI-Prolog (https://github.com/maresmar/eliza, commit 6809f5c of 2017-05-02; MIT, `LICENSE`
copied here): `elisa.pl` with its rules, `reply.rules` and `simplification.rules`. The upstream README is `UPSTREAM-README.md`.

It is run as its README says (`consult("elisa.pl")`, then `elisa`): the program, then our driver `drive.pl` (power_of_prolog's, copied),
which calls the predicate `ALL.args` names, `elisa`, once and prints how the call ended (`ALL.launch`). THE INPUT IS OURS: `elisa.in`, five
sentences to the therapist and the goodbye the program ends on. The answer was cut from swipl 9.0.4 twice a second apart by the mine road
(`util_build_package_suite.py --mine --twice`), identical; the program draws no random reply.

The first SCRIP reading (mode 3, SCRIP 38179ce886, on the landing's worktree): 0 of 1. SCRIP prints the double-quoted text of `out/1` as a
list of codes, where SWI-Prolog 7 reads a string, and the run ends in an `existence_error`.
