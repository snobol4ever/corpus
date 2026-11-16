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

Owed (`ALL.omit`): `wiki_highlight` and `diary-index` rewrite the file they are given in place, and the out_files road deletes a named
file before every run.

The first SCRIP reading (mode 3, SCRIP 38179ce886, on the landing's worktree): 2 of 2.
