# JCON test suite — vendored, verbatim

The JCON project's own correctness test suite: 91 `.icn` sources, 83 with a matching
`.std` (expected stdout) file, 21 with a `.dat` companion. Vendored for
`test_icon_jcon_suite.sh` to grade SCRIP's `m3`/`m4` output against.

## Origin

Sourced verbatim from `jcon-master/test/` (Gregg Townsend and Todd Proebsting,
Arizona Board of Regents, 1998-1999; license in `COPYRIGHT`). No `gtest/`
subdirectory exists in this checkout to exclude (the exclusion this suite's
own task GOAL names for graphics content is a no-op here, not a gap). The
runner script `addtest` (JCON's own `icont`+`iconx` oracle harness) is not
vendored — it is not a test, and this suite grades against SCRIP, not icont.

## Deliberately NOT semicolon-converted, unlike `jcon-compiler/`

`jcon-compiler/`'s sources were converted (semicolons inserted at icont's own
Beginner/Ender points) because that package exists to stress-test SCRIP on a
large real program, where the point is successful compilation. This suite is
the opposite case: it is SCRIP's own correctness floor for the Icon frontend,
and how many small, individually-isolated test cases fail to PARSE under
SCRIP's semicolon-required dialect is itself the signal the suite's own GOAL
asks to be measured (`test_icon_jcon_suite.sh`'s REJECT class, named per-file,
never silently converted or dropped). Converting the sources would destroy
exactly the thing being measured.

## `.dat` companions

21 tests read a data file. Per JCON's own `addtest` convention, the `.dat` is
supplied BOTH ways at once: as `argv[1]` and as stdin
(`./prog file.dat < file.dat > file.std`). The runner reproduces this exactly.

## No-oracle sources (vendored, never graded)

9 `.icn` files have no `.std`: `link1`/`link2`/`load1`/`load2` (dynamic
loading — meaningless for a compile-once model) and `tpp1`-`tpp5` (JCON's own
template-preprocessor test inputs, not standalone programs). Present for
completeness/provenance; the runner excludes them from the graded set rather
than inventing an oracle.

## `.ref` and `.args` sidecars (ours, not upstream's)

Upstream ships no `.std` for `link1.icn` (its `addtest` harness never ran it: it needs a
two-file link and command-line arguments). `link1.ref` is the expected stdout WE cut from
the shared icont/iconx oracle (`/home/resources/icon-master`, `icont link1.icn link2.icn`,
run with the argv in `link1.args`); `link1.args` is that argv, one line, shell-split. The
runner grades a program against its `.std` when upstream shipped one and against its `.ref`
otherwise, and reads the modules a program `link`s from the program itself. A `.ref` is
never cut from SCRIP's own output (THE PACKAGE LOCKDOWN, 2026-09-06). Cut by the cfo,
2026-09-07.

## REF PROVENANCE — which oracle cut each ref, and the two that Arizona cannot

Every `.std` in this directory was cut by **JCON**, not by Arizona `icont`/`iconx`; that is what
"vendored, verbatim" above means. hq_P's standing lane re-cuts each one from Arizona icont so the
suite grades against the ONE Icon oracle (83 `.std` censused 2026-09-09: 59 agree, 17 re-cut, 4
refused, 2 non-terminating, 1 orphan). **Two cannot be re-cut, and they are graded anyway against
their JCON refs, with the reason named here** (ceo CEO-491 on Lon's order, 2026-09-10):

- **`lgint.std` — JCON-provenance, ORACLE TIMEOUT.** Arizona `iconx` is still running at `rc=124`
  after 600 s having written 4224 bytes. An hour-long run may yet supersede this.
- **`toby.std` — JCON-provenance, ORACLE DEFECT.** Arizona's `to` wraps past `9223372036854775807`
  to `-9223372036854775766` and never stops — 8333 lines in the first 200 KB — where the language
  and jcon both stop at 48 lines. ⛔ The oracle here is not slow, it is **wrong**, and that is why
  the two reasons may never be summed: a timeout cap reports an oracle defect and an oracle that
  merely needs longer with the identical symptom, and only one of them has an answer waiting.

Both are **RED until cured** (hq_I holds them). A red with a named owner is worth more than a
silence: they previously sat in `OUTSIDE_ARIZONA_BASELINE.tsv` as `TIMEOUT`, outside the
denominator, on the unstated assumption that the only admissible ref is one we cut ourselves.
**A ref with a named provenance beats no ref at all.**

`link1.ref` remains the one ref cut from Arizona (see above) — and no `.ref` or `.std` here is ever
cut from SCRIP's own output (THE PACKAGE LOCKDOWN, 2026-09-06).
