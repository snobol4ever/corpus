# uni_ubugger (UniconUbugger)

ubugger by jeffrey (chipnetics, https://github.com/chipnetics/ubugger, commit 3f4f921 of 2022-10-11, GPL v3, `LICENSE` beside it): a debugger
for Unicon and Icon written in Unicon, which rewrites each `.icn` file it is given into a `_dbg.icn` that stops at every `#xxx` comment and
steps from there. The upstream README is `UPSTREAM-README.md`.

`src/ubugger.icn` was given the semicolons SCRIP requires by `util_icon_semicolons.py --compile-args=--dialect=unicon`, proved same-code by
unicon 13.3 (`CONVERSION-PROOF.tsv`; `/home/resources/progress/handoffs/grader-2026-11-16/icon_convert_prove.py --unicon`).

THE INPUT IS OURS: `src/hello.icn`, a twelve-line program with one `#xxx` breakpoint, is ubugger's argument (`ALL.args`), and the file it
writes, `hello_dbg.icn`, is the answer (`out_files`: the run's stdout, empty, then that file's bytes). Cut from unicon 13.3 twice a second
apart, identical. `hello.icn` is no entry: it is our input, not a program of the distribution.

The first SCRIP reading (mode 3, SCRIP 38179ce886, on the landing's worktree): 1 of 1.
