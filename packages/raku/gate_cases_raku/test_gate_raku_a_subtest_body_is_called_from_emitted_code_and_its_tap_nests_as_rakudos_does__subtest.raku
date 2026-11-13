use Test;
plan 12;
subtest "plain" => {
    ok 1, "a";
    is 2, 2, "b";
}
sub inner-closure(Int $n) {
    my $seen = 0;
    subtest "closure $n" => {
        ok $n > 0, "n is positive";
        $seen = $n * 2;
        is $seen, $n * 2, "wrote through";
    }
    return $seen;
}
is inner-closure(3), 6, "the write is seen after the subtest";
subtest "nested" => {
    plan 2;
    subtest "inner" => { ok 1, "deep"; }
    ok 1, "after inner";
}
subtest { ok 1, "unnamed"; }
subtest "comma form", { is 1 + 1, 2, "math"; }
my $r = subtest "value" => { ok 1, "one"; };
ok $r, "a passing subtest returns True";
say $r;
for 1..2 -> $i { subtest "loop $i" => { ok $i > 0, "i=$i"; } }
sub counted(@xs) { my $sum = 0; subtest "sum" => { for @xs -> $x { $sum += $x; ok $x > 0, "x=$x"; } }; $sum }
is counted([1, 2, 3]), 6, "a subtest body sums into its sub's local";
