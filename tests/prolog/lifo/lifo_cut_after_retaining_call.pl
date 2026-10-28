g(X) :- member(X, [1, 2, 3]), X > 1, !, write(first(X)), nl.
g(_) :- write(g_second), nl.
main :- g(_), g(0), write(done), nl.
:- initialization(main).
