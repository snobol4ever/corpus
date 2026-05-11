# corpus/programs/snocone/scrip/

Snocone translations of SCRIP runtime C source files.

## Purpose

These `.sc` files are faithful re-implementations of key SCRIP
pipeline components in Snocone. The primary goal is to provide a
human-readable specification of each component's behaviour and to
serve as a stepping stone toward Milestone 2 (compiler self-hosting).

## Files

| File | C original | Status |
|------|-----------|--------|
| `sm_lower.sc` | `one4all/src/runtime/x86/sm_lower.c` | In progress (see GOAL-SNOCONE-SM-LOWER.md) |
| `sm_lower_test.sc` | — | Test driver for sm_lower.sc |

## Running

```bash
# Syntax check
scrip --sc-check sm_lower.sc

# Run test driver
scrip --sc-run sm_lower_test.sc | diff - sm_lower_test.ref
```

## Tracking

Goal file: `.github/GOAL-SNOCONE-SM-LOWER.md`
