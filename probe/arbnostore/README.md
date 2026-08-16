# probe/arbnostore — A VARIABLE-HELD ARB/ARBNO NEVER BACKTRACKS

**Minted 2026-08-16 s120. This is the MILESTONE-1 `Parse Error` BLOCKER, localized.**

## The finding, in one line

`ARB` and `ARBNO(...)` match correctly when emitted **inline** in a pattern, and fail to
retry — matching only their initial null string, forever — when the pattern is first
**stored in a variable** and the variable is then used in the match.

## ⛔ THE DEFERRED-EVALUATION STORY IS FALSIFIED — `*` IS INNOCENT

Sessions s117–s119 pursued this as a deferred-evaluation (`*`) defect, because beauty's
shape is `Parse = ... ARBNO(*Command) ...`. **The `*` is not the discriminator.**
`arbno_stored_red.sno` contains **no `*` anywhere** — its argument is the string literal
`'a'` — and it fails identically. Removing the `*` does not change the verdict; removing
the *variable store* does.

This does NOT void the separate `probe/defval/` SIGSEGV class (bare `C = *D` as a whole
pattern value, 4 RED there). That is a real and distinct defect. It is simply not what
makes beauty print `Parse Error` — beauty exits rc=0 and never crashes.

## The discriminator (measured, oracle-anchored, m3 AND m4)

| pattern | inline in match | stored in a variable |
|---|---|---|
| `ARBNO('a')` under `POS(0) … RPOS(0)` | PASS | **FAIL** |
| `ARB` under `POS(0) … RPOS(0)` | PASS | **FAIL** |
| `SPAN('a')` under `POS(0) … RPOS(0)` | PASS | PASS |
| `LEN(1)`, `'a' | 'b'` | PASS | PASS |

**Deterministic patterns survive storage; NONDETERMINISTIC ones do not.** The two
constructs that fail are exactly the two that require a resumable choice point.

## Why the anchors matter — do not "simplify" these probes

`POS(0) C RPOS(0)` is load-bearing. Both anchors are required to expose the bug:

| probe shape | verdict | why |
|---|---|---|
| `POS(0) C RPOS(0)` | **FAIL** | forces ARBNO to extend past null — the retry never happens |
| `POS(0) C` | PASS | ARBNO's initial null match satisfies it; nothing forces a retry |
| `C RPOS(0)` | PASS | the match is free to start at position 3 and take null there |

A probe missing either anchor is GREEN and proves nothing.

## Manual authority (SPITBOL manual p.121, "The ARBNO Function")

ARBNO is *shy*: it initially matches the null string, and when a subsequent pattern
component fails, SPITBOL backs up and asks ARBNO to try again, supplying one more
instance of its argument each retry — i.e. `ARBNO(PAT)` behaves as
`("" | PAT | PAT PAT | PAT PAT PAT | …)`. ARB is described as shy in the same way.

SCRIP performs the first half (null match) and never the second (the retry). The
**resume/backtrack edge is lost across the variable store.**

## Mode parity

m3 (`--run`) ≡ m4 (`--compile` → gcc) on every probe here, RED and GREEN alike. The
defect is therefore in the shared LOWER/EMITTER path, not in mode-specific staging, and
one fix is expected to cure both modes. This is R-5's "backtrack β per choice class"
re-entry edge, exercised through a stored pattern value.

## Why this is the M1 blocker

    beauty.sno:225   Parse = nPush() ARBNO(*Command) ("'Parse'" & 'nTop()') nPop()
    beauty.sno:608   Src   POS(0) *Parse *Space RPOS(0)        :F(mainErr1)

A stored ARBNO, matched under `POS(0) … RPOS(0)`. It fails, control reaches `mainErr1`,
and beauty prints `Parse Error` — rc=0, 10 lines instead of 622. That is precisely the
observed M1 failure.

## Running the suite

    for f in *.sno; do
      diff <(/home/claude/SCRIP/scrip --run "$f" </dev/null 2>&1) "${f%.sno}.ref" >/dev/null \
        && echo "PASS $f" || echo "FAIL $f"
    done

`.ref` files are live SPITBOL x64 oracle output (`sbl -b`), regenerable, not pinned goldens.

Watermark at mint (SCRIP `07f8cbbc`): 3 RED / 4 GREEN in both m3 and m4.
