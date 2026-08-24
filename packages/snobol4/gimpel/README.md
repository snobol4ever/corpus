# `corpus/programs/gimpel/` — the Gimpel SNOBOL4 function library, and the drivers that test it

This tree holds **two different kinds of file**, and the SNOBOL4 scorecard treats them differently.
Read this before adding a file here.

## The two kinds

| kind | filename | what it is | scored? |
|---|---|---|---|
| **library module** | `NAME.sno` | a `DEFINE(...)` plus a `:(NAME_END)` label and the function body. **No main program, no `END` statement, no output.** | ⛔ **NO — it is not a program** |
| **driver** | `NAME_driver.sno` | `-INCLUDE "NAME.sno"` plus a main body that exercises the function and writes to `OUTPUT`, ending in `END`. | ✅ **YES — this is the row** |

Supporting files: `NAME_driver.ref` (pinned expected output) and `NAME_driver.input` (stdin, when the
driver needs one).

## ⛔ THE NAME IS THE ENUMERATION — `_driver.sno` OR IT IS NEVER SCORED

`SCRIP/scripts/scorecard_snobol4.sh` selects this suite's rows with `-name *_driver.sno`.
A test named anything else is silently invisible to the board: it will not be run, will not appear in
`results.tsv`, and will not show up as a failure either. **If you add a test here, its filename must end
in `_driver.sno`.** (Before s191 the suite was enumerated with `-name *.sno`, which made all 145 library
modules into rows; 135 of them scored UNSCR and 10 scored against garbage. See below.)

## Why a module is not a row

A module has no `END` statement, so it is not a compilable program. The oracle agrees: `sbl -bf` on a
module exits **1** with zero output for 134 of the 145 here — correctly unscoreable. The instructive part
is the other eleven, because **an oracle that cannot run your program does not always say so**:

- **10 modules exit 0 while printing a fatal error report** (`ERROR 042/116/156/160/199/248`) instead of
  program output. Anything grading on exit status alone adopts a SPITBOL error dump as ground truth.
- **2 modules exit 0 with zero output**, which matches an engine that also produced nothing — a pass that
  proves nothing (`BCD_EBCD`, `L_ONE`).

The scorecard now tests the oracle's *output* for the fatal-report signature, not just its exit status.

## ⭐ THE DIALECT TRAP — `INPUT`'s FILENAME IS THE **THIRD** ARGUMENT HERE

Many programs in this tree are written for **SNOBOL4+**, which puts the filename in `INPUT`'s **fourth**
argument. **Catspaw SPITBOL — the oracle — takes it as the THIRD** (manual v3.7 p.12 and p.224; the SNOBOL4+ compatibility appendix is p.268). So

```
	INPUT(.INPUT,5,,'phrases.in')      * SNOBOL4+ : filename 4th -> Catspaw sees an EMPTY file spec
```

hands the oracle an empty specification and dies with **`ERROR 116 -- inappropriate file specification for
input`** — after printing whatever came before it, and *still exiting 0*. Moving the name to the third
argument makes the identical program run clean. This is the single largest cause of the fatal reports
above; it is a dialect mismatch in the source, **not** a SCRIP defect and **not** an oracle bug.

⛔ **Do not "fix" these by editing the corpus to match one engine.** Deciding whether this tree should be
ported to Catspaw's `INPUT` form is a corpus-policy question for Lon, not a side effect of a harness rung.
