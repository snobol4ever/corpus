# *BENCH kernel=mb-create_and_copy_2d_grid_cross -- raku-bench microbenchmark 'create_and_copy_2d_grid_cross' (japhb/raku-bench, Artistic 2.0), SCALE baked to 128; imported 2026-09-26 (ceo CEO-1283)
my (@src, @dst); @dst[0][0] = 0; for flat(1 .. 128 X 1 ..128) -> $i, $j { @src[$i][$j] = $i + $j }; for flat(1 .. 128 X 1 .. 128) -> $i, $j { @dst[$i][$j] = @src[$i][$j] }; say @dst[128][128];
