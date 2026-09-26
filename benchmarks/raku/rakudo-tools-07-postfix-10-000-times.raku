# *BENCH kernel=rakudo-tools-07-postfix-10-000-times -- Rakudo's own tools/benchmark.pl snippet "07 - postfix:<++> 10,000 times" (Artistic 2.0); it prints nothing by design, the trailing say is the import's own line; imported 2026-09-26 (ceo CEO-1283)
my $i = 0;
while $i < 10000 { $i++ }
say 'ok';
