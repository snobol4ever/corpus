# icon_lab (IconAghLab)

Radomir Krawczykiewicz's Icon-Lab: the programs of a laboratory course in Icon at AGH University of Science and Technology, Krakow
(https://github.com/Kotwic4/Icon-Lab, commit b914ec4 of 2018-02-03; MIT licence, its `LICENSE` copied beside the files, the upstream README kept as
`UPSTREAM-README.md`). Twenty files in four lab folders and `other/`: string scanning and mapping, a Quine-McCluskey reduction of binary terms,
a recursive-descent recogniser of logic formulas, their conversion to reverse Polish and a truth table, combinations, a dictionary of words,
digits in a string, cat, and a program that links a library beside it.

THE CONVERSION: every file carries the semicolons SCRIP Icon requires, inserted once by `util_icon_semicolons.py` and PROVED by the stock
Arizona translator with newline insertion (`icont -s -c` of the original and of the converted text give the same `.u1` and `.u2`, byte for
byte): 19 of 20 same-code (`CONVERSION-PROOF.tsv`). The twentieth, `lab4/p2.icn`, is refused by Icon's translator as written (line 14,
`procedura`) and is kept unchanged.

THE INPUTS ARE OURS: no input ships with the programs that read standard input except `lab2/data`. `lab2/p1.in` is a copy of `lab2/data`;
`lab1/p2.in`, `lab4/p1.in`, `lab4/p3.in`, `other/cat.in`, `other/dictionary.in` and `other/digit.in` were written by the grader on
2026-11-15 to exercise each program as its code reads (formulas for the lab 4 parsers, words and digits for the others). Each answer is the
oracle's answer to that input.

THE ANSWERS were cut from the oracle, the fleet's `icont` and `iconx` 9.5.25a, each program built inside its own folder of a fresh copy of the
package and run twice a second apart with stderr merged into stdout (`CONTRACT.tsv` stderr merged, so a run-time error is an answer), by
`/home/resources/progress/handoffs/grader-2026-11-15/iconlab_cut.py`. 12 entries. Out of the count (`EXCLUDED.tsv`): `lab1/p1` and `lab1/p3`
read the clock and answer differently every run, `lab3/p1` and `other/prog2` never end, `lab2/q` waits on the keyboard, and `lab4/p2` is
refused by the translator. `lab2/crt.icn` and `other/nwd.icn` are library files with no main.

The first SCRIP reading (mode 3, SCRIP 38179ce886, on the landing's worktree): 12 of 12.
