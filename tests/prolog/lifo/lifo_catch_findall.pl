main :- catch((findall(X, (member(X, [1, 2, 3]), X > 1), L), write(L), nl, throw(oops)), E, (write(caught(E)), nl)), \+ member(9, [1, 2]), write(done), nl.
:- initialization(main).
