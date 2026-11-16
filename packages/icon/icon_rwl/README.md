# icon_rwl (IconRWL)

Radomir Krawczykiewicz's RWL-Icon, a program that reduces boolean functions, written for the same AGH course in Icon as IconAghLab
(https://github.com/Kotwic4/RWL-Icon, commit a0b63ed of 2018-02-03; MIT, `LICENSE` copied here; the assignment is the repository's
RWL-2017.pdf, not copied). `rwl.icn` reads one formula a line and writes its shortest equivalent form, or ERROR.

The program carries the semicolons SCRIP Icon requires, inserted by `util_icon_semicolons.py` and proved same-code by the stock Arizona
translator (`CONVERSION-PROOF.tsv`). Its input is the repository's own `dane` (`rwl.in` is a copy; `dane2` is kept beside it). The answer was
cut from icont and iconx 9.5.25a twice a second apart, stderr merged, by
`/home/resources/progress/handoffs/grader-2026-11-15/iconlab_cut.py`: 1 entry.

The first SCRIP reading (mode 3, SCRIP 38179ce886, on the landing's worktree): 1 of 1.
