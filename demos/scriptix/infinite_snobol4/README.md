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
exclusion list?"* · *"For each failure found, cut a ticket item for the CTO and CFO officers."* (ceo CEO-1419).

| file | what |
|---|---|
| `inf_snobol4.icn` | THE GENERATOR, one program (Lon: *"combine the two programs into one. random + every together."*), two walks over each of two grammars as in `demos/icon/demo/Expressions.icn`: the RANDOM walk returns one guarded alternative per call, the EVERY walk suspends every production. EXPR is the literal-only grammar: sample integers, reals and strings (Lon's `"0" "1" "1.1" "x" "y" "z" "(matched [things])" "(" ")" "[" "]"`), the 37 keywords of SPITBOL's own variable table, every pattern primitive. MATCH is `S ? P` (Lon: *"concentrates on building interesting subject strings, probably calculator expressions ... in the form s ? ... where s is the literals mentioned and ... is the crazy all pattern combo test"*): S a literal string or a calculator expression quoted as a string, P every alternation, concatenation, grouping, `ARBNO` and `FENCE` combination of every primitive plus the calculator sets. Arguments are `key=value`: `walk=random\|every\|both kind=expr\|match\|both count= limit= seed= elimit= plimit= climit=`; none runs the sample of all four walks |
| `inf_eval.sno` | the evaluator: one expression per input line, `EVAL` under `SETEXIT`, one result line (`FAIL`, `ERROR n`, `INTEGER v`, `REAL v`, `STRING size text`, or the datatype) |
| `inf_exclude.tsv` | the shapes the generator never emits, each with its measurement: an expression that hangs in SPITBOL as in SCRIP is the language, not a defect |

## How it runs today

The generator runs under SCRIP in both modes and matches Arizona Icon byte for byte (the workhorse, 396,068 lines: iconx 1.70 s, SCRIP mode 3 2.27 s, one reading each, 2026-10-02); its EXPR walks reproduce the two programs it replaced, `inf_random_snobol4` and `inf_every_snobol4`, line for line. The comparison runs offline: the generator's
lines through `inf_eval.sno` under `sbl -bf` and under `scrip --stlimit` (the switch that keeps `&STCOUNT`, `&LINE` and the
other statement keywords live), then the two result streams line by line. SPITBOL evaluates about 300,000 expressions a
second.

## The SCRIPtix program this becomes

An Icon section drives: it generates each expression and calls a SNOBOL4 function. The SNOBOL4 section's function `EVAL`s
the expression under `SETEXIT`, sends it over a COMM channel to an attached SPITBOL child running the same evaluator,
compares the two result lines and counts and reports the differences. The channel is the sync-step monitor's IPC cloned: two
FIFOs, one request and one reply record per expression, the parent forking and execing the oracle (SCRIP
`scripts/monitor/monitor_ipc_sync.c` and the fork's `monitor_ipc_spitbol.c` are the code it clones). What SCRIP lacks for it
today, each a row: an Icon section cannot call a function of the SNOBOL4 section in one SCRIPtix `.md` document (the SNOBOL4 section's
`DEFINE` never runs when Icon is the entry, and mode 4 does not link its label), and SCRIP has no way to attach a child
process (no command pipes, `LOAD()` is a stub). Measured on the way: SCRIP ignores the `[-f0]` file option, and the
SPITBOL fork's `LOAD()` passes a returned string's length in one byte, so a cloned receive call returns at most 255
characters.

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

The cloned COMM channel's SPITBOL side is `inf_oracle.sno` with SCRIP `scripts/monitor/comm_ipc_spitbol.c`: driven from a
stand-in parent it answered the 19,251 random expressions at about 92,000 round trips a second, line for line as
`inf_eval.sno` answers, apart from those seven keywords.
