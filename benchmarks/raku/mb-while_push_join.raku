# *BENCH kernel=mb-while_push_join -- raku-bench microbenchmark 'while_push_join' (japhb/raku-bench, Artistic 2.0), SCALE baked to 128; imported 2026-09-26 (ceo CEO-1283)
my @a; my $i = 0; while (++$i <= 128) { @a.push("x") }; my $s = @a.join; say $s.chars;
