# Pascal-P5 ISO 7185 Test Suite

Imported from **Pascal-P5** (`github.com/samiam95124/Pascal-P5`, commit
`f730c1c03de861dfcf1a88c7b320268c3a456bcc`, 2022-12-20), the ISO-7185-compliant
descendant of the original Zurich Pascal-P4 portable compiler kit. This
directory is an as-shipped copy of the upstream `standard_tests/` and
`sample_programs/` trees, plus a top-level copy of `iso7185pat.pas` for
convenience (it also lives at `standard_tests/iso7185pat.pas`).

## What's actually in here — PAT vs. PRT (read this before trusting any number below)

The suite has two distinct, easily-confused parts:

- **PAT — "Pascal Acceptance Test"** (`iso7185pat.pas`, and the smaller
  `iso7185pat0001.pas`): **positive** tests. A conformant compiler must accept
  and run these without error. `iso7185pat.pas` (3725 lines) exercises
  essentially every ISO 7185 feature in one program; `iso7185pat0001.pas`
  (184 lines) specifically checks that words reserved in *other* Pascal
  dialects (`forward`, `module`, `uses`, ...) are legal plain identifiers in
  standard Pascal.
- **PRT — "Pascal Rejection Test"** (`iso7185prtNNNN.pas`, 429 files, each
  with a matching `.inp`/`.cmp`/`.ecp`): **negative** tests. Each program
  contains exactly one deliberate ISO 7185 violation (e.g. PRT 1 = "missing
  semicolon after program statement"); the `.ecp` file is the expected P5
  compiler listing showing that specific error caught at that specific
  location. **For this half of the suite, a compiler *rejecting* the program
  is the correct, conformant outcome — the opposite of the PAT half.** (Naming
  and semantics confirmed from `doc/the_p5_compiler.docx` §8.4, "Running the
  PRT and interpreting the results"; not guessed from the filenames.)

Getting PAT and PRT backwards makes any pass-rate number read exactly
inverted — do not average them together or call a raw parse-success count a
"pass rate" for PRT.

## License

Not a single clean answer — recorded here rather than picked, so a later
reader has what we had:

- The suite's own author, on his site (`standardpascaline.org/p5.html`,
  checked at import time), states specifically about the PAT: *"The PAT was
  created entirely by me and is original work. However, I also donate this to
  public domain."* He makes the same donation for Pascal-P5 generally: *"P4
  was, P5 is free of copyright and charges. Use as you see fit."*
- The `iso7185pat.pas` file header itself instead reads *"Copyright (C) 2010
  S. A. Moore - All rights reserved"* — a bare copyright notice with no
  grant text in the file.
- The bundled `doc/the_p5_compiler.docx` §10 "Licensing" carries a formal
  2-clause-BSD-style notice instead: *"Copyright (c) 2020, Scott A. Franco...
  Redistribution and use in source and binary forms, with or without
  modification, are permitted provided that... [attribution notice is
  retained]..."* (Scott A. Franco is S. A. Moore's current name — same
  person, same GitHub account `samiam95124`.)
- `sample_programs/` and `standard_tests/` carry no separate per-file license
  header beyond the PAT/PRT banners quoted above.

Treated here as: the author's intent is public domain, but the redistributed
package he ships carries a permissive attribution-preserving (BSD-style)
notice, so `corpus/NOTICE` records both and keeps the attribution rather than
asserting an unqualified public-domain claim. See `corpus/NOTICE` for the
formal entry; `corpus/LICENSE` (CC0) covers only this repository's own
original content and does not retroactively relicense these files.

## SCRIP compatibility (measured this session, `scrip --compile`, mode-4)

These are frontier measurements, not a gate — nothing here is wired into
`test_gate_*` or `test_corpus_*` yet, and none of the `.ecp`/`.cmp` oracle
files have been diffed against SCRIP output. Anyone wiring that up next
should start from these two verified, specific gaps:

- **`iso7185pat.pas`: parse error, line 109** — `arri = array (.1..10.) of
  integer;`. ISO 7185 permits `(.`/`.)` as alternate spellings of `[`/`]`
  (for character sets without brackets); SCRIP's Pascal frontend does not
  currently accept this digraph.
- **`iso7185pat0001.pas`: parse error, line 18** — `forward: integer;` inside
  a `var` block. SCRIP special-cases `forward` at the lexer/parser level, so
  it can't currently be used as a plain identifier the way ISO 7185 requires.

For the PRT (rejection) series: a `scrip --compile` sweep of all 427 readable
`iso7185prtNNNN.pas` files gives **143 that compile without any diagnostic
and 284 that produce a compile-time error.** Per the PAT-vs-PRT note above,
this is **not** a pass/fail count — for PRT, producing an error is the
conformant answer, so the 284 are the interesting-but-unverified ones
(do they report *the* error the `.ecp` names, at the right spot?) and the 143
are the ones where SCRIP silently accepted a program ISO 7185 says must be
rejected — which may just as easily mean "SCRIP doesn't implement that
category of static check at all yet" as "SCRIP has a bug." Neither claim is
verified; verifying either requires diffing against the matching `.ecp`,
which is unstarted.

## Structure

```
iso7185pat.pas, iso7185pat.inp      top-level convenience copy of the PAT (see standard_tests/ for the authoritative copy)
standard_tests/                      as-shipped upstream: PAT + PRT suite (iso7185pat*.{pas,inp,cmp,ecp}, iso7185prt*.{pas,inp,cmp,ecp})
sample_programs/                     upstream sample programs (hello, prime, qsort, roman, startrek, fbench, drystone, ...)
```

`sample_programs/drystone.pas` is a small S. A. Moore benchmark bundled with
Pascal-P5, **not** the canonical Weicker Dhrystone v2 that
`GOAL-PASCAL-100.md`'s PAS-BENCH rung targets (that one comes from
`github.com/Keith-S-Thompson/dhrystone` and is tracked there as not yet
importable — needs variant records, forward declarations, and a `clock`
primitive). Not wired into PAS-BENCH; noted here only so the two aren't
confused later.
