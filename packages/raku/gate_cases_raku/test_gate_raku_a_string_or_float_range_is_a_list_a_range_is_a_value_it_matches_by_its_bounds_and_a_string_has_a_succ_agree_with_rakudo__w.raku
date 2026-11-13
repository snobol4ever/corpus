say ('a'..'e').list;
say ('aa'..'ad').list;
say ('x'..'ab').list;
say ('a'..'a').list;
say (1.5..4.5).list;
say (1..3.5).list;
for 'a'..'c' { print $_ }
say "";
for 'x'..'z' -> $c { print $c, "-" }
say "";
my @s = 'a'..'e';
say @s.elems;
say "az".succ;
say "zz".succ;
say "a9".succ;
say "Zz".succ;
say "a9z".succ;
say "9".succ;
say "a-z".succ;
say 5 ~~ 1..10;
say 15 ~~ 1..10;
say 5.5 ~~ 1..10;
say "c" ~~ 'a'..'e';
say "cc" ~~ 'a'..'e';
say (1..20).grep(* ~~ 5..8);
say (1..9).grep({ $_ ~~ 5..8 });
given 5 {
    when 1..3 { say "low" }
    when 4..6 { say "mid" }
    default { say "hi" }
}
my $r = 1..5;
say $r;
say $r.WHAT;
say $r.min, " ", $r.max;
say $r.elems;
say $r.sum;
say $r.list;
say $r.reverse;
say $r.join(",");
say $r.map(* * 2);
say $r.grep(* %% 2);
say $r.excludes-min, $r.excludes-max;
say $r.bounds;
say $r.Str;
say $r.raku;
say 3 ~~ $r;
say 7 ~~ $r;
my @a = $r;
say @a;
say (1..3).minmax;
my $t = 'a'..'c';
say $t;
say $t.list;
say $t.min, $t.max;
say [1..3].elems;
say [1..3];
say [1..3, 4].elems;
sub f(*@a) { @a.elems }
say f(1..3);
sub g($x) { $x.WHAT }
say g(1..3);
say 1..3;
say (1..3).gist;
say (1..3).raku;
put 1..3;
say 'a'..'c';
say (5..1).elems;
say (1..0).list;
