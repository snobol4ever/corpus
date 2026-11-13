:- dynamic(portray/1).
portray(F) :- float(F), I is truncate(F), write(I).
main :- format("~p", [3.14]), nl, format("~p~n", [f(2.5, x)]), X = 7.9, format("~p-~w~n", [X, X]).
:- initialization(main).
