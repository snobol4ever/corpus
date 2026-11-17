# aisnobol (Snobol4AISnobol)

The programs of Michael G. Shafto's report *Artificial Intelligence Programming in SNOBOL4*, from its diskette of 19-Oct-87. Mark Emmer of
Catspaw, Inc. converted the report's mainframe (360/370) Spitbol code to SNOBOL4+ (`*.SNO`) and Macro Spitbol (`*.SPT`):

- `ATN`: a compiler for an Augmented Transition Network language, with its sample network `ATN.in`.
- `KALAH`: the game.
- `SIR`: Bertram Raphael's SIR, translated into SNOBOL4 with the SNOLISPIST package.
- `WANG`: Wang's algorithm.
- `HSORT`: C. A. R. Hoare's quicksort.
- `ENDING`, `TEST` and `BUILDLIB`: programs of the SNOLISPIST package, whose core is `SPITCORE.sno` and whose library loaded on demand is
  `spitlib.spt` with its index `spitlib.idx`.

The whole drop stands in `upstream/` as shipped, the diskette's own `README.DOC` with it. `upstream/PROVENANCE.md` says what the vendoring
changed (2026-09-06): CRLF line ends made LF, as the diskette asks for the Unix Spitbol; `SPITLIB.IDX` generated; and two dialect adaptations
applied at run time.

Each program runs on the oracle, `sbl -bf`, its stdin `NAME.in` and its arguments in `ALL.args`; each answer is `NAME.out`. The files this
package ships that are not programs are named in `CONTAINERS.tsv`.

8 entries, 0 excluded. The suite table read 7 of 8 on 2026-11-17.
