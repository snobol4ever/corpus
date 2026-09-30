// arith_loop.sc -- fixed-count accumulator loop. Twin: snobol4/arith_loop.sno.
// bottleneck: while-loop dispatch + scalar arithmetic.
n = 0;
i = 1;
while (LE(i, 300000)) {
    n = n + i;
    i = i + 1;
}
OUTPUT = n;
