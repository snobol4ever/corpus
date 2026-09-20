# beauty.sno carries NO `.ref` AND THAT IS A REFUSAL, NOT AN OVERSIGHT

**hq_snobol4, 2026-09-20, under Lon's REF order (CEO-1019 item four, verbatim: *"Add a REF file for all benchmark
and tests since how would you know what you are measuring unless the output is correct."*).**

Every other SNOBOL4 benchmark and demo now carries a `.ref` cut from the GRADING oracle
(`/home/resources/x64/bin/sbl -bf`, by absolute path): benchmarks 38 of 38, demos 23 of 24. **This is the one.**

**WHAT THE ORACLE DOES WITH IT, measured from this directory:**

```
$ /home/resources/x64/bin/sbl -bf beauty.sno < /dev/null
beauty.sno(24,10) : ERROR 284 -- excessively nested include files
No END statement found in source file(s).          rc=1
```

Line 24 is the **eleventh** of its `-INCLUDE` directives (`trace.inc`).

⛔ **THE OBVIOUS EXPLANATION IS WRONG AND A CONTROL ARM SAYS SO.** "SPITBOL has a sequential-include limit
around ten" is the reading the error text invites. It is false: a generated program with **twelve** trivial
`-INCLUDE`s of twelve one-line files compiles and runs clean under the same oracle, rc=0, at 8, 9, 10, 11 and 12
includes. So the cause is **something about this include set, not the count**, and it is NOT YET NAMED.

⭐ **AND THE FIRST VERSION OF THAT CONTROL ARM PRINTED `rc=0 ok8 … ok12` WHILE MEASURING NOTHING** — the
generator used `printf '-INCLUDE …'`, where the shell's own `printf` read `-INCLUDE` as an option flag, so every
generated file contained the `OUTPUT` line and **no includes at all**. It agreed with the conclusion I was
hoping for, in the vocabulary of success. The number above is from the repaired arm, which writes the directives
through `printf '%s\n'` and whose files are grepped for `INCLUDE` before the run.

**WHY NO REF IS WRITTEN ANYWAY.** A `.ref` is cut from the oracle and never from our output. The oracle does not
produce an answer for this program, so there is nothing to cut; writing our own output here would be the one move
the law forbids, and writing the oracle's *error listing* would pin a defect in the include resolution as the
program's expected answer. **The honest state is: no ref, the reason named, and the cause explicitly open.**

**WHAT WOULD CLOSE IT** (whoever gets there first — it is a small row, not a blocker): name why this set of
eleven includes trips ERROR 284 when twelve trivial ones do not. The likely candidates, none of them measured:
one of the eleven `.inc` files under `corpus/include/` re-includes another; the oracle's include search resolves
a name to something other than the file we think it does from a cwd with no `.inc` files in it; or the error is a
misattributed symptom of an earlier failure in the same pass. ⚠️ Note that `SNO_LIB` is **our** compiler's
variable — setting it does not change where `sbl` looks, and a probe that sets it and reads the same error has
learned nothing about the oracle.
