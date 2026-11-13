:- initialization(main).
main :- F = t_foo, [F], t_foo(1,X), write(X), nl.
