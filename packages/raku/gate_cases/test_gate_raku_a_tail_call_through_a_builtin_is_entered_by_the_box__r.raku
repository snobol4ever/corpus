my &c = sub ($x) { die "boom $x" if $x > 1; $x };
say c(1);
try { say c(5); CATCH { default { say "caught: " ~ .message } } }
class P { has $.x; method new($x) { die "neg" if $x < 0; self.bless(x => $x) } }
say P.new(3).x;
try { P.new(-1); CATCH { default { say "caught: " ~ .message } } }
multi sub h(Int $x) { die "int $x" if $x == 0; "int $x" }
multi sub h(Str $x) { "str $x" }
try { h(0); CATCH { default { say "caught: " ~ .message } } }
sub nm(:$n) { die "named $n" if $n > 5; $n * 2 }
try { nm(n => 9); CATCH { default { say "caught: " ~ .message } } }
say "end";
