{
    my class Dup { has $.v = 1; method m { $.v } }
    say Dup.new.m;
}
{
    my class Dup { has $.v = 2; method m { $.v * 10 } }
    say Dup.new.m;
    say Dup.new.m;
}
class Top { method m { "top" } }
{
    my class Top { method m { "inner" } }
    say Top.new.m;
}
say Top.new.m;
for 1..2 -> $i {
    my class Loop { method m { "L" } }
    say Loop.new.m ~ $i;
}
sub mk { return class { method hello { "hello" } } }
say mk().new.hello;
my $o = mk().new; say $o.hello;
{ class Foo { method m { 42 } }; say Foo.new.m; }
sub f { my class Bar { method m { 7 } }; return Bar.new.m }
say f();
if True { class Z1 { method m { 8 } }; say Z1.new.m }
say do { class D1 { method m { 47 } }; D1.new.m };
my $c = class { method m { 42 } }; say $c.new.m;
my $an = anon class { method m { 43 } }; say $an.new.m;
my $o2 = class A1 { method m { 44 } }.new; say $o2.m;
class P { method who { "P" } }; my $pc = class :: is P { }; say $pc.new.who;
say (class { method m { 45 } }).new.m;
my $x = class { has $.a = 3; method get { $.a } }; say $x.new.get; say $x.new(a => 9).get;
my $cn = class { method new { "custom" } }; say $cn.new;
class Outer { method make { class Inner { method hi { "hi" } }; Inner.new.hi } }; say Outer.new.make;
class Foo2 { method m { 42 } }; my $held = Foo2; say $held.new.m;
my @cs = (class { has $.n = 1; method m { $.n } }), (class { has $.n = 2; method m { $.n } }); say @cs[0].new.m + @cs[1].new.m;
my $f1 = &[+]; say $f1(1,2); say reduce(&[+], 1,2,3); say (3,1,2).sort(&infix:<cmp>); say (3,1,2).sort(&infix:«<=>»);
my &g = &infix:<*>; say g(3,4); say (1,2,3).map(&prefix:<->); say [3,1,2].sort(&[<=>]); say 1, 2 Z[&infix:<+>] 3, 4;
say (1,2,3).reduce(&[*]); say &[+](1,2); say &infix:<+>(1,2); say (1,2,3).reduce(&infix:<+>);
my @a2 = <b a c>; say @a2.sort(&infix:<leg>); my $op = &[~]; say $op("a","b"); say (2,3).reduce(&[**]); say (1..4).reduce(&[max]); say &[,](1,2);
