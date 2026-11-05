sub f(:$a, :$b = 0, *%rest) { "a=$a b=$b rest={%rest.keys.sort}" }
say f(a => 1);
say f(:a(2), :b(3), :c(4));
my %args = a => 9, b => 8;
say f(|%args);
say (1..2).map({ f(a => $_) });
