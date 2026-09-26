# *BENCH kernel=mb-while_array_set -- raku-bench microbenchmark 'while_array_set' (japhb/raku-bench, Artistic 2.0), SCALE baked to 128; imported 2026-09-26 (ceo CEO-1283)
my @a; my $i = 0; @a[$i] = $i; while (++$i <= 128) { @a[ $i ] = $i }; say @a[*-1];
