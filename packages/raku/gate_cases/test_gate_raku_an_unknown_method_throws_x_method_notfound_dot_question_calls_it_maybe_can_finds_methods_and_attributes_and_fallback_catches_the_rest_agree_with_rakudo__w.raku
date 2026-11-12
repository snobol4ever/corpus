class Animal {
    method speak { "..." }
    method name { "animal" }
}
class Dog is Animal {
    method speak { "woof" }
}
sub probe(&code) { try { code(); CATCH { default { say .^name, " | ", .message; say .method if .can("method"); } } } }
probe({ "abc".zzzmeth });
probe({ 42.zzzmeth });
probe({ [1, 2, 3].zzzmeth });
probe({ {a => 1}.zzzmeth });
probe({ (1, 2).zzzmeth });
probe({ 3.5e0.zzzmeth });
probe({ True.zzzmeth });
probe({ Dog.new.zzzmeth });
probe({ Dog.zzzmeth });
probe({ Int.zzzmeth });
say "abc".?zzzmeth.defined;
say 42.?zzzmeth.defined;
say Dog.new.?zzzmeth.defined;
say Dog.new.?speak;
say "abc".?uc;
say [1, 2, 3].?elems;
say Dog.new.can("speak").elems;
say Dog.new.can("name").elems;
say Dog.new.can("zzzmeth").elems;
say Dog.can("speak").so;
say Dog.new.can("zzzmeth").so;
say Dog.new.isa(Animal);
say Dog.new.isa(Str);
say Dog.new.does(Animal);
try { Dog.new.zzzmeth; CATCH { when X::Method::NotFound { say "typed catch: ", .method } } }
my $r = try { Dog.new.zzzmeth };
say $r.defined;
say (try { "x".zzzmeth }).defined;
say "still running";
class Chatty {
    method FALLBACK($name, *@args) { "fallback($name)" }
    method real { "real" }
}
say Chatty.new.real;
say Chatty.new.anything;
say Chatty.new.other(1, 2);
class Plain {
    has $.x = 5;
    method m { 1 }
}
my $p = Plain.new;
say $p.x;
say $p.?nothing.defined;
say $p.x.?nothing.defined;
say $p.can("x").so;
say $p.can("m").so;
say $p.can("nothing").so;
use MONKEY-TYPING;
augment class Int { method double { self * 2 } }
say 5.double;
augment class Str { method shout { self.uc ~ "!" } }
say "abc".shout;
augment class List { method rt_x { 62836 } }
say <1 2 3>.rt_x;
say (1,2,3).rt_x;
augment class Array { method amax { self.max } }
my @a = 3,1,2;
say @a.amax;
