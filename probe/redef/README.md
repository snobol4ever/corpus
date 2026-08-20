# probe/redef — legal re-DEFINE of one function name (M1-R4b)

SPITBOL lets a program `DEFINE` the same function name more than once; the oracle runs
both witnesses green.  SCRIP emitted the tiny shim's faces `<FN>_α/_γ/_ω` once **per
DEFINE site** from the function NAME, so a redefining program produced the same symbol
twice and `as` rejected the mode-4 `.s` (`symbol F_α is already defined`).  Mode-3 never
reached that arm (it is TEXT-gated), so the class was mode-4-only.

| witness | shape | oracle | SCRIP m3 | SCRIP m4 |
|---|---|---|---|---|
| `redef_twice.sno`    | two DEFINEs, SAME body        | `got:one` / `got:two`  | ✅ | ✅ (was: `as` reject) |
| `redef_lastwins.sno` | two DEFINEs, DIFFERENT bodies | `first:a` / `second:b` | ❌ `second:a` | ❌ `second:a` |

`redef_twice` is the M1-R4b witness and is GREEN in both modes.

`redef_lastwins` is a **known-red successor witness**, not an M1-R4b regression: it
compiles and links after the M1-R4b fix and m3 ≡ m4, but both modes answer `second:a`
where the oracle answers `first:a`.  Cause is upstream of the face labels — the lowerer
keeps exactly ONE proc row per function name, so a call placed BEFORE the second DEFINE
executes still binds to the LAST DEFINE's body.  Genuine last-wins re-DEFINE needs the
call to dispatch through `fn_cell$<FN>` at run time; see the M1-R4b FINDING.
