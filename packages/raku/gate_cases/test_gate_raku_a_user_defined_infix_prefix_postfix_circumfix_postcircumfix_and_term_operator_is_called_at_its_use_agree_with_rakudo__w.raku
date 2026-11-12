sub infix:<plus>($a, $b) { $a + $b }
sub infix:<⊕>($a, $b) { "($a⊕$b)" }
sub infix:<pw>($a, $b) { $a ** $b }
multi sub infix:<cat2>(Int $a, Int $b) { "int:$a$b" }
multi sub infix:<cat2>(Str $a, Str $b) { "str:$a$b" }
sub prefix:<±>($n) { $n.abs }
sub prefix:<√>($x) { sqrt $x }
sub postfix:<!>($n) { [*] 1..$n }
sub postfix:<²>($n) { $n * $n }
sub postfix:<k>($n) { $n * 1000 }
sub circumfix:<⌊ ⌋>($x) { $x.floor }
sub circumfix:<⟦ ⟧>(*@a) { "[" ~ @a.join('|') ~ "]" }
say 1 plus 2;
say 2 plus 3 * 4;
say 2 * 3 plus 4;
say 10 plus 2 plus 3;
say 1 + 2 plus 3;
say 1 plus 2 + 3;
say 2 pw 3 pw 2;
say 1 ⊕ 2 ⊕ 3;
say 3 cat2 4;
say "a" cat2 "b";
my $x = 7;
my $y = $x plus 1;
say $y;
say ±(-3);
say ± -4;
say √16;
say √16 plus 1;
say 5!;
say 3² plus 1;
say 4k;
say 2k + 1;
my $n = 3;
say $n!;
say $n²;
say $n² * 2;
say ⌊ 3.7 ⌋;
say ⌊ 3.7 ⌋ plus 1;
say ⟦1, 2, 3⟧;
say ⟦5⟧;
say infix:<plus>(4, 5);
say prefix:<±>(-9);
say postfix:<!>(4);
my @l = 1, 2, 3;
say @l.map({ $_ plus 10 });
say (1 plus 2, 3 plus 4);
say "r: {1 plus 2}";
my &f = &infix:<plus>;
say f(1, 2);
say &infix:<plus>(5, 6);
say [plus] 1, 2, 3, 4;
sub term:<answer> { 42 }
say answer + 1;
say answer plus answer;
sub postcircumfix:<⟨ ⟩>($c, $x) { "pc($c,$x)" }
say $n⟨7⟩;
my %h = a => 1;
say %h<a> plus 2;
say 1 plus 2 == 3 ?? "y" !! "n";
say (answer, 1).elems;
