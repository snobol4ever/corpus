my $x = 1;
UNDO { say("undo"); }
say($x);
