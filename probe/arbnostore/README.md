# probe/arbnostore — STORED ARB, AND STORED ARBNO WITH A NON-LITERAL ARGUMENT, NEVER BACKTRACK

**Minted 2026-08-16 s120.** Candidate for the MILESTONE-1 `Parse Error` blocker.
Every verdict below is a **12-run** verdict — see the instability warning at the bottom,
which is the most important thing in this file.

## The finding

`ARB`, and `ARBNO(<non-literal>)`, match correctly when written **inline** in a pattern and
fail to retry when the pattern is first **stored in a variable**. They take their initial
null match and the backup/retry edge is never taken.

`ARBNO('a')` — a **literal** argument — survives storage fine. That is the surprise, and it
is what makes this narrower than "nondeterministic patterns don't survive storage."

## The discriminator (12 runs each, oracle-anchored)

| pattern | inline | stored in a variable |
|---|---|---|
| `ARB` | PASS | **FAIL** |
| `ARBNO(D)`  (variable argument) | PASS | **FAIL** |
| `ARBNO(*D)` (deferred argument) | PASS | **FAIL** |
| `ARBNO('a')` (literal argument) | PASS | PASS |
| `SPAN('a')` | PASS | PASS |

Two things fail: **`ARB` stored**, and **`ARBNO` stored when its argument is not a literal**.
`ARBNO(*D)` and `ARBNO(D)` fail identically, so **the `*` is not the discriminator** — the
deferral operator can be removed without changing the verdict. Whether `ARB`-stored and
`ARBNO(var)`-stored are one defect or two is NOT established here; do not assume.

## THE `POS(0)` … `RPOS(0)` ANCHORS ARE LOAD-BEARING

| probe shape | verdict | why |
|---|---|---|
| `POS(0) C RPOS(0)` | **FAIL** | forces ARBNO past null — the retry never happens |
| `POS(0) C` | PASS | the initial null match satisfies it; nothing forces a retry |
| `C RPOS(0)` | PASS | the match may start at position 3 and take null there |

A probe missing either anchor is GREEN and proves nothing. Do not "simplify" these.

## Manual authority (SPITBOL manual p.121, "The ARBNO Function")

ARBNO is *shy*: it initially matches the null string, and when a subsequent component
fails, SPITBOL backs up and asks ARBNO to try again, supplying one more instance of its
argument each retry — i.e. `ARBNO(PAT)` behaves as `("" | PAT | PAT PAT | …)`. ARB is shy
in the same way. SCRIP performs the null match and never the retry.

## Mode parity

m3 (`--run`) and m4 (`--compile` → gcc) agreed on the probes checked, so the defect is in
the shared LOWER/EMITTER path rather than mode-specific staging.

## Relation to beauty (PLAUSIBLE, NOT PROVEN)

    beauty.sno:225   Parse = nPush() ARBNO(*Command) ("'Parse'" & 'nTop()') nPop()
    beauty.sno:608   Src   POS(0) *Parse *Space RPOS(0)        :F(mainErr1)

A stored ARBNO with a non-literal argument, matched under `POS(0) … RPOS(0)`, reaching
`mainErr1` and printing `Parse Error` — which is exactly beauty's observed m3 failure
(rc=0, 10 lines instead of 622). The shapes match. **This has NOT been proven to be the
same defect**; `Command` is a function-call result, not a plain variable, and no reduction
from beauty down to these probes has been carried out. Treat as the leading hypothesis.

## ⛔ THE "INSTABILITY" IS EXPLAINED — IT WAS A CONCURRENT REBUILD, NOT NONDETERMINISM

An earlier revision of this file (corpus `eabc1379`) reported that `C = ARBNO('a')` read
FAIL in one shell and PASS in another with "no rebuild in between", and withdrew the PAT$0
mechanism as unreproducible. **Both of those statements were wrong, and both are retracted.**

There was a rebuild. A concurrent seat committed `SCRIP aa1a3901` at 18:34 and rebuilt the
binary at 18:39:11, in between the two measurement batches:

    aa1a3901  [SN4-ARBNO-STORE s120] Delete the stale ARBNO exclusion from the PAT-INLINE shape gate

The early FAIL readings and the `PAT$0` / `SNO$MKPAT` dump were **correct for the compiler
that existed when they were taken**. The later PASS readings are correct for the compiler
that exists now. Nothing was flaky.

**The PAT$0 mechanism is therefore NOT withdrawn — it is confirmed**, and `aa1a3901`'s own
comment states it independently: a stored pattern falls to the PAT$ blob path, whose
`MATCH_ARBNO` terminates in a closed `SUCCEED`/`FAIL` pair with no resumable entry, so the
outer `MATCH_RPOS` ω points at `MATCH_BEGIN` instead of back into the ARBNO. It takes its
shy null match and is never retried.

## Why exactly these three are still RED

`aa1a3901` admits ARBNO to the inline path only when its ARGUMENT is itself inline-admissible:

    case TT_ARBNO: return _ia && t->n > 0 && sno_pat_inline_ok(t->c[0]);

Admitted arguments are literals, cset primitives with foldable args, integer primitives with
ILIT args, REM, and SEQ/CAT/ALT composition. Everything else hits `default: return 0`.

| probe | argument | inline-admissible? | outcome |
|---|---|---|---|
| `ARBNO('a')` | `TT_QLIT` | yes | inlined → **GREEN** |
| `ARBNO(D)` | `TT_VAR` | no | PAT$ blob → **RED** |
| `ARBNO(*D)` | deferred | no | PAT$ blob → **RED** |
| `ARB` | — | ARB still excluded by name | PAT$ blob → **RED** |

So the RED set is exactly "the shapes the inline gate still refuses". Killswitch
`SCRIP_PAT_INLINE_ARBNO=0` restores the old exclusion and should turn
`arbno_lit_stored_green` RED again — that is the cheapest confirmation of this whole story,
and the next seat should run it first.

## ⛔ THE REAL FIX IS NOT MORE INLINING

Widening the inline gate cures probes one shape at a time and cannot cure beauty:
`Parse = nPush() ARBNO(*Command) …` has a DEFERRED argument, so it will never be admitted
by an argument-shape gate, and beauty still prints `Parse Error` at HEAD (measured, 5 runs,
rc=0 / 10 lines). **The root fix is to give the PAT$ blob's `MATCH_ARBNO` a resumable
entry** so a stored pattern backtracks correctly whether or not it was inlined. Inlining is
a workaround that narrows the blast radius; the closed `SUCCEED`/`FAIL` pair is the defect.

## ⛔ OPERATIONAL LESSON — STAMP THE BINARY, NOT JUST THE SOURCE

Repos here are edited by parallel seats (see the CONCURRENT SESSION NOTICE in
`GOAL-SNOBOL4-100.md`). A measurement is meaningless without the binary it was taken
against. Record `git -C /home/claude/SCRIP rev-parse --short HEAD` **and**
`stat -c %y /home/claude/SCRIP/scrip` beside every verdict. A result that changes without
explanation is a rebuild until proven otherwise — check mtimes before writing the word
"nondeterministic".

## Running the suite

    for f in *.sno; do
      b=${f%.sno}; r=""
      for i in $(seq 1 12); do
        r="$r$(/home/claude/SCRIP/scrip --run "$f" </dev/null 2>&1 | head -c 1)"
      done
      u=$(echo "$r" | fold -w1 | sort -u | tr -d '\n')
      [ "$u" = "$(head -c 1 "$b.ref")" ] && echo "PASS $b" || echo "FAIL $b ($u)"
    done

A `uniq` field with more than one character means the probe was UNSTABLE on that run —
report it, do not average it away.

`.ref` files are live SPITBOL x64 oracle output (`sbl -b`), regenerable, never pinned goldens.

Watermark at mint (SCRIP `07f8cbbc`): 3 RED / 4 GREEN, stable over 12 runs each.

- `defer_star_arb_red` — manual p.122 shape: `Q = *P 'X'` with P=ARB stored; the star-of-generator resume through the blob.  RED at default; GREEN under `SCRIP_DEFER_RESUME=1` (s121).  Was the SEQ-RESUME-GATE comment's own named hang (`rc=124`), now a clean extend.

## s123 — THE FOUR CROSSCHECK BREAKERS ARE NOT A SEAL FAILURE (new witness below)

`arbno_defer_altarg_red.sno` is the **discriminating control** that 148/119/129/149 never had.
Same shape, **no FENCE anywhere**: `cmd = ('a' | 'ab')`, `outer = ARBNO(*cmd)`, `'ab' POS(0) *outer RPOS(0)`.

| arm | result |
|---|---|
| oracle `sbl -b` | `match` (backtrack into the placed instance takes its 2nd alternative) |
| SCRIP default | `nomatch` — silent wrong answer, beauty's own class |
| `SCRIP_DEFER_RESUME=1` | **rc=139 SIGSEGV, identical to all four fence witnesses** |

So the crash is the **ARBNO retry-unwind over-pop** (`af` → `defer_β` double-pops an already
unwound activation; rbp then climbs one caller frame per lap to 0), NOT seal visibility.
FENCE is incidental to those four names. Full mechanism + gdb trace:
`.github/FINDING-2026-08-16-s123-arbno-retry-unwind-overpop.md`.

⛔ This probe stays RED until **R-4(a)** (dynamic-K ARBNO activation frame) lands — its oracle
answer needs per-instance retained choice points. Expect 8 green + this one red; do not let it
block the arbnostore gate.
