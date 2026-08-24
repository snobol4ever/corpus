my $s = "abc123";
if ($s ~~ /\d+/) { say("digit"); }
if ($s ~~ /[a-z]+/) { say("lower"); }
if ($s ~~ /a|b/) { say("alt"); }
