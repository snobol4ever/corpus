my @r = gather { my $i = 1; while ($i < 4) { take $i; $i = $i + 1; } };
