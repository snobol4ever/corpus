:- dynamic(portray/1).
portray(Atom) :- atom(Atom), write(Atom), write(Atom).
portray(Float) :- float(Float), Integer is truncate(Float), write(Integer).
:- initialization(main).
main :- format("[~p]~n", [3.14]), format("[~p]~n", [foo]), format("[~p]~n", [a(foo)]),
	format("[~p]~n", [a(foo,b(c(foo,3.14)))]), format("[~p]~n", [[foo,3.14]]), format("[~p]~n", [1+foo]), halt.
