use v6;
# SCRIP corpus import: srand() added and scale baked in for determinism (see README.md)
srand(42);

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
my @a = (SCALE.rand).Int xx SCALE;
@a = 0 unless SCALE;
merge-sort @a;
say @a[0];
