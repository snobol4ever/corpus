# snobol4/jvm

The SNOBOL4 programs of snobol4jvm's own test suite (`lein test` in the snobol4jvm repository), moved here so the cycle grades them on every engine, SCRIP, snobol4jvm and snobol4dotnet, against the oracle (Lon 2026-11-19, in the JVM window: "Convert all SNOBOL4 tests to use $/harness repo and $/corpus repo instead. Then remove the duplicates in $/snobol4jvm." / "so we move out all the SNOBOL4 source into proper one-liners, multi-liners." / "And all goes into $/corpus repo.").

## How it was cut

- Every program a deftest ran was recorded as it ran (the deftest, the text, its stdin, the files it read and wrote, the variables the test read back with `$$` after it), by a namespace injected into `lein test` at snobol4jvm ee8560f.
- One entry per distinct program and stdin, named `<test namespace>__<deftest>` (a second program of one deftest takes `__2`, and so on); `origin` names the first deftest that ran it.
- Each answer is `sbl -bf -d131072k -s4096k` through `util_oracle.sh`, twice, the second run uncached, under the file name the entry is staged under (`stage_name`). A program whose test read variables back, or that prints nothing, is graded by its end state too: the `dump` cell, cut with `-D1`.
- A file the program read is a file fence of its entry, its absolute path made the bare name; a file it wrote is named in `out_files`.
- The answer is the oracle's, never the test's expectation: where a deftest expected something else, the entry says what SPITBOL does.

## Counts

- entries: 1930 (0 one-liners, 1930 multi-liners), 1239 graded by their dump
- excluded: 3 (EXCLUDED.tsv)
- already in the corpus, so no entry: 128 (DUPLICATES.tsv)

## Families

- `core_test`: 506
- `t_aisnobol`: 12
- `t_algorithms`: 11
- `t_arith`: 194
- `t_array`: 7
- `t_assign`: 53
- `t_code`: 6
- `t_compare`: 76
- `t_convert`: 28
- `t_define`: 16
- `t_gimpel`: 24
- `t_goto`: 10
- `t_include`: 2
- `t_io`: 14
- `t_loops`: 11
- `t_missing`: 44
- `t_opsyn`: 12
- `t_patterns_adv`: 11
- `t_patterns_cap`: 10
- `t_patterns_ext`: 27
- `t_patterns_prim`: 82
- `t_spitbol`: 42
- `t_string`: 24
- `t_terminal`: 2
- `t_worm_algorithms`: 12
- `t_worm_expr_parser`: 19
- `t_worm_patterns`: 23
- `t_worm_t3t5`: 47
- `test_bootstrap`: 105
- `test_cooper`: 82
- `test_csnobol4_suite`: 21
- `test_diag`: 4
- `test_probe18c`: 2
- `test_runtime`: 5
- `test_spitbol_rules_1118`: 69
- `test_spitbol_rules_1119`: 9
- `test_sprint11`: 11
- `test_sprint11_array`: 13
- `test_sprint12`: 44
- `test_sprint13`: 14
- `test_syntax`: 6
- `test_trace`: 11
- `test_worm1000`: 30
- `test_worm_micro`: 179
