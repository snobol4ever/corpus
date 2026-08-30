use v6;
# SCRIP corpus import: input made deterministic IN-PROGRAM (fixed-seed LCG below) rather than via
# the runtime's rand()/srand() -- output must be comparable across implementations with different
# PRNG algorithms, and only the input needs to vary, not the PRNG that produced it (FINDING
# 2026-08-30-seat14-raku-benchmark-refs-depend-on-prng-algorithm-match.md; ruled by hq_P).

sub insertion-sort(@a) {
    for 1 .. @a.end -> $j {
        my $key = @a[$j];
        # Insert @a[$j] into the sorted sequence @a[0..$j-1]
        my $i   = $j - 1;
        while $i >= 0 && @a[$i] > $key  {
            @a[$i+1] = @a[$i];
            $i-=1;
        }
        @a[$i+1] = $key;
    }
}

my \SCALE = 500;
my $lcg = 42;
my @ints = 0 xx SCALE;
for 1..SCALE -> $i { $lcg = ($lcg * 75 + 74) % 65537; @ints[$i-1] = $lcg % 500; }
@ints = 0 unless SCALE;
insertion-sort @ints;
say @ints[0];
