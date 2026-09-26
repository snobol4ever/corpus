# *BENCH kernel=mb-while_empty -- raku-bench microbenchmark 'while_empty' (japhb/raku-bench, Artistic 2.0), SCALE baked to 1024; imported 2026-09-26 (ceo CEO-1283)
my $i = 0; while (++$i <= 1024) { }; say $i;
