# beauty_c — beauty with its grammar DECLARED CONSTANT (SN4-CONSTANTS wave-1 flagship)

GENERATED — never hand-edit: `python3 gen_beauty_c.py` regenerates every file here from `../beauty` + the
WAVE1 list in the script. Lon's directive 2026-08-19 ("change beauty.sno right now to use constants for
every PATTERN that is constant... a wonderful way of isolating the problem").

**Measured basis (s145 inventory):** beauty assigns 180 names; 137 exactly once; 62 are pattern-shaped;
ZERO grammar patterns are ever mutated or capture-assigned. Wave-1 converts the 59 clean ones (the 3
call-duals nPush/nPop/nInc wait for a later wave). 134 lines change across 18 files.

**Fixed point:** `beauty_c.sno < ../beauty/beauty.sno` must emit beauty.sno BYTE-IDENTICALLY — the
converted ENGINE beautifying the CLASSIC source. beauty.sno's own M1 self-host witness is untouched.

**Runnability (honest):** requires (a) SCRIP CN-2+ (user `&` constants) — GOAL-SNOBOL4-100 § SN4-CONSTANTS;
(b) for live-oracle grading, an `&name`-accepting oracle build (`sbl-x` / csnobol4-x, HQ board D-12/D-13) —
until then the pinned ref IS ../beauty/beauty.sno itself.

**The isolation ladder:** with constants staged statically (CN-3), each converted pattern EXITS the
defer/stored-ARBNO machinery — beauty's walls B1/B2 get bisected by moving one pattern at a time between
the constant and dynamic worlds (edit WAVE1, regenerate, re-run).
