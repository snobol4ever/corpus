# *BENCH kernel=rakudo-tools-03-10-000-multi-dispatches -- Rakudo's own tools/benchmark.pl snippet "03 - 10,000 multi dispatches" (Artistic 2.0); it prints nothing by design, the trailing say is the import's own line; imported 2026-09-26 (ceo CEO-1283)
multi foo(Int $x, Str $y) { }
multi foo(Str $x, Int $y) { }
for 1..5000 {
    foo(1, "hi");
    foo("hi", 1);
}
say 'ok';
