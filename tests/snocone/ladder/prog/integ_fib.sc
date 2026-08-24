function fib(n) {
  if (LT(n, 2)) { fib = n; return; }
  fib = fib(n - 1) + fib(n - 2);
  return;
}
i = 0;
while (LE(i, 10)) { OUTPUT = fib(i); i = i + 1; }
