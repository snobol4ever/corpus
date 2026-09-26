# *BENCH kernel=mb-loop_empty -- raku-bench microbenchmark 'loop_empty' (japhb/raku-bench, Artistic 2.0), SCALE baked to 1024; imported 2026-09-26 (ceo CEO-1283)
loop (my $i = 1; $i <= 1024; ++$i) { }; say $i;
