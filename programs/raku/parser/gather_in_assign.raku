my $n = 10;
my @r = gather { take $n; };
say @r;
