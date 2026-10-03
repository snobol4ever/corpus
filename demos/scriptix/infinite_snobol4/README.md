# demos/scriptix/infinite_snobol4 — Icon generates SNOBOL4 expressions, SNOBOL4 evaluates them, SPITBOL checks every answer

Lon 2026-10-02, in-chat to the ceo, in order: *"We want these to be SCRIP demos using the triple-tick format, what I call
SCRIPtix language. We want the Icon to produce millions of snippets of SNOBOL4 expressions per second, and pass that string
over to SNOBOL4 to run through EVAL for now (or CODE eventually) to test the results. The two programs, one RANDOM and the
other EVERY."* · *"A SPITBOL program that reads one line input, EVAL, and outputs one line could work. But the attached
process from SCRIPtix would be to setup the EXEC/FORK and setup the IN/OUT PIPES."* · *"The Icon drives the generation of
SNOBOL4 expressions, passes the string to a SNOBOL4 function, which calls EVAL and communicates to the CHILD-PROCESS,
compares and reports differences."* · *"So, clone the code for the IPC sync-step monitor and use it for this COMM as
well."* · *"use all literal values and no identifiers for now ... patterns should be very exhaustive"* · *"For keywords,
every single keyword; exhaustive."* · *"So both the SCRIP program and the SPITBOL program will need to use the SETEXIT
feature to capture the strange errors and to keep on trucking."* · *"We must avoid somehow the hanging ones. Make an
exclusion list?"* · *"For each failure found, cut a ticket item for the CTO and CFO officers."* (ceo CEO-1419) · *"we'll proceed with the SCRIPtix demo using some of the same SNOBOL4 and Icon programs you've already
created, but ALL in one file, except the child processes. I suppose you could do batches, with 1024, 2048, 4096, or 8192 at a
time. This is the ULTIMATE test of SCRIPtix."* · *"I'm hoping we have the "!process" file I/O fake-out sub-process."* · *"You
could use that instead of IPC COMM's. Better DEMO since it straight SNOBOL4 feature."* (ceo CEO-1424/1425).

| file | what |
|---|---|
| `infinite_snobol4.md` | THE SCRIPtix PROGRAM, one file, SNOBOL4 first and Icon driving (Lon: *"Let's have the Icon drive but still put the S4 code first."*). The document runs like Raku (RULES.md): the SNOBOL4 section is the mainline -- it sets the evaluator's globals and DEFINEs `render()` and `check(batch, sbl, base)` -- and then the Icon section's `main` drives: per batch (`batch=` 1024, 2048, 4096 or 8192) it writes the next expressions from one generator held in a co-expression, and `check()` opens the SPITBOL child on the batch with SPITBOL's own pipe file I/O, `INPUT(.inf_oracle, 8, '!*sbl -bf inf_eval.sno < inf_batch.txt')`, EVALs every expression exactly as the child does, prints a DIFF line per disagreement and returns the count; `main` prints a line per batch and the total. Arguments: `batch=N`, `sbl=COMMAND`, and the generator's words |
| `inf_snobol4.icn` | THE GENERATOR, one program (Lon: *"combine the two programs into one. random + every together."*), two walks over each of two grammars as in `demos/icon/demo/Expressions.icn`: the RANDOM walk returns one guarded alternative per call, the EVERY walk suspends every production. EXPR is the literal-only grammar: sample integers, reals and strings (Lon's `"0" "1" "1.1" "x" "y" "z" "(matched [things])" "(" ")" "[" "]"`), the 37 keywords of SPITBOL's own variable table, every pattern primitive. MATCH is `S ? P` (Lon: *"concentrates on building interesting subject strings, probably calculator expressions ... in the form s ? ... where s is the literals mentioned and ... is the crazy all pattern combo test"*): S a literal string or a calculator expression quoted as a string, P every alternation, concatenation, grouping, `ARBNO` and `FENCE` combination of every primitive plus the calculator sets. Arguments are `key=value`: `walk=random\|every\|both kind=expr\|match\|both count= limit= seed= elimit= plimit= climit=`; none runs the sample of all four walks |
| `inf_eval.sno` | the evaluator, and the SCRIPtix program's child process: one expression per input line, `EVAL` under `SETEXIT`, one result line (`FAIL`, `ERROR n`, `INTEGER v`, `REAL v`, `STRING size text`, or the datatype) |
| `inf_exclude.tsv` | the shapes the generator never emits, each with its measurement: an expression that hangs in SPITBOL as in SCRIP is the language, not a defect |

## How it runs today

The generator runs under SCRIP in both modes and matches Arizona Icon byte for byte (the workhorse, 396,068 lines: iconx 1.70 s, SCRIP mode 3 2.27 s, one reading each, 2026-10-02); its EXPR walks reproduce the two programs it replaced, `inf_random_snobol4` and `inf_every_snobol4`, line for line. The comparison runs offline: the generator's
lines through `inf_eval.sno` under `sbl -bf` and under `scrip --stlimit` (the switch that keeps `&STCOUNT`, `&LINE` and the
other statement keywords live), then the two result streams line by line. SPITBOL evaluates about 300,000 expressions a
second.

## The SCRIPtix program

`infinite_snobol4.md` puts the SNOBOL4 section first and lets Icon drive, under the SCRIPtix entry rule Lon settled the same evening
(RULES.md FACT RULE: the document runs like Raku -- every section's flat top-level code once in file order, then its one `main`).
Each half is proven alone: the Icon section under iconx with a stub `check()` prints the `.ref` (1,831 expressions in two batches),
and the SNOBOL4 section under SPITBOL itself, its child through a `!` pipe, checks the sample with no difference. Under SCRIP it
waits on two cto rows: the entry rule (SCRIP runs only the first section today) and Icon calling a function the SNOBOL4 section
DEFINEs. Evaluating inside `check()` puts `&FNCLEVEL` and `&RTNTYPE` one function level from the child's flat loop, so the
Icon section's exclusion list names them. SPITBOL's `!command` file I/O landed in SCRIP for this program (SCRIP 54fc36a3d), and the
oracle's own pipes, broken by an off-by-one in osint `getshell.c` that upstream 4.0f shares, are cured in the build staged for Lon with
ORD (`.github/scripts/install_ord_and_pipes_into_the_spitbol_oracle_ceo_1424.sh`). The first runs, SNOBOL4 driving, found three SCRIP
defects, each a row: a pattern match compiled after a call into the Icon section crashes, `EVAL` of `FENCE(ARB)` jumped to address 2
(cured, 3f2c4dd47), and a bare `FENCE` as an alternation arm overflows the stack.

## What it found (2026-10-02, SCRIP 7b35f95f2)

The random set, 19,251 expressions, agrees on 6,566. The exhaustive set at 3 tokens, 395,964 expressions, agrees on 75,940.
Every difference falls into one of eleven classes, each a ticket with its witnesses, routed to the cfo and the cto:

| class | owner |
|---|---|
| `EVAL` of text that does not compile raises SPITBOL's syntax error; SCRIP fails the `EVAL` | cfo |
| `SETEXIT`-trapped errors leak stack (ERROR 246 after about 480) and stop raising after 32 | cfo |
| two non-numeric arithmetic operands: SCRIP reports the other operand's error number | cfo |
| real zero divided by zero is `0.` in SPITBOL, error 262 in SCRIP | cfo |
| real to string: the last digit, and a real in a match loses its trailing point | cfo |
| `ANY` `NOTANY` `SPAN` `BREAK` `BREAKX` of the null string are errors in SPITBOL | cto |
| unary `^` is an undefined operator, error 29; SCRIP passes the operand or exits | cto |
| a pattern as the subject of a match is error 241 | cto |
| a match inside `EVAL` that fails after a backtrack point, or meets `ABORT`, crashes SCRIP | cto |
| a deferred expression in a pattern is evaluated at match time; SCRIP matches the null string | cto |
| the value of a pattern-match expression | cto |

The exclusion list grew by measurement: powers to `&STLIMIT`, which SPITBOL takes minutes to compute, and the seven keywords
that name the evaluating program (`&LINE`, `&LASTLINE`, `&FILE`, `&LASTFILE`, `&STNO`, `&LASTNO`, `&STCOUNT`), which two
programs can never agree on. Every keyword agrees under `--stlimit` when one program asks both engines.
