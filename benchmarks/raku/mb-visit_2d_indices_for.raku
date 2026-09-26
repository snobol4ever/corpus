# *BENCH kernel=mb-visit_2d_indices_for -- raku-bench microbenchmark 'visit_2d_indices_for' (japhb/raku-bench, Artistic 2.0), SCALE baked to 8; imported 2026-09-26 (ceo CEO-1283)
my $k = 0; for 1 .. 8 -> $i { for 1 .. 8 -> $j { $k = $i + $j }; Nil }; say $k;
