# corpus/notebooks

Jupyter notebooks whose code cells are real SNOBOL4, run by SCRIP as the notebook's kernel (`scrip --kernel`).

There is one kernel: its name is `scrip`, shown as SCRIP, and it handles every language. Each notebook here names it. A cell with no tag is SNOBOL4;
a cell whose first line is two percent signs and a language (`%%icon`, `%%prolog`) runs in that language. `SCRIP/scrip --kernel-install` installs it.

Each notebook here is the SNOBOL4 edition of the notebook of the same name in
`github.com/snobol4ever/snobol4python/notebooks`: the markdown is the original's, every code cell is
re-written in SNOBOL4. The Python originals live in that repository only and are not copied here.

A notebook session is one program: its code cells joined in order, with `END` appended, are a SNOBOL4
program, and the outputs saved in the notebook are what the oracle (SPITBOL, `sbl -bf`) prints for it.

| Notebook | Original | Code cells |
|---|---|---|
| `DEFINE_statement.ipynb` | `DEFINE_statement.ipynb` | 11 |
| `Project_XLR8R.ipynb` | `Project_XLR8R.ipynb` | 18 |
| `WHO_went_to_WHERE_looking_for_WHAT.ipynb` | `WHO_went_to_WHERE_looking_for_WHAT.ipynb` | 23 |
| `SNOBOL4_Green_Book.ipynb` | `SNOBOL4_Green_Book_in_Python.ipynb` | 25 |
| `A_SNOBOL4_Tutorial.ipynb` | `A_SNOBOL4_Tutorial_in_Python.ipynb` | 36 |

Notes for a reader:

- Where the original ran Python inside a pattern (its lambda actions), the SNOBOL4 edition calls a
  function from the pattern as `'' . *action()`: the call runs only when the whole match succeeds.
- `Project_XLR8R` draws its random expressions from a seeded generator, so every run prints the same lines.
- `WHO_went_to_WHERE_looking_for_WHAT` reads two data files of this corpus by relative path
  (`../benchmarks/snobol4/demo/claws5.dat` and `treebank.dat`), so its session runs in this folder.
  It reads the treebank a tree at a time: one match over the whole 100 KB text overflows the stack
  of the oracle itself.
