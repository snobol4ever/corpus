# *BENCH kernel=mb-visit_2d_indices_cross -- raku-bench microbenchmark 'visit_2d_indices_cross' (japhb/raku-bench, Artistic 2.0), SCALE baked to 128; imported 2026-09-26 (ceo CEO-1283)
my $k = 0; for flat(1 .. 128 X 1 .. 128) -> $i, $j { $k = $i + $j }; say $k;
