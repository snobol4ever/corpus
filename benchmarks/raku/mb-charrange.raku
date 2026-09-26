# *BENCH kernel=mb-charrange -- raku-bench microbenchmark 'charrange' (japhb/raku-bench, Artistic 2.0), SCALE baked to 128; imported 2026-09-26 (ceo CEO-1283) -- the trailing say is the import's own line: the snippet printed nothing
my $y = chr(128); my $n = chr(128 + 1); my $i = 0; while (++$i <= 128) {$y ~~ /<[\c0..\c[128]]>/; $n ~~ /<[\c0..\c[128]]>/ }
say 'ok';
