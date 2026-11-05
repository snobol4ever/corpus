sub make($n) { -> $x { $x + $n } }
say make(5)(10);
my @fs = (1..3).map(-> $n { -> $x { $x * $n } });
say @fs.map({ $_(10) });
