class Dog { has $.n }
my Int $i = 5;
for ("a", 5.5e0, Str, [1], {a=>1}, True, 7) -> $v { try { $i = $v; CATCH { default { say .message } } } }
my Str $s = "x";
my $five = 5;
try { $s = $five; CATCH { default { say .message } } }
try { $s = 5.5e0; CATCH { default { say .message } } }
my Int @a;
try { @a[0] = "z"; CATCH { default { say .message } } }
try { @a.push("q"); CATCH { default { say .message } } }
@a.push(3);
@a[1] = 4;
say @a.elems;
my Dog $d;
try { $d = $five; CATCH { default { say .message } } }
try { $d = Dog.new; say "ok dog"; CATCH { default { say .message } } }
my Num $n = 1e0;
try { $n = $five; CATCH { default { say .message } } }
my Bool $b = True;
$b = False;
say $b;
try { $b = 1; say "bool-int-ok?"; CATCH { default { say .message } } }
my Int $j = 3;
$j += 2;
$j++;
$j = $j * 2;
$j = 10 div 3;
$j = 7 % 3;
$j = abs(-4);
$j = (5.7e0).floor;
$j = "42".Int;
$j = +"17";
$j = 2 ** 10;
$j = @a.elems;
$j = ord("a");
$j = "hello".chars;
say $j;
my Str $t = "a" ~ "b";
$t = "x" x 3;
$t = 5.Str;
$t = ~7;
$t = "abc".uc;
$t = join(",", 1, 2);
say $t;
sub f(Int $x) { my Int $y = $x * 2; return $y }
say f(4);
my Int $k;
$k = 3;
say $k;
my Int %h;
%h<a> = 1;
try { %h<b> = "x"; CATCH { default { say .message } } }
say %h;
