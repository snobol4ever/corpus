# Snocone

Andrew Koenig's Snocone preprocessor — C-like syntactic sugar for SNOBOL4.
Originally presented at USENIX, Portland, Oregon, June 1985.

## Files

| File | Description |
|------|-------------|
| `snocone.sc` | The Snocone compiler, written in Snocone (self-hosting) |
| `snocone.sno` | Bootstrap: hand-written SNOBOL4 that can compile `snocone.sc` |
| `snocone.snobol4` | Compiled output: plain SNOBOL4 ready to run under any engine |
| `report.md` | Andrew Koenig's full language specification |

## What Snocone Adds

- `if/else`, `while`, `do/while`, `for` — structured control flow
- `procedure` — replaces `DEFINE()` + label boilerplate
- `struct` — replaces `DATA()`
- `&&` — explicit concatenation (replaces ambiguous blank)
- `#include` — file inclusion
- C-like expression syntax with proper precedence

## License

Mark Emmer's distribution. Phil Budne's CSNOBOL4 patches included separately.
Sources included here for reference and testing only — see original distribution
for license terms.
