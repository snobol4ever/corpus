class Foo { }
class Bar { has $.x = 1; has $.y = "a"; has $!p = 2; method m { 2 } }
my $f = Foo.new; my $b = Bar.new;
say $f.defined; say $b.Bool; say $b.so; say $b.not; say $f.gist; say $b.gist; say $b.raku; say $b.perl;
say $b.item.x; say $b.elems; say $b.head.y; say $b.list.elems; say $b.Seq.elems; say $b.self.m;
say $f; say $b; say [$b]; say [$b, $f]; say "k: {$b.gist}";
say ?$f; say !$f; say $f ~~ Foo; say $b.isa(Bar); say $b.WHAT.gist;
say Int ?? "T" !! "F"; say so Int; say ?Str; say !Int; say (Any ?? 1 !! 0);
say True.Int; say False.Int; say True.Num; say True.Numeric; say (1 == 1).Int + 1;
say 8364.chr; say "é".ord; say "€".ord; say "😀".ord; say chr(8364); say ord("€"); say 5.ord; say 12.ord; say chr(233).chars;
say chrs(72,105); say (8364,65).chrs; say chrs((72,105));
my @a = 1,2; @a.push(); @a.unshift(); @a.append(); @a.prepend(); unshift(@a); push(@a); say @a; say @a.unshift().elems;
say 5.Numeric; say 2.5.Real;
