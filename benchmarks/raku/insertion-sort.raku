use v6;
# SCRIP corpus import: srand() added and scale baked in for determinism (see README.md)
srand(42);

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
my @ints;
@ints = (SCALE.rand).Int xx SCALE;
@ints = 0 unless SCALE;
insertion-sort @ints;
say @ints[0];
