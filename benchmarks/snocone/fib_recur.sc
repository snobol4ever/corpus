// fib_recur.sc -- naive doubly-recursive Fibonacci. Twin: snobol4/fib_recur.sno.
// bottleneck: recursive procedure-call overhead.
procedure fib(n) {
    if (LT(n, 2)) { fib = n; } else { fib = fib(n - 1) + fib(n - 2); }
}
r = fib(24);
OUTPUT = r;
