# *BENCH kernel=mb-while_int2str -- raku-bench microbenchmark 'while_int2str' (japhb/raku-bench, Artistic 2.0), SCALE baked to 1024; imported 2026-09-26 (ceo CEO-1283)
my $i = 0; my $s = ~$i; while (++$i <= 1024) { $s = ~$i }; say $s;
