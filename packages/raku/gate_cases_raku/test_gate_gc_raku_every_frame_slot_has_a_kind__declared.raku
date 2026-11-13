role R { method needed() {...} }
class C does R { }
my $c = C.new(); say("made");
