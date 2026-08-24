# beauty_c — the generator that produced beauty's DECLARED-CONSTANT grammar (SN4-CONSTANTS wave-1)

⭐ **PROMOTED 2026-08-22 (seat07, queue row `beauty-cn-convert`, Lon "no going back"): this wave-1
conversion IS NOW `../beauty/beauty.sno`.** `beauty_c.sno` here is kept byte-identical to the promoted
file as the generator's own output record — it is no longer a separate/parallel experiment. GENERATED —
never hand-edit: `python3 gen_beauty_c.py` regenerates every file here (and, by copy, `../beauty/`) from
`../beauty` + the WAVE1 list in the script. Lon's directive 2026-08-19 ("change beauty.sno right now to
use constants for every PATTERN that is constant... a wonderful way of isolating the problem"), escalated
2026-08-20 to "no going back" — the plain-variable form is retired as the checked-in M1 reference.

**Measured basis (s145 inventory):** beauty assigns 180 names; 137 exactly once; 62 are pattern-shaped;
ZERO grammar patterns are ever mutated or capture-assigned. Wave-1 converts the 52 clean ones actually
reached by the transform (the 3 call-duals nPush/nPop/nInc and 7 DEFINE/OPSYN-tainted names wait for a
later wave — see the script header). None of the 18 `.inc` files carry any WAVE1 name — only `beauty.sno`
itself changed, which is why `beauty_suite` (17/17 both modes) is structurally unaffected by this landing.

**2026-08-22 alignment fix (seat07):** the original transform inserted `&` before a defining name without
compensating padding, silently shifting every converted definition's `=` column from 33 to 34 and breaking
beauty's own tab-stop convention (`ppStop[2] - pattern or =`). `gen_beauty_c.py` now trims one padding
space at the defining occurrence; verified 52/52 WAVE-1 definitions column-exact against the (git-history)
classic form.

**Self-consistency test (what "fixed point" now means):** `beauty_c.sno < ../beauty/beauty.sno` is now a
**self-host** test (both are the same converted engine) — and inherits the pre-existing, unrelated M1
self-host wall (`ARCH-PASSTHRU.md`; `board_beauty_m1.sh` reads 0/10 both modes at this HEAD, first red at
line 1). Measured identically red on the classic engine before promotion (same diff, same line count) —
**this conversion neither causes nor cures that wall**; see
`FINDING-2026-08-22-seat07-beauty-cn-convert.md`. The historical "converted engine beautifying the CLASSIC
source" byte-identical fixed point (this same file against the pre-promotion classic text) held at
generation time via witness-level checks; full-file live-run verification is blocked on the same wall that
blocks the classic engine, independent of `&`.

**Runnability (honest):** requires (a) SCRIP CN-2+ (user `&` constants) — GOAL-SNOBOL4-100 § SN4-CONSTANTS,
landed; (b) for live-oracle grading, an `&name`-accepting oracle build (`sbl-x` / csnobol4-x, HQ board
D-12/D-13, NOT YET BUILT) — until then grading is witness-level (`corpus/probe/cn/`), per CN-O1.

**The isolation ladder (still open, not this session):** with constants staged statically (CN-3), each
converted pattern EXITS the defer/stored-ARBNO machinery — beauty's walls get bisected by moving one
pattern at a time between the constant and dynamic worlds (edit WAVE1, regenerate, re-run). Not pursued
this session; the M1 wall's own NEXT RUNG (FINDING s182 addendum 3: "give the JIT'd TT_SEQ a real β") is
orthogonal to this row and unstaffed as of this landing.
