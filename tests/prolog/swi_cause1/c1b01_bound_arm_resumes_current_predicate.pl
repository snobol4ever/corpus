q(P,N,A) :- atom(N), !, (atom_concat(P,N,QN),current_predicate(QN/A);fail).
main :- ( q('mm:', opt_type, 3) -> writeln(y) ; writeln(n) ).
:- initialization(main).
