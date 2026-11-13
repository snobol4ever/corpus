function h(s, t) { &ERRLIMIT = 10; SETEXIT('h_err'); if (EVAL(s)) { h = 'first'; } else if (EVAL(t)) { h = 'second'; } else { h = 'neither'; } return; h_err: h = 'ERROR ' &ERRTYPE; return; }
OUTPUT = h('1', '2');
OUTPUT = h("DIFFER(1,1)", '2');
OUTPUT = h("DIFFER(1,1)", "2 + 'q'");
OUTPUT = 'after';
