class Word { has Str $.text; has Int $.n is rw = 0 }
grammar Words {
    token TOP { [<w> \s*]+ }
    token w { \w+ }
}
my %seen;
for Words.parse("the cat and the dog and the bird")<w> -> $m {
    my $t = ~$m; %seen{$t} //= Word.new(text => $t); %seen{$t}.n++;
}
my @top = %seen.values.sort({ $^b.n <=> $^a.n || $^a.text cmp $^b.text }).head(2);
say @top.map({ "{.text}={.n}" }).join(",");
my $s = gather for %seen.keys.sort { take .uc if .chars == 3 };
say $s.join(" ");
sub safe-div($a, $b) { $b == 0 ?? fail("div0") !! $a / $b }
say (safe-div(1, 0) // "nan"), " ", safe-div(6, 3);
