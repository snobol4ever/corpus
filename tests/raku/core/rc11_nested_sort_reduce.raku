my @a = 5, 3, 9;
say @a.map(-> $x { @a.sort({ $^b <=> $^a })[0] + $x });
say @a.map({ @a.sort(-> $p, $q { $p <=> $q }).head });
sub by-len(@xs) { @xs.sort({ $^a.chars <=> $^b.chars }) }
say <bb a ccc>.map({ by-len(<bb a ccc>).join }).join("|");
say (1..3).map({ (1..$_ + 1).reduce({ $^a + $^b }) });
say (1..3).map({ (1..$_ + 1).reduce(-> $p, $q { $p * $q }) });
