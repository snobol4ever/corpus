:- initialization(main).
t(G) :- catch(call(G), E, (write(raised(E)), nl)).
main :- format("a~n", []), X = format("b~n", []), t(X), G = format("d ~w~n", [1]), t(G), t(call(format, "e~n", [])), Z = format('f~n', []), t(Z).
