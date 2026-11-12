my $k = 10;
sub h($x) { $x + $k }
my &e = &h;
say e(5);
