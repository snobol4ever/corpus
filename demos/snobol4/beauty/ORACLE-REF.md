# beauty.ref IS CUT FROM THE ORACLE -- the "no ref" refusal of 2026-09-20 is RETRACTED

**hq_snobol4, 2026-09-27, answering the coo (COO-209: "beauty/beauty.sno has no oracle ref ... OUTSIDE-BASELINE or a container?").
Ruling: NEITHER. It is a program, the oracle runs it, and it is graded like every other demo.**

**THE MEASUREMENT.** The grading oracle resolves `-INCLUDE` from its current directory. `beauty.sno` has sixteen `-INCLUDE`s
(lines 9-24) whose files live in `corpus/include/`, not beside the program. From a cwd holding `beauty.sno` plus a copy of
`corpus/include/*.inc`:

```
$ /home/resources/x64/bin/sbl -bf beauty.sno < beauty.in        # beauty.in -> ../roman/roman.sno
rc=0, 15 lines -- roman.sno re-laid on the beautifier's four tab stops = beauty.ref
$ /home/resources/x64/bin/sbl -bf beauty.sno < beauty.sno       # the workhorse input
rc=0, 618 lines, byte-identical to beauty.sno (the beautifier's own source is a fixed point)
```

The same, with DEMO-SCALE.tsv's `-d512m -i64m -s256m`: rc=0, 618 lines, identical. SCRIP mode 3 agrees byte for byte on the
sample, on the workhorse input and on `/dev/null` (SCRIP `feeda3ea9`); `test_demos_suite.sh snobol4` reads 24/24 both modes.

**WHAT THE TWO EARLIER READINGS WERE.** Run from this directory (no `.inc` beside it), the oracle cannot open the includes:
bare `-bf` printed `ERROR 284 -- excessively nested include files` at line 24 (the 2026-09-20 reading below); with the size flags
it prints a compile LISTING -- whose first lines are the page header `macro spitbol version 4.0f / x86-64 <timestamp>` -- and
exits rc=1. That header is what DEMO-SCALE.tsv recorded as "prints its version banner and stops". Both are one fact: the
includes did not resolve. ⚠️ `SNOLIB=corpus/include` did NOT cure it on this binary (ERROR 285, include file cannot be opened,
at line 9), although `spitbol.1` documents SNOLIB as the include search path -- not pursued; the copy-into-cwd cut is the one
used. The 2026-09-20 note's own third candidate ("a misattributed symptom") was the right one.

---
*Retracted note, 2026-09-20, kept for the record:* beauty.sno carried no `.ref` because `sbl -bf beauty.sno < /dev/null`
from this directory read `ERROR 284 -- excessively nested include files` rc=1, and a ref is never cut from our own output.
