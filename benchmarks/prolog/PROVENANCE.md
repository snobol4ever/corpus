# PROVENANCE — corpus/benchmarks/prolog/

Closable checklist for `corpus-import-prolog-bench-remainder`. See `README.md` for the
fuller narrative (the two upstream sets, the SCRIP-dialect `bench/` convention, how to add
a benchmark). This file is the accounting: every `.pl` in the resident GNU Prolog drop's
`ExamplesPl/` either present in this corpus or declared here with a reason, licenses
verified from the drops' own COPYING/LICENSE files, and the empty SWI bench submodule
recorded rather than silently skipped.

## 1. Census — every `ExamplesPl/*.pl` accounted for

Re-run fresh this session (not trusted from the mint LEDGER's claim): all 22 flat `.pl`
files directly under `/home/resources/gprolog-master/examples/ExamplesPl/` are already
present under `src/gnu-examplespl/` (imported verbatim by an earlier row; this row did not
re-import them, only verifies and documents). None are missing.

| ExamplesPl file | Role in this corpus |
|---|---|
| `boyer.pl` | present, `src/gnu-examplespl/` only — reference copy, not currently graded in `bench/` |
| `browse.pl` | present, `src/gnu-examplespl/` only — reference copy, not currently graded |
| `cal.pl` | present, `src/gnu-examplespl/`; graded SCRIP-dialect form at `bench/cal.pl` |
| `chat_parser.pl` | present, `src/gnu-examplespl/` only — reference copy, not currently graded |
| `common.pl` | present, `src/gnu-examplespl/` — infra (shared driver include, not a benchmark itself) |
| `crypt.pl` | present, `src/gnu-examplespl/`; graded at `bench/crypt.pl` |
| `ham.pl` | present, `src/gnu-examplespl/`; graded at `bench/ham.pl` |
| `hook.pl` | present, `src/gnu-examplespl/` — infra (per-system counter/timer hook, not a benchmark) |
| `meta_qsort.pl` | present, `src/gnu-examplespl/`; graded at `bench/meta_qsort.pl` |
| `nand.pl` | present, `src/gnu-examplespl/` only — reference copy, not currently graded |
| `nrev.pl` | present, `src/gnu-examplespl/`; graded at `bench/nrev.pl` |
| `poly_10.pl` | present, `src/gnu-examplespl/` only — reference copy, not currently graded |
| `qsort.pl` | present, `src/gnu-examplespl/`; graded at `bench/qsort.pl` |
| `queensn.pl` | present, `src/gnu-examplespl/`; graded at `bench/queensn.pl` |
| `queens.pl` | present, `src/gnu-examplespl/`; graded at `bench/queens.pl` |
| `query.pl` | present, `src/gnu-examplespl/`; graded at `bench/query.pl` |
| `reducer.pl` | present, `src/gnu-examplespl/` only — reference copy, not currently graded |
| `sdda.pl` | present, `src/gnu-examplespl/` only — reference copy, not currently graded |
| `sendmore.pl` | present, `src/gnu-examplespl/`; graded at `bench/sendmore.pl` |
| `tak_gvar.pl` | present, `src/gnu-examplespl/` only — reference copy, not currently graded |
| `tak.pl` | present, `src/gnu-examplespl/`; graded at `bench/tak.pl` |
| `zebra.pl` | present, `src/gnu-examplespl/`; graded at `bench/zebra.pl` |

Non-`.pl` infra in the same flat directory (`Makefile`, `PROGS`, `README`, `.gitignore`) is
out of the census by construction (the loop only walks `*.pl`); carried into `src/gnu-
examplespl/` anyway as `_PROGS` and `_UPSTREAM_README` (underscore-prefixed so they read as
non-`.pl` infra, not stray benchmark kernels) for completeness.

**Per-system subdirectories declared out of scope, not imported:** `BINPROLOG/`, `CIAO/`,
`SICSTUS/`, `SWI/`, `WAMCC/`, `XSB/`, `YAP/`. Each holds only a `MAKE_PROGS`/`MAKE_CLEAN`
build script plus a system-specific `HOOK.pl` shim (per `ExamplesPl/README`'s own
description) — no additional benchmark source, just per-system porting glue for a build
convention this corpus doesn't use. Nothing of benchmark substance is left un-accounted by
skipping them.

## 2. License — GNU Prolog (`gnu-examplespl` source)

Verified from the drop's own file, `/home/resources/gprolog-master/COPYING` (not assumed
from the task brief's framing, which this confirms correct):

> GNU Prolog is free software. Since version 1.4.0, GNU Prolog distributed under a dual
> license: LGPL or GPL. So, you can redistribute it and/or modify it under the terms of
> either: the GNU Lesser General Public License (LGPL) ... version 3 ... or any later
> version[,] or the GNU General Public License (GPL) ... version 2 ... or any later
> version[,] or both in parallel (as here).
>
> Remark: versions of GNU Prolog prior to 1.4.0 were entirely released under the GNU
> General Public License (GPL).

Dual GPL-2-or-later / LGPL-3-or-later, confirmed — matches the brief. Full text carried
into the import directory: `src/gnu-examplespl/COPYING` (copied verbatim from the drop
alongside this row's work, so the license travels with the code it covers).

**Per-file headers checked, none override the umbrella.** Spot-checked all 22 files'
headers (`boyer.pl`, `chat_parser.pl`, `tak.pl`, `nand.pl`, `sdda.pl`, `reducer.pl`, `nrev.pl`
and the rest): each carries only an attribution comment (author, date, source paper — e.g.
`tak.pl`/`boyer.pl` credit Evan Tick's 1989 transcription of R. P. Gabriel's Lisp originals;
`nand.pl` credits Bruce Holmer; `reducer.pl` credits Peter Van Roy), never a separate,
more-restrictive or more-permissive license grant. Per the task's own "per-file headers
override the umbrella where present" rule: none are present, so the umbrella `COPYING`
dual-license governs this specific distribution's copy of every file as imported here.
(The benchmarks' *algorithms* are much older than GNU Prolog itself — the classic
1980s DEC-10/Berkeley timing suite that essentially every Prolog system bundles its own
copy of — but that's an authorship note, not a license override: no alternate license text
accompanies any of these files in this drop.)

**`swi-vanroy` license — out of this row's explicit scope, noted for completeness, not
newly verified here.** The task brief names only GNU Prolog's `COPYING` for verification.
`src/swi-vanroy/` was imported by an earlier row from `github.com/SWI-Prolog/bench` (per
`README.md`'s own provenance table) — a separate repository from the resident
`swipl-devel-master` checkout. `swipl-devel-master/LICENSE` (Simplified BSD) is the main
SWI-Prolog *interpreter's* license and is **not** confirmed to also govern the separate
`SWI-Prolog/bench` repo specifically (that repo carries its own `_UPSTREAM_README.md`
here, which documents authorship/calibration but not a license grant). Recorded as a real,
open gap for a future row — not assumed either way.

## 3. SWI bench submodule — confirmed empty, not chased

`swipl-devel-master/bench` (an unpopulated git submodule on this machine — `git status` in
that checkout shows it as a registered-but-uninitialized submodule path) contains **zero
files**: `ls -la /home/resources/swipl-devel-master/bench/` returns only `.`/`..`. SWI's own
bench suite is therefore **not resident** here under that path; the actually-resident
`swi-vanroy` benchmark set (Section 2 above) was fetched independently from
`github.com/SWI-Prolog/bench` by an earlier row, not from this submodule. Per the task
brief: not chasing a download to populate `swipl-devel-master/bench` as part of this row.

## 4. Content-diff — `src/` reference copies vs. graded `bench/`+`vanroy/` working sets

Every filename present in both a `src/*` reference tree and its corresponding graded
tree was `diff`'d to confirm nothing silently drifted (dedup-by-content, not just by name,
per this row's own `## NEXT`).

**Result: every overlapping file differs, and by design** — `README.md` §"The runnable
SCRIP set" already documents why: `bench/`/`vanroy/` replace each program's original
non-deterministic timing harness (`benchmark(ShowResult) :- ...`, `:- include(common).`,
iteration-count CLI args) with the SCRIP convention (`:- initialization(main). main :-
<run-once>, write(Result), nl.`) so output is a deterministic, diffable signature instead
of a wall-clock number. Spot-checked in full (not just line-counted) on `tak.pl`: the
`tak/4` arithmetic clauses are **character-for-character identical** between
`src/gnu-examplespl/tak.pl` and `bench/tak.pl`; only the driver wrapper differs, exactly as
the README describes. The remaining pairs were `diff -q`'d for a line-count sanity check
(7-191 differing lines each, consistent with "driver swapped, algorithm kept" rather than
a rewrite) rather than individually hand-verified — flagging that as the honest boundary of
this pass, not a claim of exhaustive per-file review:

- `gnu-examplespl` vs `bench/`: `cal crypt ham meta_qsort nrev qsort queensn queens query
  sendmore tak zebra` — all differ (driver only, per the `tak.pl` spot-check pattern).
- `swi-vanroy` vs `vanroy/`: `crypt derive divide10 fib log10 meta_qsort mu nreverse ops8
  qsort queens_8 query sendmore tak times10 zebra` — all differ, same pattern.

No file was found byte-identical between a reference tree and its graded counterpart,
which is itself a consistency signal (the harness-swap step was applied uniformly, not
missed for some subset that would then be running the wrong — timing, not correctness —
program shape under a `.expected` that assumes deterministic output).

**One naming note, not a defect:** `vanroy/deriv.pl` has no matching basename in either
`src/` tree (`swi-vanroy` has `derive.pl`, not `deriv.pl`). Both are the classic symbolic-
differentiation benchmark under the two spellings that circulate across different Prolog
benchmark suites; `vanroy/derive.pl` (matching `swi-vanroy/derive.pl`) and `vanroy/deriv.pl`
appear to be two independently-sourced variants graded side by side, not a copy-paste
duplicate. Out of this row's scope to resolve further — flagged for whoever next touches
`vanroy/`.

## 5. DONE-WHEN

`bash -c` census (Section 1) — zero `UNACCOUNTED`, verified fresh this session, independent
of the mint-time LEDGER claim. Provenance clause (this file, containing the string
`swipl-devel-master/bench` per Section 3) — satisfied by this file's own existence.

## 3. SWI-Prolog official benchmark suite — vendored 2026-08-30 (Lon direct: "Look at the SWI and GNU for benchmark programs. Place those in our corpus repo")

The SWI bench submodule in `/home/resources/swipl-devel-master/bench/` is EMPTY (recorded in §2);
the real suite lives in its own repository and was fetched this day:
`https://github.com/SWI-Prolog/bench.git` @ `d74163e6` → drop at `/home/resources/swi-bench-master/`,
programs vendored verbatim to `src/swi-bench/` (35 `.pl`, each defining `top/0`, driven upstream by
`run.pl` with calibrated iteration factors — upstream README vendored beside them as
`UPSTREAM-README.md`). ⚠ LICENSE: the upstream repo carries NO license file; the set descends from
the public van Roy suite (UCB/CSD 89/50) that `vanroy/` already vendors 21 of, and is distributed
publicly by the SWI-Prolog project. Vendored as REFERENCE COPIES, not graded: graded kernels stay in
`bench/` under its own convention. `queens_clpfd.pl` needs library(clpfd) — reference-only by
construction. The 14 programs new relative to `vanroy/`: boyer, browse, chat_parser, det, eval,
fast_mu, flatten, moded_path, nand, perfect, pingpong, prover, simple_analyzer, unify (+ sieve,
serialise variants).
