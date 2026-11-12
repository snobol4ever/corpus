sub dbl($x) { $x * 2 }
my &c = &dbl;
say c(21);
my $k = 10;
my &e = -> $x { $x + $k };
say e(5);
my $f = { $_ * 3 };
say $f(7);
say (-> $a, $b { $a ~ $b })("p", "q");
my &fact = sub ($n) { $n <= 1 ?? 1 !! $n * fact($n - 1) };
say fact(10);
