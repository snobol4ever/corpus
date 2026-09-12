# corpus/tests/snocone/scrip/

Snocone translations of SCRIP runtime C source files.

## Purpose

These `.sc` files are faithful re-implementations of key SCRIP
pipeline components in Snocone. The primary goal is to provide a
human-readable specification of each component's behaviour and to
serve as a stepping stone toward Milestone 2 (compiler self-hosting).

## Files

| File | C original | Status |
|------|-----------|--------|
| `sm_lower.sc` | `SCRIP/src/runtime/x86/sm_lower.c` | In progress (see `GOAL-SNOCONE-SM-LOWER.md`) |
| `sm_lower.ref` | — | `sm_lower.sc`'s own smoke output, pinned |

⛔ **`sm_lower_test.sc` DOES NOT LIVE HERE and never did after the s267 split** — it is a driver for
the SCRIP repo's own bootstrap and sits at `SCRIP/bootstrap/tests/sm_lower_test.sc`, beside its own
`sm_lower_test.ref` (different content: an `--- SM ---` instruction dump, not this directory's
`smoke:` lines). Until 2026-09-12 the ref in THIS directory was *named* `sm_lower_test.ref` while
carrying `sm_lower.sc`'s output, which is the collision the unabsorbed census's own dangling-ref
note warns about: restore or add any `sm_lower_test.sc` here and the master builder's
`discover_pairs` would have pinned it to a ref cut for a different program. Renamed to
`sm_lower.ref` after proving it byte-identical to `scrip --run sm_lower.sc` on this tree.

## Running

```bash
cd "$S4E_HOME/corpus/tests/snocone/scrip"
"$S4E_HOME/SCRIP/scrip" --run sm_lower.sc | diff - sm_lower.ref
```

⛔ **There are no `--sc-check` / `--sc-run` flags** — this file documented both until 2026-09-12 and
`grep -c 'sc-check\|sc-run' SCRIP/src/driver/scrip.c` is **0**. Worse than absent: the driver has no
unknown-flag diagnostic, so `scrip --sc-check sm_lower.sc` treats the flag as a *filename* and dies
`scrip: cannot open '--sc-check'` (rc=1), which reads as a missing file rather than a retired flag.
The frontend is chosen by extension; `.sc` is Snocone.

## Tracking

Goal file: `.github/GOAL-SNOCONE-SM-LOWER.md`
