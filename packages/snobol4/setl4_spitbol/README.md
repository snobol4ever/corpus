# setl4_spitbol (Snobol4Setl4)

Dave Shields's SETL4 (https://github.com/setl4/setl4, commit 6e9d97c of 2019-06-13, MIT): an implementation of SETL written in SPITBOL, and
the SPITBOL programs beside it, read in place from `/home/resources/collections/snobol4/setl4-setl4` (`ALL.source`): five examples (align,
humble, mark, roman, tabify), five programs on Shakespeare's sonnets (concord, sbl-sonnets, sonnets-1, the-bard-storms, tweet) and `paul/b.spt`.

The 11 programs were written in lower case for a folding SPITBOL; they were upper-cased IN PLACE by `sno_upcase_edition.py` (Lon 2026-11-15:
"Just do a simple regex conversion instead. Keep the spacing identical."), one character for one, 319 lines.

THE INPUTS: concord and sbl-sonnets read the collection's own `examples/sonnets/sonnets.txt` on standard input (`ALL.stdin`); tweet and
the-bard-storms take it as their argument, as their usage line says (`ALL.args`). OURS: `examples/align.in` and `examples/humble.in`, a short
SPITBOL program for the two that align or count program text; `examples/tabify.in`, indented lines; `paul/b.in`, three lines. Every answer is
`sbl -bf`'s, cut twice by the mine road; an error from the oracle is an answer (`CONTRACT.tsv` fatal gradable, its counters masked).

Not here yet: SETL4's own SETL programs (`test/*.stl`, `examples/*.stl`), which the translator runs one after another, the stem shape the
run-files road refuses.

The first SCRIP reading (mode 3, SCRIP 38179ce886, on the landing's worktree): 8 of 11.
