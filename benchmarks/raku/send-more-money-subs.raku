# *BENCH kernel=send-more-money-subs -- raku-bench whole program 'send-more-money-subs' (japhb/raku-bench; Artistic 2.0; srand(42) prepended); imported 2026-09-26 (ceo CEO-1283)
srand(42);
my @digits = 0..9;
 
choose @digits ∖ 0, -> $s {
choose @digits ∖ $s, -> $e {
choose @digits ∖ ($s, $e), -> $n {
choose @digits ∖ ($s, $e, $n), -> $d {
my $send = :10[$s, $e, $n, $d];
 
choose @digits ∖ (0, $s, $e, $n, $d), -> $m {
choose @digits ∖ ($s, $e, $n, $d, $m), -> $o {
choose @digits ∖ ($s, $e, $n, $d, $m, $o), -> $r {
my $more = :10[$m, $o, $r, $e];
 
choose @digits ∖ ($s, $e, $n, $d, $m, $o, $r), -> $y {
my $money = :10[$m, $o, $n, $e, $y];
 
guard $send + $more == $money, {
say "$send + $more == $money";
}}}}}}}}};
 
sub choose(Set $choices, &fn) {
    for $choices.keys -> $value {
        &fn($value);
    }
}
 
sub guard($condition, &fn) {
    if $condition {
        &fn();
    }
}
