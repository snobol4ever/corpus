function f(inf_arg) { f = inf_arg + 1; return; }
function two(a, b) { two = a '-' b; return; }
function fr(x) { if (GT(x, 5)) { fr = x; return; } freturn; }
function fact(n) { if (LE(n, 1)) { fact = 1; return; } fact = n * APPLY('fact', n - 1); return; }
function h(k) { h = .inf_tab[k]; nreturn; }
function outer(v) { outer = 'outer ' APPLY('f', v); return; }
inf_tab = TABLE();
inf_tab[1] = 'one';
OUTPUT = 'apply ' APPLY('f', 2);
x = 'f';
OUTPUT = 'apply x ' APPLY(x, 3);
OUTPUT = 'two ' APPLY('two', 'a', 'b');
OUTPUT = 'two short ' APPLY('two', 'a');
OUTPUT = 'two long ' APPLY('two', 'a', 'b', 'c');
OUTPUT = 'fr ' APPLY('fr', 9);
if (APPLY('fr', 1)) { OUTPUT = 'fr matched'; } else { OUTPUT = 'fr failed'; }
OUTPUT = 'fact ' APPLY('fact', 5);
OUTPUT = 'nr ' APPLY('h', 1);
OUTPUT = outer(7);
OUTPUT = 'eval ' EVAL("APPLY('f', 4)");
OUTPUT = 'end';
