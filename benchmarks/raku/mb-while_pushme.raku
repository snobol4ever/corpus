# *BENCH kernel=mb-while_pushme -- raku-bench microbenchmark 'while_pushme' (japhb/raku-bench, Artistic 2.0), SCALE baked to 1; imported 2026-09-26 (ceo CEO-1283)
my @a; @a.push(42); my $i = 0; while (++$i <= 1) { @a.append(@a) }; say +@a;
