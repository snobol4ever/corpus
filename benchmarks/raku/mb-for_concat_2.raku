# *BENCH kernel=mb-for_concat_2 -- raku-bench microbenchmark 'for_concat_2' (japhb/raku-bench, Artistic 2.0), SCALE baked to 1024; imported 2026-09-26 (ceo CEO-1283)
my $x = "a"; my $y = ""; for (1 .. 1024) { $y ~= ($x ~ $x) }; say $y.chars;
