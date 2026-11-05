my @subs = { $_ * 2 }, -> $x { $x + 1 }, sub ($y) { $y - 1 };
say @subs[0](10), " ", @subs[1](10), " ", @subs[2](10);
my $f = { $^a ~ $^b };
say $f("x", "y");
say { $_ + 100 }(5);
my &g = &say;
my $h = -> { 7 };
say $h.();
say (sub { 42 })();
