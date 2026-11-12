class A {
    method m($x) { 5; $x }
    method f($x) { 5.5; $x }
    method s($x) { "s"; $x }
    method t($x) { 7; $x * 2 }
    method u($x, $y) { 1; 2; $x + $y }
}
say A.new.m(3);
say A.new.f(4);
say A.new.s(5);
say A.new.t(6);
say A.new.u(1, 2);
class B {
    submethod BUILD { 9; }
    method z { 11; 12 }
}
say B.new.z;
