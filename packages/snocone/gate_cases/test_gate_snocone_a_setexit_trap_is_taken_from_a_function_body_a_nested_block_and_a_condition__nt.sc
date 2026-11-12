&ERRLIMIT = 10; SETEXIT('g_err'); s = "2 + 'b'"; if (s) { r = EVAL(s); OUTPUT = 'ok ' r; } OUTPUT = 'FAIL'; goto e;
g_err: OUTPUT = 'ERROR ' &ERRTYPE;
e: OUTPUT = 'after';
