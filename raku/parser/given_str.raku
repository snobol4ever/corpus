my $x = "hello";
given $x {
    when "hello" { say "yes"; }
    default { say "no"; }
}
