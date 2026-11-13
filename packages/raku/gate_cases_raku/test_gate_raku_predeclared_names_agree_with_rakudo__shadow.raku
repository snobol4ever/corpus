sub now { 42 }
sub time { 7 }
sub rand { 9 }
say now; say time; say rand;
sub foo($x = 1) { $x * 2 }
say foo; say foo(4);
my $y = foo; say $y + 1;
sub later-one { 11 }
say later-one;
my $*DYN = 3; say $*DYN;
