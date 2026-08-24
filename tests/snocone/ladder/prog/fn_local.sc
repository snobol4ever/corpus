function sumto(n, acc, i) {
  acc = 0; i = 1;
  while (LE(i, n)) { acc = acc + i; i = i + 1; }
  sumto = acc; return;
}
OUTPUT = sumto(10);
