my $s = "hello";
if ($s ~~ /(?<word>\w+)/) { say($<word>); }
