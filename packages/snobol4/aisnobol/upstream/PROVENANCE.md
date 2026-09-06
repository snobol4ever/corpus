# AI-SNOBOL (Shafto) — complete upstream drop, vendored 2026-09-06 by hq_T

Source on this box: `/home/satirical/SNOBOL-history/AI-SNOBOL/`. Michael G. Shafto, *Artificial
Intelligence Programming in SNOBOL4* (report + diskette, 19-Oct-87). `README.DOC` here is the
diskette's own README and is the authority on how these files are meant to be used.

## What changed in vendoring, and nothing else

**Every file had CRLF stripped to LF.** That is not cosmetic — it is the drop's own instruction:
*"Spitbol files must be converted to line-feed terminated records to operate under the Un\*x version
of Spitbol-68K."* Fed as shipped, every `.SPT` dies at its first line with `ERROR 230 -- syntax
error: illegal character`, which is how four of these programs came to be filed as
`ORACLE_REFUSES`. Content is otherwise byte-for-byte upstream.

`SPITLIB.IDX` is the ONE file not in the drop (only the SNOBOL4+ `SNOLIB.IDX` ships). It is
GENERATED, not upstream: `BUILDLIB.SPT` builds it, but needs `SET()`, which our oracle lacks. The
generator that produced it was validated by reproducing the shipped `SNOLIB.IDX` from `SNOLIB.INC`
byte-for-byte — 133/133 entries, identical offsets — before being pointed at `SPITLIB.SPT`. (The
shipped file prints a trailing `.` on 5-digit offsets, a DOS-era formatting artifact; ours does not.)

## Two dialect adaptations SNOLISPIST needs, applied at RUN time, not vendored in

Both belong to the 1987-vs-modern Spitbol gap and neither is a SCRIP defect:

1. **`SPITCORE.SPT` DEXTERNs six functions our Spitbol already has as builtins** — `ATAN COS EXP SIN
   SQRT TAN` — so `DEFINE` raises `ERROR 248 -- attempted redefinition of system function`. This is
   a *deliberate* SPITBOL restriction (manual, Features Not Implemented #1), independently measured
   the same day by hq_P across seven Gimpel programs. Suppress those six DEXTERNs; the builtin is
   the superset.
2. **`SPITCORE.SPT:122`'s `SET(15,POS,0)` seek is only an optimisation.** `LOADEX1` at 126-128
   already scans the library sequentially for the label, so reopening the library at offset 0 gets
   the same result more slowly. The index is then needed only for the existence check.

With both applied, SIR runs clean (1704 bytes) and TEST runs clean (14108 bytes).

## Drivers — the part that was missing

| program | driver | note |
|---|---|---|
| ATN | `< ATN.IN` | header: *"Sample input in the ATN source language is contained in file ATN.IN"* |
| ENDING | `< ENDING.IN` | |
| HSORT | **argv**, `sbl -bf HSORT.SPT HSORT.IN` | line 60 is `INPUT(.INPUT,1,HOST(0))` — the filename is a PARAMETER, not stdin. Graded on stdin it reports `ERROR 067 array dimension is zero`, which is its error path, not its behaviour |
| KALAH | none (interactive) | runs clean to its prompt |
| SIR, TEST | `< SIR.IN` / `< TEST.IN` + `SPITCORE.SPT` | |
| WANG | `< WANG.IN` | |
| BUILDLIB | `< SNOLIB.INC` (see `BUILDLIB.BAT`) | needs `TELL()`/`SET()`; our oracle has NEITHER, so this is the one program of the eight with no ground truth |

`REPORT1.DOC` / `REPORT2.DOC` (the report text, ~370KB) were deliberately NOT vendored; they are
prose, not code, and remain at the source path above.
