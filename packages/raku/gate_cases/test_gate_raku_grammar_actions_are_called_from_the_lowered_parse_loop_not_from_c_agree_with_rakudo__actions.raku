grammar G {
  token TOP { <num>+ % "," }
  token num { \d+ }
}
class A {
  method num($/) { make $/.Int * 2 }
  method TOP($/) { make $<num>>>.made }
}
say G.parse("1,2,3", actions => A).made;
grammar Calc {
    token TOP { <term>+ % '+' }
    token term { \d+ }
}
class CalcA {
    method term($/) { make +$/ }
    method TOP($/) { make [+] $<term>>>.made }
}
say Calc.parse("1+2+30", actions => CalcA).made;
my $m = Calc.parse("4+5", :actions(CalcA));
say $m.made;
grammar KV {
    token TOP { <pair>+ % ';' }
    token pair { <key> '=' <val> }
    token key { \w+ }
    token val { \w+ }
}
class KVA {
    method key($/) { make ~$/ }
    method val($/) { make ~$/ }
    method pair($/) { make $<key>.made ~ ":" ~ $<val>.made }
    method TOP($/) { make $<pair>>>.made.join(",") }
}
say KV.parse("a=1;b=2;c=3", actions => KVA).made;
my $obj = KVA.new;
say KV.parse("x=9", actions => $obj).made;
my $tot = 0;
for 1..100 -> $i { $tot += Calc.parse("$i+$i", actions => CalcA).made }
say $tot;
