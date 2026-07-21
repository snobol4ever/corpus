function fact(n) {
  if (LE(n, 1)) { fact = 1; return; }
  fact = n * fact(n - 1);
  return;
}
OUTPUT = fact(5);
OUTPUT = fact(0);
