# *BENCH kernel=rakudo-tools-01-hello-world -- Rakudo's own tools/benchmark.pl snippet "01 - hello world" (Artistic 2.0); it prints nothing by design, the trailing say is the import's own line; imported 2026-09-26 (ceo CEO-1283)
"Hello, world!"; # don't say, don't want output from benchmarks
say 'ok';
