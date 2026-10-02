# demos/scrip/infinite_snobol4 — Icon generates SNOBOL4 expressions, SNOBOL4 evaluates them, SPITBOL checks every answer

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
| `inf_grammar.icn` | the literal-only grammar both generators link: sample integers, reals and strings (Lon's `"0" "1" "1.1" "x" "y" "z" "(matched [things])" "(" ")" "[" "]"`), the 37 keywords of SPITBOL's own variable table, every pattern primitive on sample arguments; match, alternation, concatenation, arithmetic, exponent and unary levels; the exclusion list |
| `inf_random_snobol4.icn` | RANDOM: count expressions of at most limit tokens from a seed, one per line |
| `inf_every_snobol4.icn` | EVERY: every expression of at most limit tokens, one per line |
| `inf_eval.sno` | the evaluator: one expression per input line, `EVAL` under `SETEXIT`, one result line (`FAIL`, `ERROR n`, `INTEGER v`, `REAL v`, `STRING size text`, or the datatype) |
| `inf_exclude.tsv` | the shapes the generators never emit, each with its measurement: an expression that hangs in SPITBOL as in SCRIP is the language, not a defect |

## How it runs today

The generators run under SCRIP at speed and match Arizona Icon byte for byte. The comparison runs offline: one generator's
lines through `inf_eval.sno` under `sbl -bf` and under `scrip --stlimit` (the switch that keeps `&STCOUNT`, `&LINE` and the
other statement keywords live), then the two result streams line by line. SPITBOL evaluates about 300,000 expressions a
second.

## The SCRIPtix program this becomes

An Icon section drives: it generates each expression and calls a SNOBOL4 function. The SNOBOL4 section's function `EVAL`s
the expression under `SETEXIT`, sends it over a COMM channel to an attached SPITBOL child running the same evaluator,
compares the two result lines and counts and reports the differences. The channel is the sync-step monitor's IPC cloned: two
FIFOs, one request and one reply record per expression, the parent forking and execing the oracle (SCRIP
`scripts/monitor/monitor_ipc_sync.c` and the fork's `monitor_ipc_spitbol.c` are the code it clones). What SCRIP lacks for it
today, each a row: an Icon section cannot call a function of the SNOBOL4 section in one `.scrip` (the SNOBOL4 section's
`DEFINE` never runs when Icon is the entry, and mode 4 does not link its label), and SCRIP has no way to attach a child
process (no command pipes, `LOAD()` is a stub). Measured on the way: SCRIP ignores the `[-f0]` file option, and the
SPITBOL fork's `LOAD()` passes a returned string's length in one byte, so a cloned receive call returns at most 255
characters.
