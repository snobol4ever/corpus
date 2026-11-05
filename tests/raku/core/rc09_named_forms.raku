class P { has $.x; method scaled(:$by = 1) { $!x * $by } }
my @ps = (1..3).map({ P.new(x => $_) });
say @ps.map({ .scaled(by => 10) });
say @ps.sort({ $^b.scaled(:by(2)) <=> $^a.scaled(:by(2)) }).map(*.x);
