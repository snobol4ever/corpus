# TeX, Knuth's typesetter, as an ISO 7185 program (Lon 2026-10-10, CEO-1609; hq_pascal 2026-11-04)

`tex.pas` is Donald Knuth's `tex.web` (TeX 3.141592653) tangled with a change file and run as INITEX: it loads Knuth's `plain.tex` and Liang's
`hyphen.tex`, then typesets `story.tex` (the sample of The TeXbook, chapter 1) and `sample.tex` (a small document written for this demo: a
display equation, a table, a footnote, hyphenated paragraphs, three pages). `fpc -Miso` (FPC 3.2.2) builds it with no change; SCRIP runs it in
both modes and prints what the oracle's build prints, byte for byte.

| File | What it is |
|---|---|
| `tex.pas` | GENERATED, never edited: `python3 source/gen.py tex.pas` reproduces it byte for byte (`--check` compares) |
| `tex.in` | the terminal input: `\input plain \input story \input sample \end` |
| `tex.ref` | the oracle's output on `tex.in`, cut twice, byte-identical: `fpc -Miso -v0 -otex tex.pas && ./tex < tex.in > tex.ref` |
| `tex.heap`, `tex.stack` | the declared arena, kilobytes |
| `source/tex.web` | Knuth's `tex.web`, unchanged (the copy `/home/resources/pascal-demos/tex/tex.web`, TeX Live 2023) |
| `source/tex.ch` | the change file: the whole port, one `@x ... @y ... @z` entry per place; the system-dependent part of TeX, as Knuth intends |
| `source/gen.py` | the two steps TANGLE cannot do, below |
| `source/plain.tex`, `hyphen.tex`, `story.tex`, `tfm/*.tfm` | the documents and the 47 Computer Modern metric files plain.tex loads, unchanged, from TeX Live 2023 |
| `source/sample.tex` | the demo's own document |

## The output

The terminal transcript (what TeX writes to the terminal), then a line `DVI <n>` and the device-independent file as lines of 32 bytes in
hexadecimal, each line led by its offset. To read the DVI: strip the offset and the blank, `xxd -r -p`, and run `dvitype`.
CROSS-CHECK (2026-11-04): the system `tex -ini -jobname=plain` (web2c, TeX Live 2023) on the same input writes a DVI of the same 2,348 bytes,
byte-identical to this program's once the date in the preamble comment is masked (this program fixes the date, 4 July 1776 12:00, as the TRIP
test does, so the file is deterministic). It is a second reading beside the transcript, and the ref carries both.

## What the port changes (everything in `source/tex.ch`)

ISO 7185 has no way to open a file by name: a program heading file binds to a command-line argument or to the console, and any other file is
anonymous. TeX opens `plain.tex`, the string pool and the font metric files by name, so the port EMBEDS them:

- the files are replaced by `embedded documents`: `TEX.POOL` (the pool TANGLE writes beside the program), `plain.tex`, `hyphen.tex`,
  `story.tex`, `sample.tex` and 47 `.tfm` files live in one text table that `a_open_in` and `b_open_in` look up by file name, as TeX asks for them
  (`\input plain`, `\font\tenrm=cmr10`). A text document is stored as one length character then the line; a metric file as hexadecimal.
- the terminal is `input` and `output`: `input_ln` reads the standard input a character at a time, `update_terminal` and `clear_terminal` are empty;
- the transcript file is not kept (`wlog` is empty) and `\write` to a file goes nowhere; the messages TeX prints to the terminal are unchanged;
  the DVI file is held in memory and dumped as hex after the run; `\dump` and `&format` loading are not reached.
- `input` is a numeric macro in `tex.web`, so the program writes `Input` (TANGLE is case sensitive, Pascal is not).

`source/gen.py` does what a change file cannot: it rewrites every `others:` case arm (80 of them; Pascal-H's default, not ISO 7185) into
`begin if <the selector is one of the labels> then case ... end else <the default> end`, and it splices the embedded documents (920
literals of 240 characters) into the stub `procedure embload;begin end;`, because TANGLE does not honour `@i` inside a change file.

Not claimed: this program has not run the TRIP test; the dropped log and `\write` files are its only visible differences from a Knuth TeX run.

## Licences

TeX, `tex.web`, `plain.tex`, `story.tex` and the Computer Modern files are Knuth's, `hyphen.tex` is Liang's with Knuth's, each free to copy
unchanged; they are shipped unchanged from TeX Live 2023, so no file here is a modified TeX under the name TeX except by a change file, which
Knuth's rules for TeX allow for the system-dependent part. `tex.ch`, `gen.py`, `sample.tex` and this file are the demo's own.

## What SCRIP showed

Two valid ISO forms in the port failed in SCRIP and were cured, not routed around (row `pascal-an-array-of-inline-packed-char-rows-dies-6-5-3-2-
and-get-of-the-standard-input-is-an-unresolved-call-found-porting-tex-ceo-1609`): the rows of `array[1..n] of packed array[1..m] of char` were
never allocated, and `get(input)` was an unresolved call. DECLARED SIZE, MEASURED 2026-11-04 in mode 3: a heap of 40960 KB stops with `HARD CAP REACHED`, 49152 KB passes, so the demo declares 65536 KB; a
stack of 1024 KB passes, so it declares 4096 KB. The sample runs in about 13 s in mode 3 (the compile of six thousand lines is most of it) and in
under a second as a compiled binary.

THE WORKHORSE (not yet declared as a `.workhorse` sidecar): a long public-domain document in plain TeX typeset the same way.
