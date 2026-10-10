# Pascal demos

Whole ISO 7185 programs run on a sample input, each graded against the oracle `fpc -Miso` (FPC 3.2.2) in both SCRIP modes.
A demo is a directory `<name>/` holding the program `<name>.pas`, its standard input `<name>.in`, the oracle's output on that
input `<name>.ref`, and its declared heap and stack (`<name>.heap`, `<name>.stack`, kilobytes, name<TAB>kb).

| Demo | What it is | Source | Input |
|---|---|---|---|
| `startrek` | the classic Star Trek game | P5 sample program (`corpus/packages/pascal/p5/sample_programs/startrek.pas`, Pascal-P5's licence) | P5's `startrek.inp`, a scripted game |
| `basics` | Basic-S, S. A. Moore's tiny BASIC interpreter | P5 sample program (`basics.pas`) | P5's `basics.inp`, a BASIC program then `run` |
| `pascals` | Pascal-S, Wirth's compiler-interpreter for a Pascal subset | standardpascaline.org/source.html, "freely available programs in ISO 7185 Pascal standard form" | P5's `pascals.inp`, a Pascal-S program printing roman numerals |
| `prettyp` | the Hueras and Ledgard Pascal prettyprinter | standardpascaline.org/source.html, as above | P5's `qsort.pas`, a Pascal program to reformat |

THE REF IS THE ORACLE'S OUTPUT, cut by the ceo on 2026-10-09 (CEO-1589) with no command-line argument:

```
fpc -Miso -v0 -o<name> <name>.pas && ./<name> < <name>.in > <name>.ref
```

run twice, byte-identical both times. A file named in a program heading (Pascal-S's `srcfil`, the prettyprinter's `INPUTFILE`
and `OUTPUTFILE`) binds under `fpc -Miso` to the command-line argument of its position and, with none, to the console, so each
demo reads its sample from standard input and writes standard output (FPCSource `rtl/inc/text.inc`, `fpc_textinit_iso`).

PL/0 (Wirth, 1976, from the same page) is not a demo: its main program's `for ch := chr(0) to chr(255)` uses a control variable
that the procedure `getch` assigns, a violation of ISO 7185 6.8.3.9 that `fpc -Miso` does not check and SCRIP refuses at compile
time, as the PAT rejection tests require (CEO-1269).
