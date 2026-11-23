sub binary_search (&p, Int $lo is copy, Int $hi is copy --> Int) {
    until $lo > $hi {
        my Int $mid = ($lo + $hi) div 2;
        given p $mid {
            when -1 { $hi = $mid - 1; }
            when  1 { $lo = $mid + 1; }
            default { return $mid;    }
        }
    }
    fail;
}
sub quicksort(@a) {
    return @a if @a.elems <= 1;
    my $pivot = @a[0];
    my @less = @a[1 .. *].grep(* < $pivot);
    my @more = @a[1 .. *].grep(* >= $pivot);
    return (|quicksort(@less), $pivot, |quicksort(@more));
}
my @data = 9, 4, 7, 1, 8, 2, 6;
my @sorted = quicksort(@data);
say "sorted: ", @sorted;
sub locate($target) {
    my &by = { $target <=> @sorted[$_] };
    my $i = binary_search(&by, 0, @sorted.end);
    say "$target is at index ", $i // "nowhere";
}
locate($_) for 7, 1, 5;
