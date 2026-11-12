class P { has $.v; method n { $!v * 2 }; method add($k) { $!v + $k } }
my @ps = P.new(v => 1), P.new(v => 2), P.new(v => 3);
say @ps>>.n;
say (@ps>>.add(10));
sub tw { my $off = 100; say @ps>>.add($off) }
tw();
say <a b c>>>.uc;
my @w = <x y>; say @w>>.uc; say (@w>>.uc).WHAT;
say (1,2,3,4,5).unique(:as({ $_ % 3 }));
say (1,1,2,2,1).squish(:as({ $_ }));
say <a A b B a>.repeated(:as({ .lc }));
say (1,2,3,4).produce({ $^a + $^b });
say ().produce({ $^a + $^b });
sub pr { my $m = 10; say (1,2,3).produce({ $^a * $m + $^b }) }
pr();
my $c = { $_ * 2 }; say (1,2,3).map($c);
my $sq = -> $x { $x * $x }; say (1..4).map($sq);
