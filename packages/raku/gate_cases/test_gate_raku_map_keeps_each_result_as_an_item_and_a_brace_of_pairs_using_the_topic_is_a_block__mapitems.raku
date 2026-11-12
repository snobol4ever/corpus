say (1, 2).map({ ($_, $_ * 2) });
say (1, 2).map({ |($_, $_ * 2) });
say (1, 2).map({ [$_, $_ * 2] });
say (1, 2).map({ ("k$_" => $_) });
my @a = (1, 2).map({ "k$_" => $_ });
say @a.elems;
say @a[0].key;
sub f($x) { return ($x, $x * 2) }
my @r = (1, 2).map(&f);
say @r.elems;
say (1, 2, 3).map({ $_ * 2 }).elems;
say (1, 2).map({ ($_, $_) }).flat;
say (1, 2, 3).grep({ $_ > 1 }).map({ ($_,) }).elems;
