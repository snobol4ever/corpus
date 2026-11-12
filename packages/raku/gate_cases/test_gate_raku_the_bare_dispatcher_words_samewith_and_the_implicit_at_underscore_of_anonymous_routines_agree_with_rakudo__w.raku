class A {
    method m { "A" }
    method n($x) { "A$x" }
}
class B is A {
    method m { "B>" ~ callsame }
    method n($x) { "B>" ~ callwith($x + 1) }
}
class C is B {
    method m { "C>" ~ callsame }
}
say B.new.m; say C.new.m; say B.new.n(1);
class D is A { method m { "D>" ~ callsame() } }
say D.new.m;
class E is A { method m { my $r = callsame; "E>$r" } }
say E.new.m;
class F is A {
    method m { nextsame; "never" }
    method n($x) { nextwith($x + 5); "never" }
}
say F.new.m; say F.new.n(1);
class G is A { method m { return "G>" ~ callwith() } }
say G.new.m;
sub fact($n) { $n < 2 ?? 1 !! $n * samewith($n - 1) }
say fact(5); say fact(1);
sub f1 { @_.elems }
say f1(1,2,3);
sub f2 { %_.elems }
say f2(:a(1), :b(2));
sub f3 { %_<a> + @_[0] }
say f3(5, :a(2));
my $g1 = sub { @_.elems }; say $g1(1,2);
my $g2 = { @_.elems }; say $g2(1,2,3);
my $g3 = { @_[0] + @_[1] }; say $g3(3,4);
my @r = (1,2,3).map({ @_.elems }); say @r;
my $g4 = sub { my ($a, $b) = @_; $a * $b }; say $g4(3,4);
