use v6;
# SCRIP corpus import: input made deterministic IN-PROGRAM (fixed-seed LCG below) rather than via
# the runtime's rand()/srand() -- output must be comparable across implementations with different
# PRNG algorithms, and only the input needs to vary, not the PRNG that produced it (FINDING
# 2026-08-30-seat14-raku-benchmark-refs-depend-on-prng-algorithm-match.md; ruled by hq_P;
# identical pattern to insertion-sort.raku, fixed together per hq_P's ruling).

sub merge(@a, \p, \z, \r) {
    my @l = @a[p   .. z].Slip, Inf;
    my @r = @a[z+1 .. r].Slip, Inf;
    my $i = 0;
    my $j = 0;

    for p..r -> \k {
        if @l[$i] <= @r[$j] {
            @a[k] = @l[$i];
            $i++;
        } else {
            @a[k] = @r[$j] ;
            $j++;
        }
    }

}


sub merge-sort(@a, \p = 0, \r = @a.end) {
    if p < r {
        my \z = (p + r) div 2;
        merge-sort(@a, p, z);
        merge-sort(@a, z+1, r);
        merge(@a, p, z, r);
    }
}

my \SCALE = 500;
my $lcg = 42;
my @a = 0 xx SCALE;
for 1..SCALE -> $i { $lcg = ($lcg * 75 + 74) % 65537; @a[$i-1] = $lcg % 500; }
@a = 0 unless SCALE;
merge-sort @a;
say @a[0];
