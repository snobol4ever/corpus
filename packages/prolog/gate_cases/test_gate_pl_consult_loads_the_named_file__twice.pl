:- [t_foo].
:- [t_foo].
:- initialization(main).
main :- findall(X, t_foo(1,X), L), write(L), nl.
