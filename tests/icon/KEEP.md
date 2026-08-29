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

## rung36 — 32 of 75 converted (`rung36_all.icn`/`.ref`); 43 stay loose, all individually measured, not guessed (seat07, 2026-08-29)

Fresh `convert-blocks icon` run against all 75 (on a scratch copy, `.expected`→`.ref`): 32 genuinely
green (byte-equal both directions, both modes, independently re-verified via a second `run` pass
after placement) → `rung36_all.icn`/`.ref` (+ `.in` stdin sidecar, 3 of the 32 use stdin). 43 refused
as "original not green" and `--skip`ped, left loose. Breakdown of the 43:

**29 already carried a `.xfail` marker and are still genuinely red** (re-verified same-day by this
task's own prior pass, seat06 2026-08-29 — "zero stale markers"). Not re-characterized here.
**Named individually below (seat09, 2026-08-29) because `test_gate_suite_conversion_complete.sh`'s
"declared" check is a literal basename substring match against this file's own text — a count
("29 already carried...") does not satisfy it, only the name does.** This was invisible until
`FINDING-2026-08-29-hq_B-the-suite-conversion-gate-capped-its-list-at-20-and-hid-190-files-across-four-languages.md`
surfaced that the gate's failure list itself was silently capped at 20, so nobody had seen these
28 sitting in the "undeclared" count until now (`rung36_jcon_btrees.icn` was already an exception,
named elsewhere in this file's own dependency note below — the other 28 were not named anywhere):
`rung36_jcon_arith.icn` `rung36_jcon_case.icn` `rung36_jcon_checkfpx.icn` `rung36_jcon_ck.icn`
`rung36_jcon_collate.icn` `rung36_jcon_errkwds.icn` `rung36_jcon_errors.icn` `rung36_jcon_evalx.icn`
`rung36_jcon_every.icn` `rung36_jcon_fncs.icn` `rung36_jcon_geddump.icn` `rung36_jcon_gener.icn`
`rung36_jcon_image.icn` `rung36_jcon_io.icn` `rung36_jcon_iobig.icn` `rung36_jcon_large.icn`
`rung36_jcon_lgint.icn` `rung36_jcon_misc.icn` `rung36_jcon_nargs.icn` `rung36_jcon_others.icn`
`rung36_jcon_prefix.icn` `rung36_jcon_profsum.icn` `rung36_jcon_radix.icn` `rung36_jcon_recent.icn`
`rung36_jcon_sets.icn` `rung36_jcon_sorting.icn` `rung36_jcon_struct.icn` `rung36_jcon_toby.icn`
— reason for all 28, uniformly: permanently `.xfail`-marked, genuinely fails today, individually
re-verified against its own marker's claim (not merely inherited) by seat06's 2026-08-29 skeptical
sweep of all 30 Icon `.xfail` files. No witness file touched by this declaration — it is a KEEP.md
entry only, same as every other line in this file.

**1 `.xfail` marker (`rung36_jcon_diffwrds`) was STALE — a genuine XPASS, found and fixed this
pass.** It reads words via `read()` fed by its `.stdin` sidecar; manually re-running it without that
stdin (a methodology mistake caught before trusting it) gave empty output and looked red, but with
the real `.stdin` content it matches `.expected` byte-for-byte in both modes. Some intervening SCRIP
commit fixed whatever the marker used to document — the marker gave no reason text to trace which
one. Marker deleted; the file converted normally as entry #? of the 32 above. This is Icon's own
instance of the same class `FINDING-2026-08-29-hq_P-three-of-four-xfail-markers-were-stale-xpass.md`
found in Snocone that day (3 of 4 there; 1 of 30 here) — not filed as its own FINDING, folded in here
instead: one file, ordinary "the bug got fixed and nobody promoted the marker" drift, not a new
mechanism. Confirmed via the 3 global hard gates: PASS +1 / XFAIL -1 uniformly, FAIL/BADEXIT/TOTAL
unchanged, before and after — the delta is fully explained by this one fix, not a mystery.

**14 had NO `.xfail` marker at all — genuinely new findings, not previously documented anywhere this
session could find.** Individually measured (not assumed), grouped by signature:

- `rung36_jcon_cxprimes`, `rung36_jcon_recogn`, `rung36_jcon_scan2` — SIGSEGV (signal 11), both modes,
  content confirmed `suspend`-or-alternation-based generator/backtracking code. Same class as rung03
  above (`icon-n2-generator-activation-frames`) — `recogn` (and `genqueen`, below) specifically already
  have their OWN dedicated task, `icn-recogn-genqueen-suspend-shape.task.md` (state OPEN, un-parked by
  Lon 2026-08-28, depends on `icon-n2-generator-activation-frames`) — cite that row for those two, not
  this KEEP.md, if picking the bug up. ⭐ **`cxprimes`/`scan2` CONFIRMED, not just plausible (seat08,
  2026-08-29, re-tested against HEAD post the region-resident-protocol landing, `98b6e12c`/`38a0119b`):
  both still crash — `cxprimes`'s `sieve` suspends inside a `while` loop (maps to icon-n2's own
  "suspend_loop" witness shape, still-unfixed as of that landing; crashes non-deterministically,
  rc=132/139 across identical runs), `scan2` crashes deterministically entering its "non-local"
  section, whose only content (`every write(foo()) do write(move(1))`, foo()'s only call site) is
  exactly icon-n2's "suspend_after" shape (suspend, then a body call after resume).** Mailed ceo
  (`icon-n2-cxprimes-scan2-corroboration`) as two concretely-typed witnesses for that row's own
  remaining work — not this row's to fix, characterization only.
- `rung36_jcon_genqueen` — FAIL (output mismatch, rc=1), both modes. The other half of
  `icn-recogn-genqueen-suspend-shape.task.md` (currently `rc=1 ERROR 246 -- stack overflow` per that
  task's own latest measurement, not a SIGSEGV — re-check its own NEXT before trusting this summary,
  it moves fast).
- `rung36_jcon_level` — **root-caused (2026-08-29, seat02), not unexplained any more.** `&level`
  (`rt_k_level`) is only maintained by `bb_define_activate()` (`src/templates/bb/bb_define.cpp:54`,
  the generator-capable procedure role) — `bb_define_sr()` (`:380`, the standard role used for
  ordinary procedures) never touches it, so calling/returning from any non-`suspend` procedure never
  moves `&level`. Repro needs no generator content at all: `procedure p(); write(&level); end` called
  from `main` prints the SAME value before and after, not `+1`. Isolating this also surfaced a second,
  separate defect (the crash after this file's 11th line of output) that reproduces without `&level`
  and corroborates the already-open `icon-n2-generator-activation-frames` value-path item instead of
  being new. Full detail, both parts: `FINDING-2026-08-29-seat02-icon-level-keyword-not-tracked-for-
  non-generator-procedures.md`. Two-line-shaped fix (mirror `bb_define_activate`'s `enter_env`/
  `leave_env` `rt_k_level` pair into `bb_define_sr`), not attempted here (out of this row's lane, same
  as `scan1`/`proto`).
- `rung36_jcon_var` — CRASH (signal 6, SIGABRT), NOT the generator class: a named, deliberate internal
  guard, `"FATAL emit_drive IR_ASSIGN guard: nameless 2-operand assign (assign-through-lvalue-producer:
  !x/?x element-variable or s[i:j] section)"`, citing `GOAL-IR-IMMUTABLE-EMIT.md` (exists, 231KB) by
  name in its own error text. A real, already-named, already-scoped architectural gap — not chased
  further here, the guard message already points at its own owning doc.
- `rung36_jcon_proto` — m3 `PASS(rc=1)`, m4 `SKIP` (parse error: "line 28: expected expression (got
  ,)", on the empty-tuple literal `(,,,);`). A genuine m3-vs-m4 PARSE divergence, which is surprising
  given the two modes are supposed to share one frontend — not traced past confirming the repro line;
  worth a FINDING if picked up, since "the parser gives different answers depending on which mode asked"
  is a bigger claim than this KEEP.md should assert without tracing it.
- `rung36_jcon_kwds`, `rung36_jcon_subjpos` — m3 `PASS`, m4 `FAIL`. **Root-caused (seat12, 2026-08-29,
  confirmed causally not just by inspection): `&pos`'s DEFAULT value only.** `&pos` is `r14+1`
  (`bb_keyword_icon.cpp`); mode-3 zeroes `r14` before entry via `rt_outer_call_delta0` (`rt.c:52-59`),
  mode-4's equivalent entry path (`scrip.c`'s `else` branch when `icn_cells_graph` — the default Icon
  shape) never does. Isolated to the very first, unassigned read of `&pos` in each file — everything
  after the program's first `&pos :=` assignment matches exactly, both witnesses. Confirmed causally
  with a throwaway 1-line local fix (built, byte-identical to `.expected`, reverted — no net diff).
  NOT the same cause as `rung38_cset_embedded_nul` (that's a different, unrelated m3/m4 divergence).
  See `FINDING-2026-08-29-seat12-icon-pos-keyword-reads-garbage-in-mode-4-r14-not-zeroed-at-entry.md`.
- `rung36_jcon_prepro` — **CONVERTED (seat11, 2026-08-29), no longer loose.** Was a HARNESS limitation,
  not a SCRIP bug: `convert-blocks`'s on-disk re-validation step runs the written suite entry from a
  fresh temp dir, which does not carry `$include "prepro.dat"`'s companion file the way the original
  loose-file check (run from this directory) does. Fixed generally in `corpus_suite_harness.py` —
  `run_suite_entry` now takes a `companion_dir` and copies any file named by an entry's own
  `$include "X"` / `-INCLUDE 'X'` directive into its temp dir before running, threaded through all
  three of its callers (`cmd_convert`, `cmd_convert_blocks`, `cmd_run`) — so this is not prepro-specific
  and should hold for any future Icon/SNOBOL4/Snocone entry with a real companion include file. `prepro`
  now lives as entry 33 of `rung36_all.icn`/`.ref` (33/33 PASS both modes, independently re-verified via
  `corpus_suite_harness.py run` after landing); its loose `.icn`/`.expected`/`.s`/`.stdin` were removed
  (the `.stdin` was a stray near-duplicate of `prepro.dat`, never actually used as program stdin — the
  program takes none). `prepro.dat` itself stays in this directory permanently (not orphaned) — it is
  the companion file the converted entry still needs at grading time, same as it did as a loose file.
- `rung36_jcon_fncs1` — genuinely still red **even with `fncs1.dat` present** (the missing-fixture
  hypothesis was wrong for this one too, but doesn't explain it away like `prepro`). Diffed carefully:
  the first `open("fncs1.dat")`/read cycle matches `.expected` exactly; every SUBSEQUENT
  `open("fncs1.dat")` in the same program run (it reopens the same path several times, apparently to
  re-read its own source under different string transforms) returns `&fail` in SCRIP where the
  reference keeps succeeding. Smells like a real repeated-open/GC-interaction bug (the program also
  calls `collect()` between opens), not investigated past this precise repro. `rung36_jcon_fncs`
  (without the `1`) already carries a `.xfail` marker for its own reason, unconfirmed whether it's
  related.
- `rung36_jcon_args` — **CORRECTED 2026-08-29 (seat14): the prior reason above was wrong.** The file
  never reads command-line arguments (`main()` takes zero parameters; it only calls its own local
  procedures with varying literal arg counts) — no harness capability is needed to test it. Runs to
  completion (rc=0, no crash) but ~140 of 447 lines diverge from `.expected`: a real bug, root-caused to
  a shared arg-staging buffer (`g_call_args[]` in `src/runtime/by_name_dispatch.c:905,919,945`) not
  cleared across an indirect call-through-a-value (`(!plist)(...)`) recalled with fewer arguments than a
  prior call — the omitted trailing parameter keeps the previous call's stale value instead of reading
  as unbound. Direct named calls are unaffected. See `FINDING-2026-08-29-seat14-icon-args-keepmd-reason-
  was-wrong-bug-is-g-call-args-not-cleared-across-indirect-recalls.md`. Not fixed here (out of this
  row's lane, same as every other bug found on this row) — stays loose, not a KEEP.md design exclusion.
- `rung36_jcon_scan` — FAIL both modes, **root-caused (2026-08-29, seat06), not "under-produces, untraced"
  any more.** `upto(!x)` — a scanning function whose argument is itself a generator, e.g. `upto(!&lcase)` —
  hangs (infinite loop), not merely under-produces; the witness's own `?`-scan wrapper happens to change
  the failure mode to bounded-but-wrong output, which is what made this look like ordinary under-production
  before isolating the minimal repro. Not cset-specific (`upto(!"abcd")` reproduces identically). Mechanism
  verified in `src/templates/bb/bb_scan_upto.cpp`'s β (resume) path — see
  `FINDING-2026-08-29-seat06-icon-upto-with-generator-argument-infinite-loops.md` for the full trace and
  the two minimal repros. Full graph-wiring root cause (where the argument generator's advance should route
  into `upto`'s α instead of β) not found — flagged as the next step in the finding, not attempted here.
- `rung36_jcon_scan1` — FAIL both modes, **root-caused (2026-08-29, seat09), not a mystery any more.**
  `&ascii`/`&cset` are built off-by-one in `src/runtime/keywords.c:75-76` — `chr(0)` never lands in its
  correct first slot and wraps to the last one instead (`&ascii[1]` is `\x01`, `&ascii[128]` is `\x00`).
  scan1's `ascii?skips`/`ascii?vowls` lines are the only symptom in this file (both scan directly
  within `&ascii`); every value in the diff is fully explained by this one construction bug, not a
  family of small ones — confirmed independent of the unrelated `FINDING-2026-08-24-seat16-icon-cset-
  string-literal-embedded-nul-truncates-to-empty.md` (`*skips` measures its full correct 18 members
  here, not truncated). Full detail: `FINDING-2026-08-29-seat09-icon-ascii-and-cset-keywords-are-built-
  off-by-one-chr0-wraps-to-the-end.md`. Two-line fix, not attempted here (out of this row's lane).

**`util_zframe_ab.sh` hardcodes a path to `rung36_jcon_btrees.icn`** (one of its 5 fixed A/B
witnesses) — `btrees` is one of the 29 still-red `.xfail` files above, stays loose, was NOT touched
this pass, so that script is NOT at risk from this conversion. It WILL be at risk the day someone
converts or deletes `btrees` — re-check this note then, don't assume it's been handled.

**`test_icon_ir_rung_36.sh` was rewritten this pass** (SCRIP repo, same session) to delegate to
`corpus_suite_harness.py run --lang icon` for the 32 now-converted entries, refusing rc=2 if the suite
is missing, per `FINDING-2026-08-29-hq_P-converting-a-family-silently-disarms-its-per-family-glob-script.md`'s
established shape — it no longer globs the (now largely gone) loose `.icn` files directly.

## Re-running this classification

Re-`grep` the 8 standalone names across `SCRIP/scripts/` before trusting the "no real dependency"
claim above — a future script could add a genuine read. Re-check `ls <name>.*` for an `.expected`
appearing (would mean the file became convertible). Re-check the 2 rung37 witnesses' owning
FINDING/task state before assuming either is still open. Re-check `icon-n2-generator-activation-
frames`' QUEUE.tsv state before assuming rung03 is still blocked — once it lands, re-run
`convert-blocks` on all 5 rung03 files fresh rather than trusting this table.
