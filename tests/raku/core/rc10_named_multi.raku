class Pt { has $.x; has $.y; method Str { "($!x,$!y)" } }
say Pt.new(x => 1, y => 2).Str;
say (1..2).map({ Pt.new(:x($_), :y($_ * 2)).Str }).join(" ");
multi sub area(:$r!) { 3 * $r * $r }
multi sub area(:$w!, :$h!) { $w * $h }
say area(r => 2), " ", area(w => 2, h => 3);
sub opt($p, :$q = "d") { "$p/$q" }
say (1..2).map({ opt($_, q => "x$_") }).join(" ");
