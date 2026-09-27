# `corpus/packages/snobol4/gimpel/` — Gimpel's *Algorithms in SNOBOL4*, Catspaw's SPITBOL form, and the drivers that test it

## What this package is (Lon 2026-09-27, CEO-1319/1320)

Lon, in-chat to the ceo, verbatim: *"Use the \*.inc names exclusively. Ensure we have the SPITBOL dialect from the Mark Emmer's
distribution, and not the SNOBOL4 dialect."* and *"So we should vendor all SPITBOL-form files verbatum, with only uppercase
keywords/reserved-words for SCRIP acceptance."* and *"And any other edit required to get running under Linux."*

The source is Catspaw's (Mark Emmer's) Gimpel distribution v1.06, `/home/resources/gimpel`. It ships every program twice, as a
SNOBOL4 (SNOBOL4+) form and as a SPITBOL form. **This package is the SPITBOL form, all 150 files, each under its own name
lower-cased** (`NAME.INC` → `name.inc`, `ASM.SPT` → `asm.spt`, `PHRASES.IN` → `phrases.in`): 135 libraries, 10 programs and 5 data
files. The form spells all its `-INCLUDE` targets and `INPUT` file names in lower case, so lower-cased names make it run unedited
on a case-sensitive file system. Each file is the form's bytes with CR and ^Z dropped, and differs from it only where
`EDITS.tsv` declares, in one of two classes checked mechanically by `SCRIP/scripts/util_gimpel_is_the_catspaw_spitbol_form.py`:

| class | file | lines | why |
|---|---|---|---|
| `RESERVED_UPPER` | `infinip.spt` | 14 lines, 24 tokens | the form writes reserved words, its closing `end` and its `-include` lower-case; `sbl -bf` and SCRIP fold no case, and `sbl -bf` skips a lower-case `-include` outright (measured: the first call dies ERROR 022) |
| `LINUX` | `frsort.inc` | 9 | the DOS 8.3 name: the form includes `stringout.inc` and ships the file as `STRINGOU.INC` |

`timer.inc` and `timegc.inc` include `resolution.inc`, the DOS 8.3 name of `resoluti.inc`, and are deliberately **not** edited:
their whole output is wall-clock timing that never repeats, so an edit that lets them run buys a red no grade can settle (the
cfo's 2026-09-07 call, kept). The fleet's earlier copy mixed the two forms; the SNOBOL4-only files (`BAL`, `PHRASES`, the
SNOBOL4+ `INFINIP`) and our `_lib` splits and `stringout.inc` alias left with the re-vendor (corpus history has them).

## The two kinds of file

| kind | filename | what it is | scored? |
|---|---|---|---|
| **library** | `name.inc` | a `DEFINE(...)`, a `:(NAME_END)` label and the function body. No main program, no `END`, no output. | graded through its driver |
| **program** | `name.spt` | a whole program ending in `END`; `name.in` beside it is data it opens by name | graded through its driver |
| **driver** | `name_driver.sno` | ours: `-INCLUDE "name.inc"` (or `"name.spt"`) plus a main body that exercises it, ending in `END`; stdin from `name_driver.input` or `.in` | ✅ the row |

⛔ **THE PROGRAM IS THE LIBRARY; THE DRIVER IS HOW IT IS GRADED** (CEO-1269). A library's verdict is its driver's, and **its
progress key is its own file, `packages/snobol4/gimpel/name.inc` or `name.spt`** — never `NAME.sno` (CEO-1319 reversed CEO-1317).
A driver's stem is its library's stem, so both are lower-case. **Two stems ship twice**, as a program and the library it
includes: `infinip.spt`/`infinip.inc` and `rseason.spt`/`rseason.inc`. There `x_driver.sno` drives the program and
`x_lib_driver.sno` the library — the one rule every reader applies (a stem `x_lib` with no `x_lib.*` shipped names `x.inc`).
`balx.inc` and `floorcei.inc` have no driver yet (`UNGRADED.tsv`, NEEDS_DRIVER).

## ⛔ THE NAME IS THE ENUMERATION — `_driver.sno` OR IT IS NEVER SCORED

`SCRIP/scripts/scorecard_snobol4.sh` selects this suite's rows with `-name *_driver.sno`. A test named anything else is silently
invisible to the board. **If you add a test here, its filename must end in `_driver.sno`.**

## What the re-vendor changed in what runs (measured 2026-09-27, coo, sbl -bf and SCRIP mode 3, before and after)

The form's data files now resolve under their lower-case names, so four programs that used to fail to open them — and "passed"
by printing nothing, or one identical error line, in both engines — now really run:

- `rpoem.spt`, `rstory.spt` generate their text from `rpoem.in`/`rstory.in`; SCRIP drops the phrase substitutions the oracle makes.
- `poker.spt`, `stone.spt` find `phrases.in` and then play a whole interactive game on standard input; the drivers' fixtures run out
  and both engines ask again forever (`UNGRADED.tsv`, NEEDS_STDIN_FIXTURE: a fixture that plays the game to its end is owed).
- `infinip.spt` is Emmer's program, which `sbl -bf` runs; the SNOBOL4+ one it replaced was refused.

`EXCLUDED.tsv` is empty: `TRIG`, `FTRACE`, `VISIT` and `PHYSICAL` are the SPITBOL form, so `sbl -bf` refusing them is a
Catspaw-SPITBOL against x64-SPITBOL difference — debt in the denominator (`OUTSIDE_SPITBOL_BASELINE.tsv`, `UNGRADABLE.tsv`),
never an exclusion (CEO-1286's two-fold test).

## Why an oracle's exit status is not an answer

`sbl -bf` exits **0** while printing a fatal-error report for many drivers here, and exits 0 with zero output for others.
Anything grading on exit status alone adopts a SPITBOL error dump — or silence — as ground truth. The scorecard tests the oracle's
*output* for the fatal-report signature, and the drivers it refuses are named with its own error in `OUTSIDE_SPITBOL_BASELINE.tsv`.
