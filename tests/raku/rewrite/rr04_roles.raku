role Cnt { my $n = 0; method inc { ++$n } }
my class A does Cnt { }
my class B does Cnt { }
say A.inc; say A.inc; say B.inc;
role Cnt2[::T] { my $m = 0; method inc2 { ++$m } }
my class C does Cnt2[Int] { }
my class D does Cnt2[Str] { }
my class E does Cnt2[Int] { }
say C.inc2; say C.inc2; say D.inc2; say E.inc2;
my $v = 5 but role { method tag { "tagged" } };
say $v.tag; say $v + 1;
my $w = "s"; $w does role { method hi { "hi" } }; say $w.hi;
