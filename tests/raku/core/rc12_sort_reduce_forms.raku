my @w = <pear apple fig>;
say @w.sort({ $^a.chars <=> $^b.chars || $^a cmp $^b });
say @w.sort(*.chars);
say @w.sort(-> $a, $b { $b cmp $a });
say @w.map({ .comb.sort({ $^b cmp $^a }).join });
say (1..5).reduce({ $^a * $^b }), " ", (1..5).reduce(-> $a, $b { $a - $b });
say ((1, 2), (3, 4)).map({ .reduce({ $^a + $^b }) });
