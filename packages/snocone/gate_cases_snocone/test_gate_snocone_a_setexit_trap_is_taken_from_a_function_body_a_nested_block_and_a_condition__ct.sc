&ERRLIMIT = 10; SETEXIT('h');
i = 0;
while (LT(i, 3)) {
  i = i + 1;
  x = EVAL("1 + 'a'");
  OUTPUT = 'after eval ' i;
}
OUTPUT = 'end';
goto e;
h: OUTPUT = 'trap ' &ERRTYPE ' ' i; SETEXIT('h'); goto CONTINUE;
e: OUTPUT = 'done';
