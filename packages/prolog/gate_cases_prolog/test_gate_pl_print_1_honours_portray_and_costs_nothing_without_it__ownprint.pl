portray(A) :- atom(A), write(A), write(A).
print(X) :- write(mine(X)).
:- initialization(main).
main :- print(foo), nl, halt.
