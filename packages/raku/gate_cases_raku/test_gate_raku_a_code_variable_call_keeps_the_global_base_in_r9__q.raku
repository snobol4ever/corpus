my $k = 10;
my &e = -> $x { $x + $k };
say e(5);
my $n = 0;
my &inc = -> { $n++ };
inc() for 1..5;
say $n;
