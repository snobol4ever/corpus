my @array = 17, 23, 42;
for @array.pairs -> $pair { $pair.value += 100 }
say @array;
my %h = a => 1, b => 2;
for %h.pairs -> $p { $p.value = 7 }
say %h.sort;
