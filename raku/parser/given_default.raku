my $x = 5;
given $x {
    when 1 { say "one"; }
    when 2 { say "two"; }
    default { say "other"; }
}
