# `corpus/programs/gimpel/` — the Gimpel SNOBOL4 function library, and the drivers that test it

This tree holds **two different kinds of file**, and the SNOBOL4 scorecard treats them differently.
Read this before adding a file here.

## The two kinds

| kind | filename | what it is | scored? |
|---|---|---|---|
| **library module** | `NAME.INC`, `NAME.inc` or `NAME.sno` | a `DEFINE(...)` plus a `:(NAME_END)` label and the function body. **No main program, no `END` statement, no output.** | ⛔ **NO — it is not a program** |
| **driver** | `NAME_driver.sno` | `-INCLUDE "NAME.INC"` (the library's own file name) plus a main body that exercises the function and writes to `OUTPUT`, ending in `END`. | ✅ **YES — this is the row** |

Supporting files: `NAME_driver.ref` (pinned expected output) and `NAME_driver.input` (stdin, when the
driver needs one).

## The library's extension, and the progress key that does not follow it (2026-09-27)

Lon 2026-09-14, in-chat to the ceo: *"Change the *.sno to *.inc. We changed many of those names way back and we should not
have changed *.inc to *.sno for include files."* An include file carries the extension its own first line names, spelled as
its includers spell it (corpus fb0900573, `.github/scripts/corpus_restore_inc_extension.py`): **119 libraries are `NAME.INC`,
one is `stringout.inc`, and the 28 whose first line names no `.inc` stay `NAME.sno`** -- 148 libraries. Every driver is still
`NAME_driver.sno`. The runner and the inventory read all three extensions (`test_snobol4_gimpel_suite.sh`, `INV_EXT=".sno .INC .inc"`).

⛔ **THE PROGRESS KEY STAYS `packages/snobol4/gimpel/NAME.sno` FOR EVERY LIBRARY, WHATEVER ITS FILE IS NAMED** (ceo CEO-1317,
2026-09-27). It is the program's identity, derived from its driver, not a path: the progress database and the program register
name `CATA.sno` for the library shipped as `CATA.INC`. A census or population diff that reads a key as a file must strip the
extension first (as `lib_outside_shape.sh` does), and must never read one of these keys as a missing file.

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

## DOS-name alias (ours, 2026-09-07)

Upstream wrote `FRSORT.INC`'s include line as `stringout.inc` and shipped the module under the
8-character name DOS truncated it to, `STRINGOU.INC`. On Linux the long name is a different file,
so `stringout.inc` is a byte-identical alias of `STRINGOU.INC`, added so `FRSORT_driver` builds the
way it did on DOS; it is a library module, never a row, and `UNGRADABLE.tsv` names it so the
inventory sums. `TIMER.INC` and `TIMEGC.INC` have the same shape (`resolution.sno`, `system.inc`
for `RESOLUTI.INC`, `SYSTEM.INC`) but their aliases are deliberately NOT vendored: with them the
two drivers build and print wall-clock timings that never repeat, and the scorecard would grade
them live and red forever. They are ruled NONDETERMINISTIC in `UNGRADABLE.tsv` with the two-run
evidence and the scratch recipe.
