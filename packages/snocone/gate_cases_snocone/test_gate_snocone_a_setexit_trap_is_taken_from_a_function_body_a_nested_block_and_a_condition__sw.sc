function g(s) { &ERRLIMIT = 10; SETEXIT('g_err'); switch (EVAL(s)) { case 1: g = 'one'; return; default: g = 'other'; return; } g_err: g = 'ERROR ' &ERRTYPE; return; }
OUTPUT = g('1');
OUTPUT = g('2');
OUTPUT = g("1 + 'a'");
OUTPUT = 'after';
