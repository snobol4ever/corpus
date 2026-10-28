say (1 ... *)[5000];
say (gather { my $i = 0; loop { take $i++ } }).head(3);
my $s = (1..Inf).map(* * 2).grep(* %% 3); say $s[2];
sub gen { gather for 1..3 { take $_ * 10 } }
my $g = gen(); say $g.list;
my $it = (10, 20, 30).iterator; say $it.pull-one; say $it.pull-one;
say (1, 1, * + * ... *)[10];
say (1..Inf).is-lazy;
