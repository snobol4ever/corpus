portray(A) :- atom(A), write(A), write(A).
:- initialization(main).
main :- print(42), nl, print(foo), nl, print(a(b)), nl, print([1,2]), nl.
