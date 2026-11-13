class MyE is Exception { has $.n; method message { "MyE " ~ $.n } }
try { die "boom" };
say $!.message; say $!.WHAT; say $!.defined; say $! ~~ X::AdHoc; say $! ~~ Exception; say $!.isa(Exception);
try { 1 }; say $!.defined;
my $r = try { 5 }; say $r;
my $q = try { die "x"; 5 } // "dflt"; say $q;
my $e = X::AdHoc.new(payload => "pp");
say $e.message; say $e.payload; say $e.WHAT;
try { $e.throw }; say "got: ", $!.message;
try { MyE.new(n => 3).throw }; say $!.message; say $!.n; say $!.WHAT; say $! ~~ MyE; say $! ~~ Exception;
try { die MyE.new(n => 6) }; say $!.message; say "str: $!";
{ die "oops"; CATCH { when X::AdHoc { say "adhoc: ", .message } } }
{ die "z"; CATCH { default { say "any: $_" } } }
sub h($x) { die "neg" if $x < 0; return $x * 2; CATCH { default { say "h caught: ", .message } } }
say h(3); say h(-1); say h(4);
sub k { die "boom"; CATCH { when X::AdHoc { say "k adhoc ", .message } } }
k(); say "after k";
sub u { die "bad"; CATCH { when MyE { say "no" } } }
try { u(); say "not reached" }
say "u rethrown: ", $!.message;
try { try { die "inner" }; say "inner: ", $!.message; die "outer" }
say "outer: ", $!.message;
say try { MyE.new(n => 1).message };
