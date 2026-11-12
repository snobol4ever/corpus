my $n = 0;
for 1..200000 { $n = $n + "abcdef".chars; }
say $n;
