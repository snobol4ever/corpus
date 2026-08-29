# KEEP.md — tests/icon/ (root-level loose files)

Per `tests-consolidate-icon` (parent: `corpus-suites-consolidation`). Covers only the loose `.icn`
files sitting directly in `tests/icon/` that are not part of a `rungNN_*` family and are not yet
resolved by a pending ruling. Re-derive before trusting this table blind, per this project's
standing rule that a fast-moving tree makes yesterday's board stale within hours.

## 8 files — NO ORACLE EXISTS, not a "too risky to touch" case

`generators.icn hello.icn meander.icn palindrome.icn queens.icn roman.icn sieve.icn wordcount.icn`

⛔ **CORRECTING A CLAIM THAT STOOD ACROSS 3 SESSIONS (seat01/seat03/seat06's NEXT blocks, this
task's history): "each referenced by dozens of smoke/bench/gate scripts (e.g. hello.icn alone:
50+ scripts)" DOES NOT HOLD UP UNDER MEASUREMENT.** `grep -rl` for each of the 8 names across
`SCRIP/scripts/*.sh` and `*.py` (2026-08-28, this session) finds a combined total of **6 files**
mentioning any of the 8 names at all, and tracing each hit to what it actually reads narrows this
further:
- `test_smoke_compile_hello_all_langs.sh` — generates its OWN `hello.icn` in `$TMP`, never reads
  this corpus file. Not a dependency.
- `test_monitor_inproc_all_langs.sh`, `test_smoke_unified_broker.sh` — read
  `$ROOT/test/icon/hello.icn` / `palindrome.icn`, where `$ROOT` is **`SCRIP/`**, not `corpus/` —
  `SCRIP/test/icon/` is a real, separate, pre-existing fixture directory. Confirmed these two
  scripts never touch `corpus/tests/icon/` for this purpose. Not a dependency on THIS file.
- `util_zframe_ab.sh` — references `rung36_jcon_sieve.icn` (a different file under `rung36/`'s
  naming), not this directory's `sieve.icn`. Not a dependency.
- `test_gate_icn_rbp_census_ratchet.sh` — mentions `queens.icn`'s line count in a **comment**,
  never opens the file. Not a dependency.
- `test_gate_icn_zk5_gva.sh` — **the one real, confirmed dependency**: reads
  `$CORPUS/tests/icon/palindrome.icn` directly (line 57-58), the correct path, a genuine
  `if [ -f ... ]` guarded read. `palindrome.icn` alone has a live external consumer.

**The real, structural reason none of the 8 convert into this task's suite format: none of them
has an `.expected` file, and never did** (confirmed: `ls <name>.*` for all 8 shows only
`<name>.icn` + `<name>.s`, nothing else). `corpus_suite_harness.py convert-blocks` requires a
`.ref` (or `.expected` renamed to `.ref`) sibling to treat something as a graded entry — there is
no pinned expected output to carry into a suite pair. This is not "too risky", it is "there is
nothing here that fits the shape this task converts."

⭐ **Secondary finding, flagged not fixed (not this row's job — corpus reclassification is a
bigger call than housecleaning):** several of the 8 self-label as DEMO content in their own
header comments (`wordcount.icn`: `# SCRIP DEMO2 -- Word Count (Icon section)`), and **all 8**
carry a `.s` sibling — an artifact class RULES.md restricts to `corpus/benchmarks/` and
`corpus/demo/` ("`.s` artifacts exist ONLY beside benchmarks and demos... Test-tree artifacts...
are abolished"). Their presence in `tests/icon/` with live `.s` files is itself evidence these may
be misplaced demo content rather than tests, not evidence they need converting. Not moved here;
flagging for whoever owns `corpus/demo/icon/` vs `corpus/tests/icon/` boundary decisions.

## 2 files — rung37 witnesses, deliberately left loose (not KEEP by omission)

`rung37_proc_lookup.icn rung37_subscript_genproc.icn`

Both intentionally excluded (`--skip`) from the `rung37_all` conversion (seat03, 2026-08-28):
- `rung37_proc_lookup.icn` — live, oracle-confirmed WRONG-ANSWER bug (SCRIP diverges from both
  this corpus's `.expected` and real Arizona `icont`, which agree with each other) — an active
  correctness witness, not a housecleaning target. `.github/FINDING-2026-08-28-seat03-icon-indirect-call-via-generator-expression-diverges-from-arizona.md`.
- `rung37_subscript_genproc.icn` — a deliberate crash-regression guard for the "tgrlink class"
  activation-frame SEGV this project has been bitten by before; its own header documents why. Not
  a bug today, but converting it into a byte-equal suite pin would defeat its purpose as a probe.

Both stay loose until their respective situations resolve (bug fixed / probe retired), same
standing as `ladder/`'s open-defect witnesses in the Snocone sibling task.

## rung03 — 4 of 5 files HARD-BLOCKED on a known, already-tracked, rank-0 fleet defect (seat03, 2026-08-29)

`rung03_suspend_gen.icn rung03_suspend_gen_compose.icn rung03_suspend_gen_filter.icn rung03_suspend_return.icn` —
this task's own priority list flagged rung03 as "genuine generator/coroutine content, screen
individually for the tgrlink-class activation-frame risk before converting." That screening was
done for real (not by reading source alone — by actually running each file): **all 4 SIGSEGV, both
m3 and m4, deterministically, on ordinary `while ... suspend i do ...` / `suspend 1; return 2`
generator procedures — nothing exotic, no `create(`, no indirect calls.** `corpus_suite_harness.py
convert-blocks`'s own `byte-equal-or-no-delete` check refused all 4 mechanically before anything was
written or deleted — the safety net worked exactly as designed.

**This is not a new defect and not this row's to chase**: it is a four-line-reproducible, already
fully root-caused, rank-0 fleet priority — `FINDING-2026-08-24-hq_P-icon-bench-0-of-8-is-one-defect-
suspend-procedures-get-no-activation-frame.md` (a procedure containing `suspend` is emitted with NO
activation frame; body still addresses frame-relative slots that were never carved, corrupting the
γ/ω port pair and jumping to a small integer as if it were code). Routed to, and under active
construction as, `icon-n2-generator-activation-frames` (QUEUE.tsv rank 0, owner `hq_P`; SCRIP history
shows ~20 commits against it up to current HEAD, still incomplete — killswitch default OFF as of the
FINDING). Three OTHER rows already sit `PARKED-AWAITING`/`BLOCKED-ON` this exact same row
(`icon-bench-correct-zero-of-eight`, `icn-recogn-genqueen-suspend-shape`,
`scrip-polyglot-demo-icon-semicolon-5-files`) — this is a well-established blocking relationship, not
a novel one. **Stays loose until N-2 lands**, then re-run `convert-blocks` fresh (do not assume these
4 are the only rung03-shaped casualties elsewhere in the tree — this same signature can hit any
plain `suspend`-based generator procedure anywhere in `tests/icon/`).

`rung03_suspend_return` names TWO closely related but distinct constructs to disambiguate if this is
ever revisited: the file crashes on its `suspend 1;` before `return 2;` is ever reached (same root
cause as the other 3, not a second defect).

**`rung03_suspend_fail` is the 5th file and does NOT use `suspend` at all** (its name is a misnomer —
content is an ordinary procedure that returns nothing on one path, testing procedure-fails-silently
semantics). It is green (m3+m4 both PASS) and has a real `.expected` oracle — genuinely convertible —
but converting it alone makes a family of one, the same open "convert vs. KEEP.md" policy question
already deferred for the 4 other singletons (`rung14_case_return_arm`, `rung15_iterate_string`,
`rung16_seqexpr_gen_basic`, `rung38_cset_embedded_nul`, see task NEXT). Not decided unilaterally here
either — left loose pending that one policy call, not because of any risk.

## Re-running this classification

Re-`grep` the 8 standalone names across `SCRIP/scripts/` before trusting the "no real dependency"
claim above — a future script could add a genuine read. Re-check `ls <name>.*` for an `.expected`
appearing (would mean the file became convertible). Re-check the 2 rung37 witnesses' owning
FINDING/task state before assuming either is still open. Re-check `icon-n2-generator-activation-
frames`' QUEUE.tsv state before assuming rung03 is still blocked — once it lands, re-run
`convert-blocks` on all 5 rung03 files fresh rather than trusting this table.
