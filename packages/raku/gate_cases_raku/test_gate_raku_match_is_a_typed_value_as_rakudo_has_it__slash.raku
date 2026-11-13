"hello world" ~~ /(w\w+)/;
say $/; say $0; say $/[0].Str; say "got $0 in $/"; say ~$/; say $/ eq "world"; say $/.chars; say $/.uc; say $/.from;
if "foo bar" ~~ /(\w+) \s (\w+)/ { say "$0|$1"; say $/.Str; say $/[1].to }
"2024-10" ~~ /$<y>=(\d+)'-'$<m>=(\d+)/; say "$<y>/$<m>"; say $/<y>;
my $r = "ab" ~~ /(a)(b)/; say $r eq "ab"; say "[$r]";
