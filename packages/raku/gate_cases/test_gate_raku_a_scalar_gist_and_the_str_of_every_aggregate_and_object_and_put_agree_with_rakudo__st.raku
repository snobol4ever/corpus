use Test;
class P { method Str { "p!" } }
class Q { has $.x = 3; }
say "abc".gist; say 5.gist; say -7.gist; say 1.5.gist; say True.gist; say False.gist; say 1e20.gist; say "".gist.chars;
my $s0 = "x y"; say $s0.gist; my $n = 42; say $n.gist; my $b0 = True; say $b0.gist;
say "a\nb".gist.lines.elems; say 3.14159.gist; say (2**70).gist; say "é".gist; say Nil.gist; say Int.gist;
say $*USER.gist eq $*USER; say "abc".gist.uc; say (5.gist ~ "!");
lives-ok { $*USER.gist; $*USER.WHAT.gist; }, 'the roast line';
my @a = 1,2,3; my %h = a=>1; my $p = (k => 'v'); my $st = set(<x y>); my $bg = bag(<a a b>);
say ~@a; say "x" ~ @a; say "i: {@a}"; say "i: @a[]";
say ~(1,(2,3)); say ~[1,[2,3]]; say ~();
say ~%h; say "h: {%h}"; say ~$p; say "p: {$p}";
say ~$st.sort; say ~$bg.sort;
say ~P.new; say "o: {P.new}"; say "n: " ~ P.new;
say ~Q.new.x; say ~(1,2).Seq; say ~<a b>; say ~(1,2,3).reverse;
say ~True; say ~5; say ~2.5; say ~"s"; say ~(1/4);
print @a; print "\n"; put @a; put 1,2; put "x"; put @a, "z"; put %h; put P.new; put "a" ~ "b"; put 5; put 2.5; put True;
say "a" ~ 1 ~ (2,3) ~ 4;
my @e; say "e[" ~ @e ~ "]"; say ~@e;
say @a.Str; say @a.gist; say %h.Str; say $p.Str; say (1,2).Str;
