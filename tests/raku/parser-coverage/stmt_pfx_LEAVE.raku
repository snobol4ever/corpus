my $x = 1;
LEAVE { say("leave"); }
say($x);
