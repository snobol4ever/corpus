# *BENCH kernel=mb-for_concat_2_native -- raku-bench microbenchmark 'for_concat_2_native' (japhb/raku-bench, Artistic 2.0), SCALE baked to 1024; imported 2026-09-26 (ceo CEO-1283)
my str $x = "a"; my str $y = ""; for (1 .. 1024) { $y = $y ~ $x ~ $x }; say $y.chars;
