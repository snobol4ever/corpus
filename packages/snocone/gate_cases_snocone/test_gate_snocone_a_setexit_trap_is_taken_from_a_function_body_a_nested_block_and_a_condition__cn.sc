function g(n) i, j, s {
  &ERRLIMIT = 20; SETEXIT('h');
  s = '';
  for (i = 1; LE(i, n); i = i + 1) {
    for (j = 1; LE(j, 2); j = j + 1) {
      if (EQ(REMDR(i + j, 2), 0)) { s = s EVAL(i " + 'z'"); }
      else { s = s (i * j) ','; }
    }
  }
  g = s;
  return;
  h: s = s 'E' &ERRTYPE ','; SETEXIT('h'); goto CONTINUE;
}
OUTPUT = g(3);
OUTPUT = 'done';
