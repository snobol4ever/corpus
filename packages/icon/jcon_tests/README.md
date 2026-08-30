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
