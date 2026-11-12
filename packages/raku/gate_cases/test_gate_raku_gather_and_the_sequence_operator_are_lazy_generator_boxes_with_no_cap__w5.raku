sub lazy-evens { gather { my $i = 0; loop { take $i; $i += 2 } } }
my $e = lazy-evens();
say "before";
say $e[3];
say "after";
