# KEEP.md — tests/snobol4/parser

Five witnesses of the `-INCLUDE` / `-COPY` pre-pass of `bootstrap/parser_snobol4.sc` (the preprocessing loop at the label `SnoPP`, step C1 of `.github/ARCH-PARSER-SC-BOOTSTRAP.md` section 7), one program each, with the include files they read (`inc_*.inc`, `inc_sub/`).
They have no `.ref` and no `ALL.csv` row: they are never run, only parsed. Their grader is the tree gate, `test_gate_snocone_parsers_match_the_c_parsers_tree_for_tree.sh`
(and `util_parser_grid.sh`), which enumerate every `.sno` under `corpus/` except `ALL.*` and `library/` and require the C parser (`out/parser_snobol4`, fed the text
`util_sno_include_twin.py` makes of the include lines, as `snobol4.l` reads them) and `bootstrap/parser_snobol4.sc` (which reads the RAW file and expands the includes itself) to print the same tree hash for each file.
The gate changes directory to the program's own folder, so a name is found as written (`inc_a.inc`) and then, for a nested include, in the folder of the file already included.

- `include_nested_and_included_dir_search.sno` — `inc_nest.inc` includes `inc_sub/c.inc`; `inc_sub/d.inc` includes `d2.inc`, which exists only beside `d.inc` (the directory of a file already included).
- `include_once_and_copy.sno` — `-INCLUDE` of the same name twice is one copy; `-COPY` twice is two.
- `include_on_the_first_line.sno` — the directive is the first line of the program, so the text before it is empty. The first cut of the loop spliced with `SUBSTR(Src, 1, 0)`, which is the WHOLE string in SPITBOL and in SCRIP alike (a length of 0 means "to the end"), and ran out of heap on this file.
- `include_file_without_final_newline.sno` — `inc_nonl.inc` ends without a newline; the next directive must still be read as a line of its own. SPITBOL and the C front end (`scrip --dump-ast`) end a line at the end of a file, so the statements stay separate;
  `util_sno_include_twin.py` and the `.sc` loop both append the newline (before the twin changed, both glued the file's last line to the next, which the C front end does not).
- `include_empty_file.sno` — an empty include file replaces its line with nothing, once with `-INCLUDE` and once with `-COPY`.
