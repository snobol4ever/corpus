# Files kept loose, deliberately not suite-converted

`corpus_suite_harness.py convert-blocks` requires every entry's ORIGINAL file to be green (PASS)
on both m3 and m4 before it will convert it — this is deliberate, matching the SNOBOL4-side
`convert` path exactly (byte-equal-or-no-delete cannot prove anything about a file that is not
green to begin with).

## 1. Stdin-bearing tests (5 files: read1-4, pb35)

`read1.pas`/`read2.pas`/`read3.pas`/`read4.pas`/`pb35.pas` (each with a paired `.ref` and a `.in`
stdin companion) read from standard input. The suite format has no stdin-input concept by deliberate,
permanent ruling (hq_C, 2026-08-24, on the identical SNOBOL4-side case — `cross`/`word1-4`/
`wordcount`): a one-line-per-entry encoding would need a fourth, nested, escaped format layer,
and a truncated/mis-split input fails silently. **Every stdin-bearing test stays loose files
PERMANENTLY, by ruling, not by omission.** These five continue to be graded exactly as before —
`test_gate_pascal_m3.sh`/`test_gate_pascal_m4.sh`'s loose-file loop already reads `$name.in` as
stdin when present.

⭐ **Confirmed current as of the master consolidation (seat04, 2026-08-29/30):** `util_build_master_suite.py
--lang pascal` independently reaches the same conclusion — all 5 are EXCLUDED LOUDLY (`ALL.excluded.txt`),
never silently absorbed, matching this ruling exactly. `pb35` was added to this list after being found by a
`read`/`readln`/`eof`/`eoln` sweep, not by its filename (unlike `read1`-`4`, its name gives no hint) — its
`.ref` had also been silently captured against `/dev/null` rather than its own documented input; both the
missing `.in` and the wrong `.ref` are fixed (corpus `979c8a006`). Worth re-sweeping by content, not name, if
this list is ever revisited — a filename-based assumption is exactly what missed `pb35` the first time.

## 2. RESOLVED — the intermittent-SIGSEGV and pre-existing-failure sets (54 files, formerly §2/§3 here)

✅ **Both blockers this section used to cite are landed, and a fresh re-check (seat02, 2026-09-06,
FLEET-12, row `pascal-every-non-package-source-that-runs-with-output-absorbed-into-the-master-with-
oracle-refs`) confirms every file this section used to name is green on m3 AND m4 against its existing,
already oracle-confirmed `.ref` (two full passes, plus 30 repeat runs apiece for the two former
intermittent-SIGSEGV witnesses — 0 failures).** Absorbed into the master this session (see git log /
this row's task LEDGER for the commit). Nothing named here stays loose for either reason any more:

- The **intermittent-SIGSEGV-under-m4** set (`pascal-m4-intermittent-segv-pb30-sieve`, tracked as
  `pascal-m4-intermittent-segv-layout-sensitive`) was bisected and cured at SCRIP `8ebf6535`
  (2026-08-29; `bb_binop_relop_val.cpp` gates the ZD arm on `op_node_kind` instead of taking a
  branch-and-bail exit on a value-producing relop) — see `FINDING-2026-09-03-seat10-pascal-m4-
  intermittent-segv-pb30-sieve-bisected-to-8ebf6535-cured.md` (380/380 clean runs across three
  independent sessions post-cure, precise single-commit bisection against a positive control).
- The **pre-existing-failures / `pascal-restore-prezeta` territory** set closed DONE 2026-08-30
  (`QUEUE.done.tsv`) — the ζ-window regression-restoration work this section deferred to has landed.

If a regression ever reopens one of these, re-add it here **by bare stem, without a `.pas` suffix** —
the builder's KEEP.md matcher keys on the literal `<stem>.pas`/`<stem>.ref`-shaped token, so a
`.pas`-suffixed mention anywhere in this file is a real, load-bearing exclusion, not decoration.

## 3. FPC-oracle regen exceptions (read3; pb37 no longer exempted here)

hq_C ruled (2026-08-28) `fpc -Miso` as the correctness oracle and default integer field width
moves 10→11 to match it. `read3`'s `.ref` cannot be regenerated from that oracle (FPC's ISO-mode
`eof`/numeric-`read` rejects the corpus's input where SCRIP accepts it) and stays the pre-existing
SCRIP-computed value; `read3` is loose regardless, permanently, via §1 (stdin). The former enum-write
exception for `pb37` (and `pb36`, already inside the master) is SETTLED, not merely exempted — full
ruling in `.github/ARCH-LANGUAGES.md` § PASCAL: ISO 7185 forbids `writeln(<enum>)` outright, so
`writeln(<enum>)` is a SCRIP extension beyond the standard rather than an oracle gap, and both are
`ISO-EXTENSION` witnesses with permanent SCRIP-self-derived refs — not a reason to keep either loose.
Full detail (including the exact FPC failure text) lives in ARCH-LANGUAGES.md, not duplicated here.

## 4. Suite-entry ref provenance — see `crosscheck/PROVENANCE.md`

The 96 blocks in `crosscheck/` are not all oracle-derived: **91 are, 4 are `ISO-DELEGATED-SCRIP-DEFAULT`
(real-number formatting, ruled by Lon via CEO-72/CEO-74 2026-08-28), and 1 (`pb:1 pb36`) has no oracle at all.**
Full provenance, sources and the measured audit: `crosscheck/PROVENANCE.md`.
