function g(s) r { &ERRLIMIT = 10; SETEXIT('g_err'); if (s) { r = EVAL(s); g = 'ok ' r; return; } g = 'FAIL'; return; g_err: g = 'ERROR ' &ERRTYPE; return; }
OUTPUT = g("2 + 'b'");
OUTPUT = 'after';
