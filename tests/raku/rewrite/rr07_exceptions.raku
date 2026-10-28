sub f { die "boom" }
try { f(); CATCH { default { say "caught ", .message } } }
my $r = do { try { die X::AdHoc.new(payload => "p") }; $! ~~ X::AdHoc ?? "adhoc" !! "other" }; say $r;
sub g { fail "soft" }
my $v = g(); say $v.defined; say $v.exception.message;
{ LEAVE say "leave"; KEEP say "keep"; UNDO say "undo"; say "body" }
sub h { for 1..3 { return $_ if $_ == 2 }; 0 }; say h();
ROW: for 1..3 -> $i { for 1..3 -> $j { last ROW if $j == 2; say "$i $j" } }
{ CONTROL { when CX::Warn { say "warned: ", .message; .resume } }; warn "w1"; say "after" }
