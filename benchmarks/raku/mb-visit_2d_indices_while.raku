# *BENCH kernel=mb-visit_2d_indices_while -- raku-bench microbenchmark 'visit_2d_indices_while' (japhb/raku-bench, Artistic 2.0), SCALE baked to 8; imported 2026-09-26 (ceo CEO-1283)
my $k = 0; my $i = 1; while ($i <= 8) { my $j = 1; while ($j <= 8) { $k = $i + $j; ++$j }; ++$i }; say $k
