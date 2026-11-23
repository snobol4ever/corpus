# corpus/notebooks

Jupyter notebooks whose code cells are real SNOBOL4, run by SCRIP as the notebook's kernel (`scrip --kernel`).

There is one kernel: its name is `scrip`, shown as SCRIP, and it handles every language. Each notebook here names it. A cell with no tag is SNOBOL4;
a cell whose first line is two percent signs and a language (`%%icon`, `%%prolog`) runs in that language. `SCRIP/scrip --kernel-install` installs it.

Each notebook here is the SNOBOL4 edition of the notebook of the same name in
`github.com/snobol4ever/snobol4python/notebooks`: the markdown is the original's, every code cell is
re-written in SNOBOL4. The Python originals live in that repository only and are not copied here.

A notebook session is one program: its code cells joined in order, with `END` appended, are a SNOBOL4
program, and the answer beside it, `NAME.out`, is what the oracle (SPITBOL, `sbl -bf`) prints for it.

A notebook here is checked in with every code cell's output empty and no execution count, so a reader clicks Run and sees the results anew. The answer of `NAME.ipynb` is `NAME.out` beside it:
the notebook's whole output as text, in cell order, each stream's text and each picture's text one after the other. The notebook run fresh must write exactly that text.

| Notebook | Original | Code cells |
|---|---|---|
| `DEFINE_statement.ipynb` | `DEFINE_statement.ipynb` | 11 |
| `Project_XLR8R.ipynb` | `Project_XLR8R.ipynb` | 18 |
| `WHO_went_to_WHERE_looking_for_WHAT.ipynb` | `WHO_went_to_WHERE_looking_for_WHAT.ipynb` | 23 |
| `SNOBOL4_Green_Book.ipynb` | `SNOBOL4_Green_Book_in_Python.ipynb` | 25 |
| `A_SNOBOL4_Tutorial.ipynb` | `A_SNOBOL4_Tutorial_in_Python.ipynb` | 36 |
| `Snocone_in_SCRIP.ipynb` | master entries | 11 |
| `Rebus_in_SCRIP.ipynb` | master entries | 12 |
| `Icon_in_SCRIP.ipynb` | a short demo, the Towers of Hanoi | 3 |
| `Unicon_in_SCRIP.ipynb` | package entries | 12 |
| `Pascal_in_SCRIP.ipynb` | master entries | 12 |
| `Prolog_in_SCRIP.ipynb` | master entries | 13 |
| `Raku_in_SCRIP.ipynb` | master entries | 12 |

In `Snocone_in_SCRIP.ipynb` each `%%snocone` cell is one whole Snocone program, an entry of the Snocone master, and its answer in `NAME.out` is that entry's ref.
In `Rebus_in_SCRIP.ipynb` each `%%rebus` cell is one whole Rebus program, an entry of the Rebus master, and its answer in `NAME.out` is that entry's ref.
`Icon_in_SCRIP.ipynb` is a short demo for a first visit to the public binder (MYBINDER FIRST, Lon 2026-11-23 16:2x CST): the Towers of Hanoi, one Icon program in three cells under the SCRIP Icon kernel entry, so a cell needs no `%%icon` line; its answer in `NAME.out` is its own run. The master's entries it once held are graded in the Icon master.
In `Unicon_in_SCRIP.ipynb` each `%%unicon` cell is one whole Unicon program, an entry of the package `packages/icon/unicon_tests`, and its answer in `NAME.out` is that entry's answer as the Unicon translator gives it.
A cell is not a program (the cao, 2026-11-16): the cells of a notebook run as units of one live session, so an entry whose answer holds only in a fresh process is not a cell. Left out for that, one line each: `procedure_record_every_replace_14`, `procedure_record_every_replace_19` and `procedure_record_coexpr_replace_3` of the Icon master, and `coexpr/co` of the package, print structure serial numbers, which in a session count every structure the earlier cells made; `procedure_record_every_replace_18` of the Icon master ends its process with `exit(0)`. In their places: `procedure_record_coexpr_replace_6`, the one other core entry of the Icon master that can be a cell (so the Icon notebook has 9), and `general/tprintf`, the next entry of the package by rank that can be a cell.
In `Pascal_in_SCRIP.ipynb` each `%%pascal` cell is one whole Pascal program, an entry of the Pascal master, and its answer in `NAME.out` is that entry's ref.
In `Prolog_in_SCRIP.ipynb` each `%%prolog` cell is one whole Prolog program, an entry of the Prolog master, and its answer in `NAME.out` is that entry's ref.
A cell is not a program (the cao, 2026-11-16): the cells of a notebook run as units of one live session, and a predicate a later cell gives again replaces the earlier one (row jupyter-step-10n, SCRIP 213118218). Left out of the Prolog notebook, one line each: `writeq_format_directive_3` has a master ref that prints `write_canonical([a,b])` as `'.'(a,'.'(b,[]))` where swipl 9.0.4 and the session print `[a,b]`, so its answer would not be the oracle's; `undo__u01_undo_or_branch` and `streams__st04_socket_handle_shape_and_errors` end their process with `halt`, which a session survives only by restoring itself, so the cell prints its answer and then reports the end of the program. `clause_source_record__csr_listing_names` was left out while a session could not read it and is a cell again (row jupyter-a-unit-with-goal-expansion-gives-a-static-predicate-again-in-a-later-cell: the later cell's main/0 replaces the earlier one, SCRIP 559cf5e95, and a listing in a cell keeps its source variable names, read from the text of the cell). In the places of the other three, the next four entries of the Prolog master by rank that can be a cell: `abolish_abolish_removes_clauses_1`, `assertz_clause_call_1`, `assertz_retract_directive_2` and `retract_backtrack_1`.
In `Raku_in_SCRIP.ipynb` each `%%raku` cell is one whole Raku program, an entry of the Raku master, and its answer in `NAME.out` is that entry's ref.

Notes for a reader:

- Where the original ran Python inside a pattern (its lambda actions), the SNOBOL4 edition calls a
  function from the pattern as `'' . *action()`: the call runs only when the whole match succeeds.
- `Project_XLR8R` draws its random expressions from a seeded generator, so every run prints the same lines.
- `WHO_went_to_WHERE_looking_for_WHAT` reads two data files of this corpus by relative path
  (`../benchmarks/snobol4/demo/claws5.dat` and `treebank.dat`), so its session runs in this folder.
  It reads the treebank a tree at a time: one match over the whole 100 KB text overflows the stack
  of the oracle itself.
