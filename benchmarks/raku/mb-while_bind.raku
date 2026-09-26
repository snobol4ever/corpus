# *BENCH kernel=mb-while_bind -- raku-bench microbenchmark 'while_bind' (japhb/raku-bench, Artistic 2.0), SCALE baked to 1024; imported 2026-09-26 (ceo CEO-1283)
my $a := 0; my $b := 1; my $i = 0; while (++$i <= 1024) { $a := $b }; say $a;
