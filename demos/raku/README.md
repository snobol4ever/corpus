# Raku demos (RakDemo)

Whole Raku programs run on a sample input, each graded against the oracle (rakudo, through `rakudo_bin` in
`SCRIP/scripts/lib_oracle_flags.sh`) in both SCRIP modes. A demo is a directory `<name>/` holding the program `<name>.raku`,
its standard input `<name>.in`, the oracle's output on that input `<name>.ref`, its declared heap and stack (`<name>.heap`,
`<name>.stack`, kilobytes, name<TAB>kb) and, where the demo is also a benchmark, its workhorse input `<name>.workhorse`.
A DEMO IS A TEST AND A BENCHMARK (CEO-1221): the sample input is the test, the workhorse input the benchmark.

The suite row `raku-demos` (RakDemo) was opened by the ceo on Lon's word, 2026-10-10 (CEO-1616, verbatim: *"Ensure the
RakDemo item is added to the test-suite banner, it will be the Raku compiler written in Raku."*). Its one entry today is
owed, not landed:

| Demo | What it is | Source | Row |
|---|---|---|---|
| `rakudo-grammar` | the Raku compiler written in Raku: Rakudo's own front end, `src/Perl6/Grammar.nqp` (5,933 lines of NQP, a restricted Raku subset) with the slices of `Actions.nqp` it needs, parsing a sample Raku program under SCRIP and printing the parse tree equal to `raku --target=parse` on the same program | `/home/resources/rakudo-main` (Rakudo, Artistic License 2.0) | `raku-demo-rakudos-own-front-end-grammar-nqp-parses-raku-source-under-scrip-equal-to-raku-target-parse-the-raku-pl2wam-lon-2026-10-10-ceo-1607` (the cfo, after the regex-and-grammars rewrite it witnesses; ARCH-RAKU-BOXES.md step 3) |

THE REF IS THE ORACLE'S OUTPUT: `raku --target=parse <sample>` (the oracle's own parse dump), never a hand-written tree.
