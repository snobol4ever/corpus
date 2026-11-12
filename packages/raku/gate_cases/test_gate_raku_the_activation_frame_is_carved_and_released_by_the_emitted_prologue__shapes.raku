sub twelve($a1,$a2,$a3,$a4,$a5,$a6,$a7,$a8,$a9,$a10,$a11,$a12) { $a1 + $a2 + $a3 + $a4 + $a5 + $a6 + $a7 + $a8 + $a9 + $a10 + $a11 + $a12 }
sub thirteen($a1,$a2,$a3,$a4,$a5,$a6,$a7,$a8,$a9,$a10,$a11,$a12,$a13) { $a1 + $a13 + $a7 }
say twelve(1,2,3,4,5,6,7,8,9,10,11,12);
say thirteen(1,2,3,4,5,6,7,8,9,10,11,12,13);
sub slurp(*@a) { @a.elems }
say slurp(1,2,3);
sub named($x, :$k = 3) { "$x $k" }
say named(1); say named(1, :k(9));
