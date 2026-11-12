# ex09 -- die, try, CATCH with when and default, rethrow to an outer try, a runtime exception from division, and an uncaught die at the end (DESIGN-PLAN exceptions, the cto 2026-10-29)
sub risky($n) {
    my @a = 1..$n;
    die "boom $n" if $n % 3 == 0;
    @a.elems
}
my $ok = 0; my $caught = 0; my @msgs;
for 1..9 -> $i {
    try { $ok += risky($i); CATCH { default { $caught++; @msgs.push(.message) } } }
}
say "$ok $caught";
say @msgs.join("|");
my $r = try { 10 div 0 };
say $r.defined ?? "defined" !! "undefined";
say $!.^name;
try {
    try { die "inner"; CATCH { when X::AdHoc { say "inner caught: " ~ .message; .rethrow } } }
    CATCH { default { say "outer caught: " ~ .message } }
}
say "before the end";
die "uncaught at the end";
say "never";
