portray(A) :- atom(A), write(A), write(A).
portray(F) :- float(F), I is truncate(F), write(I).
:- initialization(main).
main :- print(42), nl, print(3.14), nl, print(foo), nl, halt.
