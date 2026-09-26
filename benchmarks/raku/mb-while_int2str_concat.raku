# *BENCH kernel=mb-while_int2str_concat -- raku-bench microbenchmark 'while_int2str_concat' (japhb/raku-bench, Artistic 2.0), SCALE baked to 1024; imported 2026-09-26 (ceo CEO-1283) -- the trailing say is the import's own line: the snippet printed nothing
my $s = ""; my $i = 0; while (++$i <= 1024) { $s ~= $i }
say 'ok';
