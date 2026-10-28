multi f(Int $x) { "int" }
multi f(Str $x) { "str" }
multi f(Int $x where * > 100) { "big" }
say f(1); say f("a"); say f(500);
multi g($a, :$n = 2) { $a * $n }
say g(3); say g(3, :n(4));
proto h(|) { "<" ~ {*} ~ ">" }
multi h(Int) { "i" }
say h(1);
sub untyped($x) { $x.uc }
say untyped("ab");
sub untyped2($x) { $x.elems }
say untyped2([1, 2, 3]);
my $o = 3; say $o.^name; say 3.can("abs") ?? "can" !! "cannot";
sub c(Int() $n) { $n + 1 }
say c("41");
try { f(1.5); CATCH { default { say .^name } } }
