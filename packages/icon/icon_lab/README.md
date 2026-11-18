# icon_lab (IconAghLab)

Radomir Krawczykiewicz's Icon-Lab: the programs of a laboratory course in Icon at AGH University of Science and Technology, Krakow
(https://github.com/Kotwic4/Icon-Lab, commit b914ec4 of 2018-02-03; MIT licence, its `LICENSE` copied beside the files, the upstream README kept as
`UPSTREAM-README.md`). Twenty files in four lab folders and `other/`: string scanning and mapping, a Quine-McCluskey reduction of binary terms,
a recursive-descent recogniser of logic formulas, their conversion to reverse Polish and a truth table, combinations, a dictionary of words,
digits in a string, cat, and a program that links a library beside it.

THE CONVERSION: every file carries the semicolons SCRIP Icon requires, inserted once by `util_icon_semicolons.py` and PROVED by the stock
Arizona translator with newline insertion (`icont -s -c` of the original and of the converted text give the same `.u1` and `.u2`, byte for
byte): 19 of 20 same-code (`CONVERSION-PROOF.tsv`). The twentieth, `lab4/p2.icn`, is refused by Icon's translator at its line 14 (`procedura`, an invalid declaration); it carries its semicolons added by hand
and is an entry whose answer is the translator's diagnostic and whose status is 1 (`CONTRACT.tsv`, fatal gradable): the stock translator on the original and the fleet's on the
converted text give the same line and count (`CONVERSION-PROOF.tsv`).

THE INPUTS ARE OURS: no input ships with the programs that read standard input except `lab2/data`. `lab2/p1.in` is a copy of `lab2/data`;
`lab1/p2.in`, `lab4/p1.in`, `lab4/p3.in`, `other/cat.in`, `other/dictionary.in` and `other/digit.in` were written by the grader on
2026-11-15 to exercise each program as its code reads (formulas for the lab 4 parsers, words and digits for the others). Each answer is the
oracle's answer to that input.

THE ANSWERS were cut from the oracle, the fleet's `icont` and `iconx` 9.5.25a, each program built inside its own folder of a fresh copy of the
package and run twice a second apart with stderr merged into stdout (`CONTRACT.tsv` stderr merged, so a run-time error is an answer), by
`/home/resources/progress/handoffs/grader-2026-11-15/iconlab_cut.py`. 13 entries. `lab1/p1` is an entry again, graded with its five machine values masked (`ALL.mask`: `&clock`, `&date`, `&dateline`, `&time` and `&host`, lines 3, 5, 6, 7 and 8 of its 21), its answer cut twice on the graphics oracle since it writes `&features`. Out of the count (`EXCLUDED.tsv`): `lab1/p3`
seeds the random generator from the clock and answers differently every run, `lab3/p1` and `other/prog2` never end, `lab2/q` waits on the keyboard, and `lab4/p2` is
refused by the translator. `lab2/crt.icn` and `other/nwd.icn` are library files with no main.

The first SCRIP reading (mode 3, SCRIP 38179ce886, on the landing's worktree): 12 of 12 before `lab1/p1` returned.
