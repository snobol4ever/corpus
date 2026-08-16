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

## MEASUREMENT INSTABILITY OBSERVED — READ BEFORE TRUSTING ANY SINGLE RUN

During this session `C = ARBNO('a')` (now `arbno_lit_stored_green`) was measured **FAIL
(NOMATCH)** in one shell and, later, **PASS (MATCH)** in another — same source file, same
`scrip` binary, no rebuild in between. The flip was never reproduced: the probe has since
returned MATCH 60/60 across fresh processes, and 20/20 with ASLR disabled.

An earlier `--dump-ir` of that same file showed a `PAT$0` pattern-thunk proc with a
`SNO$MKPAT` call and terminal `SUCCEED`/`FAIL` wires; the dump is now deterministic
(md5-stable) and contains **no `PAT$0` and no `MKPAT`**, with `MATCH_RPOS` carrying the
retry edge back into `MATCH_ARBNO`. Both readings were taken the same session. A mechanism
was briefly written up from the `PAT$0` dump and is **withdrawn** — it rests on an
observation that no longer reproduces.

The cause of the flip is UNKNOWN and is not chased here. Consequences for the next seat:

1. **Never accept a single run as a verdict on this suite.** Every table above is 12 runs.
2. **An IR dump is not durable evidence** unless captured with its md5 and re-verified.
3. This may be the mechanism behind contradictory measurements recorded across earlier
   sessions. If a documented finding fails to reproduce, suspect this before concluding
   the previous seat was wrong.

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
