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
| `infinite_snobol4.md` | THE SCRIPtix PROGRAM, one file: the Snocone section starts and the Icon section drives (Lon: *"Change that ugly SNOBOL4 code to Snocone."*) (Lon: *"change the rules, what ever works for Icon and SNOBOL4 combo."* and *"But we want Icon to drive since it has the infinite loop."*). The Snocone section sets the evaluator's globals, defines `render()`, `judge()` and `check(batch, sbl, base)`, reads the arguments, and its last statement calls the Icon section's `drive(bsize, sbl)`, which owns the loop: per batch it resumes the generator co-expression to write the next expressions to `inf_batch.txt` (reopened, so cleared, every batch) and calls `check()`, which opens the SPITBOL child on the batch with SPITBOL's own pipe file I/O, `INPUT(.inf_oracle, 8, '!*sbl -bf inf_eval.sno < inf_batch.txt')`, EVALs every expression exactly as the child does, prints a DIFF line per disagreement and returns the count. Arguments: `batch=N`, `sbl=COMMAND`, and the generator's words |
| the Icon section of `infinite_snobol4.md` | THE GENERATOR (the stand-alone `inf_snobol4.icn` it was proven as left on Lon's word, *"Clean up and the old \*.icn files now that you have \*.md file."*; `git show 513bb6b5c:demos/scriptix/infinite_snobol4/inf_snobol4.icn` brings it back), one program (Lon: *"combine the two programs into one. random + every together."*), two walks over each of two grammars as in `demos/icon/demo/Expressions.icn`: the RANDOM walk returns one guarded alternative per call, the EVERY walk suspends every production. EXPR is the literal-only grammar: sample integers, reals and strings (Lon's `"0" "1" "1.1" "x" "y" "z" "(matched [things])" "(" ")" "[" "]"`), the 37 keywords of SPITBOL's own variable table, every pattern primitive. MATCH is `S ? P` (Lon: *"concentrates on building interesting subject strings, probably calculator expressions ... in the form s ? ... where s is the literals mentioned and ... is the crazy all pattern combo test"*): S a literal string or a calculator expression quoted as a string, P every alternation, concatenation, grouping, `ARBNO` and `FENCE` combination of every primitive plus the calculator sets. Arguments are `key=value`: `walk=random\|every\|both kind=expr\|match\|both count= limit= seed= elimit= plimit= climit=`; none runs the sample of all four walks |
| `inf_eval.sno` | the evaluator, and the SCRIPtix program's child process: one expression per input line, `EVAL` under `SETEXIT`, one result line (`FAIL`, `ERROR n`, `INTEGER v`, `REAL v`, `STRING size text`, or the datatype) |
| THE CLOSED WORLD, preset 3, the default since 2026-10-03 | Lon, in-chat to the ceo, in order: *"Let's begin designing new PRESETS, a through z, 26 variables. And interesting strings, "a" .. "z". Have TABLES/ARRAY indexed by number with values, "a" .. "z". Use interesting integers, 0 .. 9, just 10 numbers and 26 variables, and 36 string values ... sprinkling the pattern with CAPTURES, immediate and conditional, to variables with names capital A..Z. All single letter names. Then write supporting code never using single variable names."* · *"So we could have a[0] = "a", and a[1] = "b"."* · *"Build the pattern from literal strings containing a..z union with 0..9. And build the subject string also from those. I suspect some parenthesis, brackets, and braces in a balanced manner in a pattern would be good."* · *"The test is to run the pattern, and the results are values X..Z."* · *"create an Icon generator that is grammar aware like we have, but that has smarts. Like when outputting a, it will do a[random number 0..9] instead."* · *"From now on do not allow assignment, =, operator in expressions since they would modify subsequent tests. Just assign CONDITIONAL and IMMEDIATE to X through Z for each."* · *"We should add a f, g, h as FUNCTIONS that return a value and a name of variable ... Use capitols from NAMES in the program."* (ceo CEO-1486). The world: `a = ARRAY('0:35')` holds the 36 strings `'a'..'z' '0'..'9'` by number; `b..j = 1..9`, `k = 0`; `l..t` the ring `l = 'm' ... t = 'l'`; `u` the inverse table `u[a[n]] = n`; `v..z` five patterns with captures; `f(n)` the VALUE of the cell named by `a[n]`, `g(n)` the STRING naming its capital, `h(n)` the NAME of that capital. A test is a match whose subject and literals come from the 36 characters with balanced `( ) [ ] { }`, decorated with `$ X`, `. Y`, `. h(n)` and `$ $g(n)`; it carries no `=`; its result line is the value then the 26 capitals, `A=-` for null. The PRESET runs once per batch (100 lines), the capitals nulled first; the smart emitters (`c_value`, `c_pvalue`, `c_subj`, `c_prim`, `c_sarg`, `c_index`, `c_elem`) emit each cell the way its value is reached. `batches=N` stops after N batches. |
| the refs | `infinite_snobol4.ref` is the ideal reading of the default run, every generated test agreeing with the SPITBOL child and no DIFF line; `inf_eval.ref` is cut from `sbl -bf inf_eval.sno < inf_eval.in` (100 preset lines and 100 tests). Both read RED while SCRIP diverges from SPITBOL, which is the demo's job: at the first closed-world run (SCRIP a0599d00d) 8 of 483 tests differed in three error classes, rowed to hq_snobol4 (the name operator over an indirect variable; an error raised inside a deferred evaluation or a capture target failing the match instead of raising, sbl's 239, 21 and 46). |
| `inf_exclude.tsv` | the shapes the generator never emits, each with its measurement: an expression that hangs in SPITBOL as in SCRIP is the language, not a defect |

## How it runs today

As the stand-alone `inf_snobol4.icn`, the generator ran under SCRIP in both modes and matched Arizona Icon byte for byte (the workhorse, 396,068 lines: iconx 1.70 s, SCRIP mode 3 2.27 s, one reading each, 2026-10-02); its EXPR walks reproduced the two programs it replaced, `inf_random_snobol4` and `inf_every_snobol4`, line for line. Before the SCRIPtix program existed, the comparison ran offline: the generator's
lines through `inf_eval.sno` under `sbl -bf` and under `scrip --stlimit` (the switch that keeps `&STCOUNT`, `&LINE` and the
other statement keywords live), then the two result streams line by line. SPITBOL evaluates about 300,000 expressions a
second.

## The SCRIPtix program

`infinite_snobol4.md` runs today in mode 3 (SCRIP d777b7cbe and later): Snocone starts, Icon's `drive()` loops, and Icon calls back into
the Snocone section's `check()` -- a call into Icon and back works in both modes once the first section's functions are defined (a Snocone
fence compiles since SCRIP 51c18c094). Until the cto's row
snocone-a-setexit-trap-is-not-taken-from-a-function-body-or-an-if-or-while-condition lands, `judge()`'s SETEXIT label inside a Snocone function is not a label to SCRIP (error 187), so every
SPITBOL error reads FAIL. Its first full-speed runs (2026-10-02 evening) found: the null-argument pattern functions (known), a bare `FENCE`
as an alternation
arm overflowing the stack (hq_snobol4), `'abc' ? -ARB ABORT` crashing (cfo, rank 1), and, after `'(' ?-NOTANY('ab') &FAIL`, `check()`'s
reads no longer failing at end of file so the run spins (a row). Mode 4 dies at its first C call from the Icon side on a stack at 8 mod 16
(hq_icon). SPITBOL's `!command` file I/O landed in SCRIP for this program (SCRIP 54fc36a3d), and the oracle's own pipes, broken by an
off-by-one in osint `getshell.c` that upstream 4.0f shares, are cured in the build staged for Lon with ORD
(`.github/scripts/install_ord_and_pipes_into_the_spitbol_oracle_ceo_1424.sh`).

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
