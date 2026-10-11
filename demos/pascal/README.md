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
| `scheme` | a Scheme interpreter: reader, macro expander (`define-macro`), tail-calling evaluator and its own prelude | an ISO 7185 port of Bob Appleyard's pascal-lisp (github.com/bobappleyard/pascal-lisp, Delphi, GPL-3.0-or-later; `/home/resources/pascal-demos/pascal-lisp`) | `scheme.in`, a 90-line session |
| `p4/int` | Pascal-P4's P-code interpreter running the P4 COMPILER as P-code, compiling a sample program | `corpus/packages/pascal/p4/int.pas` (the vendored, patched P4 kit, `PATCHES.md`) | `int.in`, a 27-line program (sieve, Fibonacci, gcd); `prd` the compiler's P-code |
| `p5/pcom` | Pascal-P5's compiler compiling a sample program | P5's `source/pcom.pas` after P5's own preprocessing step | `prd`, P5's sample `qsort.pas` |
| `p5/pint` | Pascal-P5's P-code interpreter running the PAT | P5's `source/pint.pas` after P5's own preprocessing step | `prd` the PAT's P-code; `pint.in` the PAT's `iso7185pat.inp` |

THE REF IS THE ORACLE'S OUTPUT, cut by the ceo on 2026-10-09 (CEO-1589) with no command-line argument:

```
fpc -Miso -v0 -o<name> <name>.pas && ./<name> < <name>.in > <name>.ref
```

run twice, byte-identical both times. A file named in a program heading (Pascal-S's `srcfil`, the prettyprinter's `INPUTFILE`
and `OUTPUTFILE`) binds under `fpc -Miso` to the command-line argument of its position and, with none, to the console, so each
demo reads its sample from standard input and writes standard output (FPCSource `rtl/inc/text.inc`, `fpc_textinit_iso`).

The prettyprinter carries ONE REPAIR, two lines, measured 2026-10-11. Its keyword and single-character searches test
`PRED(THISKEY) = UNTILSYM` and `PRED(THISCHAR) = PERIOD` before their first step. That takes the predecessor of an enumeration's
first value, an error under ISO 7185 6.6.6.4 that `fpc -Miso` does not check (it computes -1) and SCRIP refuses at run time. The
two tests read `THISKEY > UNTILSYM` and `THISCHAR > PERIOD`, the same loop exits. `fpc -Miso`'s output of the repaired program is
byte-identical to the ref cut from the original, so the ref stands.

PL/0 (Wirth, 1976, from the same page) is not a demo: its main program's `for ch := chr(0) to chr(255)` uses a control variable
that the procedure `getch` assigns, a violation of ISO 7185 6.8.3.9 that `fpc -Miso` does not check and SCRIP refuses at compile
time, as the PAT rejection tests require (CEO-1269).

## The self-hosting demos: p4/int, p5/pcom, p5/pint (Lon 2026-10-09, CEO-1579; the design CEO-1622; the coo 2026-10-10)

Each reads a program-heading file `prd` and writes `prr`, bound as `fpc -Miso` binds them: the k-th heading file other than `input`
and `output` to the k-th command-line argument (SCRIP `a749ac500`). Each `<name>.cmdline` declares the run argument `prd prr`, and `prd`
ships beside the program; `prr`, the P-code a compiler writes, is not graded. Every ref was cut twice, byte-identical, by the `fpc -Miso`
(FPC 3.2.2) build of the same source in a scratch copy of the directory: `./<name> prd prr < <name>.in > <name>.ref` (no `.in`: no input).

- `p4/int`: `int.pas` is the kit's interpreter; `prd` is generation 1 of the P4 self-host, the P4 compiler compiled by itself (SCRIP
  `08c00e5b4` running `comp.pas -- prr < comp_detab.p`, 18911 lines, the generation `test_pascal_p4_selfhost.sh` reads SELFHOST OK on). It is
  data, not a grade: the entry grades `int.pas` against the fpc build of `int.pas` on the same `prd`, and its output is the P4 compiler's
  listing of `int.in`, whose second column is the code address. P4's `comp.pas` is not an entry of its own: `fpc -Miso` refuses it
  (`comp.pas(738,48) Error: Ordinal expression expected`, `ord` of a pointer in the table printer), OUTSIDE THE BASELINE by CEO-542.
- `p5/pcom` and `p5/pint`: preprocessed exactly as P5's `bin/pascpp` and `test_pascal_p5_selfhost.sh` do it,
  `cpp -P -nostdinc -traditional-cpp -DWRDSIZ32 source/<half>.pas`. `p5/pint`'s `prd` is the PAT compiled by the fpc build of `pcom.pas`
  (49824 lines). The PAT stops at its 50th line on the oracle too, `*** Runtime error [824]: Eof on file`, after `page(ft)` and
  `reset(ft)` on its own temporary text file: that is the oracle's answer and the ref. `pint` allocates a 16-million-cell store in one
  256 MB block, so it declares a 327680 KB heap; the others run at the demos' 131072 KB.

THE WORKHORSE INPUTS, not yet declared as `.workhorse` sidecars: P4's compiler compiling itself (`comp_detab.p`, the self-host's
generation 2) and P5's compiler compiling the PAT (87 s in mode 3 on 2026-10-10, past a demo's 60 s sample budget).

## The Scheme demo: an ISO 7185 port of pascal-lisp (Lon 2026-10-09, CEO-1579; hq_pascal 2026-10-10)

`scheme/scheme.pas` is Bob Appleyard's pascal-lisp, a small Scheme written in the Delphi dialect (`fpc -Mdelphi`, classes,
exceptions, method pointers, the Boehm collector), translated to ISO 7185 so that the ruled oracle `fpc -Miso` builds it. The
interpreter is the original's: the s-expression reader, the macro expander, the evaluator over association-list environments with
proper tail calls, its thirty-four primitives, and its prelude (`source/prelude.scm`, byte for byte), which builds `define`,
`quasiquote`, `let`, `cond`, `do`, `case`, `case-lambda` and the arithmetic. What the port changes, each forced by ISO 7185 and named
in the program's head comment: a Lisp value is one variant record; strings and symbol names live in one character pool; an error is a
non-local `goto` to the nearest active `protect` activation, so `call-with-exception` (a recursive `protect`) catches as the original's
`try` does; a primitive is a code `exec` dispatches; storage comes from `new`; the prelude is a table of lines read through a port; the
interpreter is created fully loaded (the original's `lispi.pas` passes `False` and registers nothing); `load` raises an error, having no
named file to open; a real prints with fifteen significant digits and a gensym its sequence number. Licence: GPL-3.0-or-later, the
original's (`source/COPYING`).

`scheme.pas` is GENERATED: `python3 source/gen.py source/scheme.pas.in source/prelude.scm scheme.pas` writes the fixed-width string
literals ISO requires (the prelude's 390 lines, the primitive names, the error messages) into the hand-written `source/scheme.pas.in`;
the generator reproduces the committed `scheme.pas` byte for byte. `scheme.in` is a session written for the demo (recursion, closures,
named `let` and `do` loops, `define-macro` with gensyms, quasiquote, reals, errors caught and reported, multiple values, `apply`,
`eval`, `expand`); the ref was cut twice, byte-identical, by `fpc -Miso` in a scratch copy, with no argument.

DECLARED SIZE, MEASURED 2026-10-10: the demo declares a 262144 KB heap (`scheme.heap`) and the demos' 16384 KB stack. At 131072 KB SCRIP
stops with `error 204: memory overflow` in both modes; at 262144 KB both modes read SAME, two readings each (peak RSS 236 MB; the prelude
alone 100 MB, where the fpc build peaks at 25 MB for the whole session and 8.7 MB for the prelude). The factor is SCRIP's record: a
variant record holds a slot for every field of every arm (twenty here), where fpc overlays the arms. Run time on 2026-10-10 at load 10:
43 to 49 s per mode, the fpc build 0.56 s.
