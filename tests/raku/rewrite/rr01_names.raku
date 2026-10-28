my \a = 5; constant C = 7; my $x = a + C; say $x;
my @arr = 1, 2, 3; say @arr.elems;
sub f(::T $v) { T.^name }
say f(42);
