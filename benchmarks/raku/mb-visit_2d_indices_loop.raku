# *BENCH kernel=mb-visit_2d_indices_loop -- raku-bench microbenchmark 'visit_2d_indices_loop' (japhb/raku-bench, Artistic 2.0), SCALE baked to 8; imported 2026-09-26 (ceo CEO-1283)
my $k = 0; loop (my $i = 1; $i <= 8; ++$i) { loop (my $j = 1; $j <= 8; ++$j) { $k = $i + $j } }; say $k;
