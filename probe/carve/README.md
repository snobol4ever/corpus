# carve probe — what one `sub rsp,16` actually costs, and how many are coalescable

Built for the `spine-carve-coalescing` rung (seat1, 2026-08-21) to reproduce that row's two
first-step numbers BEFORE writing any emitter code.  Both came in materially different; this
directory is the receipt.  See
`.github/FINDING-2026-08-21-seat1-the-spine-carve-is-free-in-the-shape-that-actually-occurs.md`.

- `carve_pair.c`     — the row's own shape: 8x (`sub rsp,16` + 2 stores) vs 1x `sub rsp,128` + the
                       same 8 store pairs at re-based offsets.  2 stores = one 16-byte DESCR, which
                       is what a real SCRIP box writes.
- `carve_isolate.c`  — the same A/B at three port pressures: no stores, 1 store, 2 stores, plus a
                       TSC-frequency calibration (rdtscp counts TSC ticks, NOT core cycles).
- `carve_census.py`  — stretch census over a `.s` artifact.  Reports BOTH the row's stated criterion
                       and the stricter single-exit criterion that correctness actually requires.

    gcc -O2 -o /tmp/cp carve_pair.c && /tmp/cp
    gcc -O2 -o /tmp/ci carve_isolate.c && /tmp/ci
    python3 carve_census.py ../../benchmarks/snobol4/arith_loop.s

⛔ The headline: the carve is ~0.20 ns in isolation, ~0.11 ns behind one store, and **free behind two**
— and two is the shape that actually occurs, because a box writes a 16-byte DESCR result.
