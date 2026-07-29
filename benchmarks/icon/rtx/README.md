# corpus/benchmarks/icon/rtx — SELF-TIMED ICON WORKLOADS FOR THE RTX LADDER

Authored s211-ICN to discharge the first half of **RTX-0b-ICN**, which had blocked every ICON-RTX
speed claim since s203: *"the Icon corpus has no legal window and no profilable program"* — all 10
runnable benchmarks are 6–30 ms against `MIN_MS=800`, and at that size a whole-process profile is
compile-phase dominated roughly 20:1.

**THE FIX IS NOT A BIGGER N — IT IS `&time`.** A self-timed window measured INSIDE the Icon program
excludes the compile phase by construction, so the confound s210 had to cancel arithmetically
(`count(4N) − count(N)`) simply does not enter. Every program here prints `ms: <n>`, which is also
exactly the contract `scripts/bench_rtx_3arm.sh` requires.

⚠ **THIS DOES NOT CLOSE RTX-0b.** Its second half stands: `scrip --run prog.icn -n8` still fails with
`cannot open '-n8'` — **mode 3 does not forward argv** — so N is edited into the source rather than
passed. Scale by `sed 's/1 to 40000000/1 to <N>/'`.

| program | window | isolates | note |
|---|---|---|---|
| `bench_icnnum_isolate.icn` | ~860–1540 ms | string→numeric coercion, **no allocation in the loop** | the string is hoisted out of the loop, so GC never enters the window. This is what made the ICNNUM rung gradeable. |
| `bench_icnnum_mixed.icn` | ~1100–1600 ms | coercion **plus** per-iteration `string(i)` allocation | ⛔ **the 3-arm harness REFUSES to grade this one** — intra-arm spread 1.57× exceeds the inter-arm gap 1.19×, raw samples visibly bimodal. Kept deliberately as a worked example of the s209 arm-stability precondition firing. |

⭐ **THE TRANSFERABLE LESSON, and it is why both files are here:** the two programs measure the same
symbol and only one is gradeable. The allocator's bimodality is *multiplicative*, so more rounds do
not rescue it — **hoisting the allocation out of the loop does.** When an RTX benchmark comes back
ungradeable, suspect the allocator in the window before suspecting the box.

Both carry closed-form expected output, so a wrong answer is visible without an oracle diff:
`bench_icnnum_isolate` → `acc: 4938280000000` == 40,000,000 × 123,457;
`bench_icnnum_mixed` → `acc: 18000009000000` == Σ(i+1), i=1..6,000,000.
