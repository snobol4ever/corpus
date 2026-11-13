function f(s) { &ERRLIMIT = 10; SETEXIT('f_err'); f = 'FAIL'; f = 'ok ' EVAL(s); return; f_err: f = 'ERROR ' &ERRTYPE; return; }
function g(s) r { &ERRLIMIT = 10; SETEXIT('g_err'); if (r = EVAL(s)) { g = 'ok ' r; return; } g = 'FAIL'; return; g_err: g = 'ERROR ' &ERRTYPE; return; }
OUTPUT = f('1 + 1');
OUTPUT = g('2 + 2');
OUTPUT = f("1 + 'a'");
OUTPUT = g("2 + 'b'");
