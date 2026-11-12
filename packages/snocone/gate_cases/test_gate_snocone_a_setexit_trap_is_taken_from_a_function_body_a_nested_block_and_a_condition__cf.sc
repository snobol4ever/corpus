function f(n) i, x {
  &ERRLIMIT = 10; SETEXIT('h');
  i = 0;
  while (LT(i, n)) {
    i = i + 1;
    if (GT(i, 1)) { x = EVAL("1 + 'a'"); OUTPUT = 'after eval ' i; }
    else { OUTPUT = 'first ' i; }
  }
  f = 'end ' i;
  return;
  h: OUTPUT = 'trap ' &ERRTYPE ' ' i; SETEXIT('h'); goto CONTINUE;
}
OUTPUT = f(3);
OUTPUT = f(2);
OUTPUT = 'done';
