# Snocone Language-Construct Coverage Ladder — FINDINGS

Rebuilt from scratch this session (previous FINDINGS.md was sandbox-only, uncommitted, lost).
Method: each construct → tiny `.sc` probe → `scrip --run` (candidate) vs SPITBOL oracle
(`scrip --transpile | sbl`, or a hand-written `.oracle_ref.sno` when the transpiler is broken).
PASS = byte-identical stdout. Env: SCRIP built @ HEAD this session; oracle x64 `sbl`.

## DEFECTS FOUND (candidate --run correct unless noted)

### D1 — `--transpile` segfaults on every real literal (TT_FLIT)
- `OUTPUT = 3.14;` → `--run` prints `3.14` (byte-identical to SPITBOL); `--transpile` rc=139,
  crashes after emitting the `-CASE 0 / &FULLSCAN=1` header, before the statement or `END`.
- Isolated: 3.14, 1.0e3, 2.5E-2 all crash the transpiler; all three run correctly native.
- Scope: BACKEND (`src/lower/tree_to_sno.c` TT_FLIT emission), not the runtime. Language is fine.
- Oracle for reals therefore uses hand-written `.oracle_ref.sno`.

## CONSTRUCT LADDER STATUS
(see LADDER.tsv for the running matrix)

### D2 — Pattern-match VALUE in expression position drops/bombs (runtime)
The matched substring returned by `subj ? pat` is mishandled when used as a value:
- `OUTPUT = (s ? 'hel') 'X';`  → native: rc=0 but EMPTY output (should print `helX`). SILENT DROP.
- `r = (s ? 'hel'); OUTPUT = r;` → native: `libscrip_rt: BOMB bz` / Aborted rc=134 (should print `hel`).
- Oracle (SPITBOL) confirms correct values `helX` / `hel`.
WORKS in these positions (so it's value-context-specific, not the matcher itself):
- Bare statement `s ? pat;`  → OK
- `if (s ? pat) {...}` condition → OK (boolean use)
So affected probes pat_basic / pat_prims / pat_pos / pat_alt / pat_arbno all FAIL for the SAME
reason: each does `OUTPUT = (s ? pat) 'label'`. Rewriting them to use `if (s ? pat)` boolean form
would pass — but the language feature (match-returns-substring, SPITBOL Ch.9 "Binary Operator
Extensions", `(SUBJECT ? PATTERN)` returns matched substring) is BROKEN in --run.
Scope: RUNTIME value path (`BOMB bz`), same family as omega/@-in-expression (goal file gap).
Matches goal-file open gap #2 (subj?pat=repl in condition) — this is the read-value variant.

### D3 — Unanchored FENCE commit-unwind drops output / segfaults (native codegen)
Trigger: `&ANCHOR=0` (default) AND a `FENCE` that blocks backtracking AFTER the cursor has
advanced past pos 0. Minimal: `'1AB+' ? ANY('AB') FENCE '+'`.
- at pos0 ANY fails on '1'; cursor→pos1, ANY matches 'A', FENCE commits, '+' fails on 'B',
  FENCE blocks retry → whole match fails → else{} should fire.
- native: the else/next OUTPUT is DROPPED (empty); chaining two such stmts → Segmentation fault.
- Controls that PASS: same pattern with `&ANCHOR=1` (anchored) → correct 'F'; same shape WITHOUT
  FENCE (`ANY('AB') 'Z'`) → correct 'F'. So it is specifically the unanchored-FENCE-commit
  unwind that corrupts subsequent statement emission.
Oracle prints the else branch correctly. Scope: native --run unwind path (mode-3).

### D4 — ABORT after unanchored advance: second use drops/mis-unwinds
Probe pat_abort: `'-AB-1-' ? (ANY('AB') | '1' ABORT)` (ANY matches 'A' before '1' ever seen →
match SUCCEEDS, ABORT never reached). Native fails to print for the second such statement in a
chain; first statement (where ABORT does fire → whole-match fail → else) is fine. Same unwind
family as D3 (post-fail statement emission corrupted). See /tmp reproductions.

### D5 — `--transpile` emits spurious empty `OUTPUT =` at every if/loop-end label
The transpiler lands each end-of-if/loop label on a bare `Lendif_XXXX_ OUTPUT =` (null RHS),
which SPITBOL prints as a blank line. Purely a transpiler-oracle formatting artifact; native
--run output is correct. Harness now compares blank-insensitively. This inflated the apparent
FAIL count for ALL control-flow probes (if/while/do/for/break/continue/switch), every one of
which is actually byte-correct in native modulo these blanks.
Scope: BACKEND (tree_to_sno.c label emission). Cosmetic for the oracle, but it does mean the
transpiled SNOBOL4 is not clean.

### D6 — `goto`/label NOT in native lowerer subset (tree kind 127)
`goto_basic` native: FATAL lower_snobol4 "expression form not in the landed subset: tree kind
127". Oracle runs correctly (0/1/2/done). goto+label is a parsed, transpilable construct that the
native BB lowerer has not yet landed. CLEAN unimplemented-feature finding (matches ARCH: pattern
matching, EVAL, CODE, and evidently goto are pending in the GZ#5 subset).

### D7 — nreturn + name-indirection transpiles to malformed SNOBOL4 (ERROR 239)
`function mkname(){ mkname=.target; nreturn; } $mkname()='stored';` → transpiler emits
`mkname(mkname = (.target))` which SPITBOL rejects: ERROR 239 "indirection operand is not name".
Native also produces no output. The nreturn-returns-a-name mechanism (SPITBOL Ch.9 NRETURN,
used heavily by library helpers like PUSH) is not correctly handled end-to-end. Needs deeper
isolation (partly test-construction sensitivity — nreturn idiom is subtle); flagged for follow-up.

### D8 — Alternative-evaluation `(e1, e2, e3)` value fall-through broken in native
SPITBOL Ch.9: parenthesized comma list evaluates L→R, value = first succeeding element.
`OUTPUT = (LT(5,3) 'i-smaller', GT(5,3) 'i-bigger', 'equal')` → oracle 'i-bigger'; native EMPTY.
When the FIRST alternative's guard fails and a LATER one should supply the value, native drops
the whole OUTPUT. (First-succeeds case behavior recorded in /tmp probes a1/a2/a3.)
Scope: native --run value path for the comma alt-eval operator.

### D9 — unary interrogation `?expr` not in native lowerer subset (tree kind 9)
`n = ?(LT(3,5)) n + 1;` → native FATAL "tree kind 9 not in landed subset". Oracle: 1,1. Clean
unimplemented finding (value-annihilation unary `?`, SPITBOL Ch.9).

### CONFIRMED-CORRECT (native == oracle)
DATATYPE returns UPPERCASE STRING/INTEGER/REAL in BOTH scrip --run AND this sbl oracle build
(no case divergence observed, contra primer caution). CONVERT('42','INTEGER')+1 = 43 correct.

### D10 — OPSYN-slot binary operators `@ & ~ # %` have NO grammar production (parse error)
`x @ p`, `a & b`, `a ~ b` (binary infix) → "snocone parse error: syntax error" at parse time,
in BOTH native and transpile. These are lexed as tokens but the .y grammar has no binary
production for them (they are OPSYN slots, per ARCH-SNOCONE superset). CONFIRMS goal-file open
gap #1 exactly. NOTE: the UNARY forms (@Expr, ~Expr) DO parse and work (unary_neg PASS).
So: unary @ ~ = fine; binary @ & ~ # % = unparseable. semantic.sc's OPSYN('~','shift',2) /
OPSYN('&','reduce',2) idiom cannot be expressed in native Snocone until productions are added.

### D11 — `LEN(*n)` deferred/computed count outside native subset (explicit FATAL)
`LEN(*n)` (length from a captured var) → native FATAL "LEN with a deferred or missing count is
outside the operand-edge subset". Oracle handles it. Clean subset-boundary finding; the
state-dependent-length pattern idiom (primer "LEN(*n) reads n's current value each match") is
pending in native.

### D12 — match-with-capture in loop condition + in-place replacement drop (D2 family)
integ_wordcount (`while (s ? BREAK(' ') . w ...)` + `s ? pat = ''`) → native empty; oracle
words=7. Same match-value-in-expression family as D2. The word-tokenizer idiom that pervades every
parser_*.sc is affected in native --run when the match value/capture is consumed as a condition
value across iterations.

### D12 (REFINED) — bare pattern-match as WHILE-condition breaks control flow
Precise trigger: `while (s ? pat) { ... }` — a bare match expression as the loop condition value.
- `while (s ? 'a') { OUTPUT='in'; s='xyz'; }` between two OUTPUTs → only the FIRST OUTPUT prints;
  body never runs AND the statement after the loop never runs (control flow corrupted, rc=0).
- Workaround CONFIRMED: `while (GT(found,0)) { ...; s ? pat = ''; found=0; }` → correct start/in/end.
Contrast: match as an IF-condition (`if (s ? BREAK(' ') . w)`) WORKS. So the loop-condition value
path for a bare TT_SCAN is the specific break. This is the most consequential defect for real
parser work — the `while (subject ? tokenpat) { consume }` tokenizer loop is the backbone idiom.
Family: D2 (match value in value position); loop-condition is the severe variant.
