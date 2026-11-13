use MONKEY-TYPING;
class Engine { method start() { "vroom" }; method stop() { "halt" } }
class Car { has $.engine handles <start stop>; has $.name; }
my $c = Car.new(engine => Engine.new, name => "tesla");
say $c.start; say $c.stop; say $c.name;
class Fleet { has $.lead handles <start>; }
say Fleet.new(lead => $c).start;
class Dyn { method FALLBACK($name) { "fb:" ~ $name } }
say Dyn.new.hello;
class Dyn1 { method FALLBACK($name, $x) { "fb1:" ~ $name ~ ":" ~ $x } }
say Dyn1.new.twice(21);
class Mb { method hi() { "hi" } }
say Mb.new.?hi;
say Mb.new.?nope // "nope-nil";
augment class Int { method double() { self * 2 } }
say 21.double;
augment class Str { method shout() { self.uc ~ "!" } }
say "hey".shout;
class Animal { has $.name; method gist() { "DOG:" ~ $.name } }
class Dog is Animal { }
say Dog.new(name => "Rex");
my @pets = Dog.new(name => "A"), Dog.new(name => "B");
for @pets -> $p { say $p }
class Point { has $.x; has $.y; method Str() { "(" ~ $.x ~ "," ~ $.y ~ ")" } }
my $pt = Point.new(x => 3, y => 4);
say "at " ~ $pt;
say "pt=$pt";
say $pt ~ "!";
put $pt;
my $n = 0;
for 1..200 -> $i { $n += ("" ~ Point.new(x => $i, y => $i)).chars; $n += Car.new(engine => Engine.new, name => "x").start.chars }
say $n;
