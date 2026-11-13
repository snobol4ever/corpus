say (gather { my $i = 0; loop { take $i++ } }).head(3);
my @g = gather { for 1..5 { take $_ * 2 } }; say @g;
