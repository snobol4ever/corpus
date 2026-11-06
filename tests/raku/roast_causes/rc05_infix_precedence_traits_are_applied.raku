{ sub infix:<mean>($a, $b) { ($a + $b) / 2 }; say 10 mean 4 * 5; }
{ sub infix:<mean>($a, $b) is tighter(&infix:<*>) { ($a + $b) / 2 }; say 10 mean 4 * 5; }
{ sub infix:<mul2>($a, $b) is equiv(&infix:<*>) { $a * $b }; say 2 + 3 mul2 4; }
{ sub infix:<lo>($a, $b) is looser(&infix:<+>) { $a * $b }; say 1 + 2 lo 3; }
