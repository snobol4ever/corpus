my $a = wall_us(); my $b = wall_us(); my $m = wall_ms();
say (($a > 0) && ($b >= $a) && ($m > 0) && ($a > $m)) ?? "rk_arity0_ok" !! "rk_arity0_bad";
