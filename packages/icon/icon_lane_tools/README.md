# icon_lane_tools (IconLaneTools)

Peter Lane's Icon tools (https://codeberg.org/peterlane/icon-tools, commit f5dd598 of 2024-01-14; MIT, the licence in `UPSTREAM-README.md`):
`icondoc`, a documentation generator for Icon programs, `icontags`, a tags file of the record and procedure definitions in Icon files, and two
helpers for vimwiki pages. They link Lane's libraries (`options_parser`, `icon_lexer`, from the sibling `pcl`) and `strings` (the sibling `ipl`).

All four Icon files were given the semicolons SCRIP Icon requires by `util_icon_semicolons.py`, in place under
`/home/resources/icon-demos/peterlane-icon-tools` and copied here, each proved same-code by the stock Arizona translator
(`CONVERSION-PROOF.tsv`; `/home/resources/progress/handoffs/grader-2026-11-16/icon_convert_prove.py`).

Each tool is run on its own source, so no input of ours was needed: `icontags -o tags icontags.icn` and `icondoc -d . icondoc.icn`
(`ALL.args`). The answers are what they write: the run's stdout (empty), then `tags`, and then `index.html` and `icondoc.html` (`out_files`).
Cut from icont and iconx 9.5.25a twice a second apart, identical.

The two vimwiki helpers rewrite the file they are given in place, so each reads an input of ours (Lon 2026-11-15: yes to writing inputs of
ours), kept under `wiki-syntax/inputs` and placed in the run folder before every run by the `in_files` cell, the same file named in
`out_files`: `diary-index diary.html` compacts a diary index of three entries (its header, its links as a list, the last six lines; the
program reads `lines[-6 to 0]`, whose last subscript fails), and `wiki_highlight page.html` prints `-- page.html` and rewrites each
`<pre icon>` block through `icon_html_format` of the sibling `pcl`, leaving a `<pre ruby>` block as it stands. Each answer is the run's
stdout, then the rewritten file. Cut from icont and iconx 9.5.25a twice a second apart, in two fresh copies, identical, rc 0 (the grader
2026-11-17).

The first SCRIP reading (mode 3, SCRIP 38179ce886, on the landing's worktree): 2 of 2; with the two helpers (SCRIP 8c757a3bc1, 2026-11-17): 4 of 4.
