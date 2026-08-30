# `corpus/probe/kw/` — KEYWORD WITNESSES (GOAL-SNOBOL4-100 · D-3 KW-STATIC)

Minted s146 (2026-08-19) by the KW-1 census. Every `.ref` is live `x64/bin/sbl -b` output.
Full analysis: `.github/FINDING-2026-08-19-s146-KW1-census-keyword-truth-table.md`.
Run them: `bash SCRIP/scripts/test_gate_kw_static.sh [--verbose]` — **baseline 0 PASS / 8**.

| witness | defect class it pins | s146 status |
|---|---|---|
| `kw_bare_shadow` | **A** — 14 bare names hijacked as keywords by `NV_GET_fn`; oracle says a bare name is an ordinary null variable (manual Ch.16 p.187: names "are set apart from other variables by the unary operator ampersand") | 13 of 14 wrong |
| `kw_defaults` | **B** — initial values; 6 wrong (`&TRIM &CASE &FULLSCAN &MAXLNGTH &STLIMIT &ERRTYPE`), 5 missing (`&ABEND &INPUT &OUTPUT &PROFILE &COMPARE`) | DIFF |
| `kw_datatypes` | **C** — `&UCASE`/`&LCASE` return CSET; SNOBOL4 has no cset datatype (that is Icon's, leaking through the shared `kw_read` table) | DIFF |
| `kw_protected_write` | **D** — protection unenforced; oracle raises 209 (protected) / 208 (non-integer value), SCRIP assigns silently | DIFF |

## Traps recorded
- ⛔ **208 BEFORE 209.** `&ALPHABET = 'x'` raises **208** *keyword value assigned is not integer*, NOT 209 — the value check precedes the protection check. Check protection first and this witness goes oracle-wrong.
- ⛔ **The oracle contradicts its own manual on `&TRIM`.** Manual p.191 says initially 0; `sbl` reports **1**, with and without `-b`. Oracle wins (RULES.md: SCRIP FOLLOWS SPITBOL SEMANTICS). Same for `&MAXLNGTH`: manual says 4194304, oracle says **16777216**.
- ⛔ **`&ERRLIMIT` without `SETEXIT` converts an error to STATEMENT FAILURE** (manual Ch.16) — that is what makes `kw_protected_write` a clean `:S()/:F()` witness. An earlier draft used `SETEXIT` + `:(RETURN)` and drowned in error 242 *function return from level zero*; do not reintroduce it.
- These witnesses are **oracle-true and SCRIP-red by design.** A green reading here before KW-2 lands means the gate broke, not that SCRIP improved.
