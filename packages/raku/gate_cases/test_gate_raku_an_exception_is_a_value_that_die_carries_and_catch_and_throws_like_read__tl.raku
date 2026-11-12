use Test;
class MyE is Exception { has $.n; method message { "MyE " ~ $.n } }
throws-like { die "boom" }, X::AdHoc, "adhoc";
throws-like { die "boom" }, Exception, "exception base", message => "boom";
throws-like { die "boom" }, X::AdHoc, message => /oo/, "regex message";
throws-like { MyE.new(n => 3).throw }, MyE, n => 3, "user class";
throws-like { die MyE.new(n => 4) }, Exception, message => "MyE 4";
throws-like { 1 }, X::AdHoc, "does not throw";
throws-like { die "x" }, MyE, "wrong class";
throws-like { die "boom" }, X::AdHoc, message => "other", "wrong message";
throws-like { die "boom" }, X::AdHoc, message => /^bo/, "anchored";
throws-like { MyE.new(n => 7).throw }, MyE, n => 8, "wrong attribute";
done-testing;
