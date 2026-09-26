# *BENCH kernel=mb-while_concat -- raku-bench microbenchmark 'while_concat' (japhb/raku-bench, Artistic 2.0), SCALE baked to 1024; imported 2026-09-26 (ceo CEO-1283)
my $s = ""; my $i = 0; while (++$i <= 1024) { $s ~= "x" }; say $s.chars;
