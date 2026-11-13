use Test;
use lib "/home/resources/roast-master/packages/Test-Helpers";
use Test::Util;
plan 3;
group-of 2 => 'first group' => {
    ok 1, 'one';
    is 2, 2, 'two';
}
group-of 1 => 'second group' => {
    is 'a', 'a', 'x';
}
my $n = 0;
group-of 3 => 'counted group' => {
    for 1 .. 3 { $n += $_; ok $n > 0, "step $_" }
}
say $n;
{
    multi sub foo(Int $x) { "int" }
    multi sub foo(Str $x) { "str" }
    say foo(1);
    say foo("a");
}
sub w {
    my multi sub bar(Int $x) { "i" }
    my multi sub bar(Str $x) { "s" }
    bar(1) ~ bar("a")
}
say w();
{
    my multi baz(Int $x) { "I" }
    my multi baz(Str $x) { "S" }
    say baz(2);
    say baz("b");
}
sub deeper {
    {
        multi sub qux(Int $x) { "qi" }
        multi sub qux(Str $x) { "qs" }
        return qux(3) ~ qux("c");
    }
}
say deeper();
