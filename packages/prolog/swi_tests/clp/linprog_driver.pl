:- use_module(linprog).
:- initialization(( ( linprog -> writeln(linprog_ok) ; writeln(linprog_failed) ), halt )).
