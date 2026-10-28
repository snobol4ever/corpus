:- initialization(main).
:- set_prolog_flag(stack_limit, 67108864).
main :- catch((findall(X, between(1, 9000000, X), L), length(L, N), write(n(N)), nl), error(E, _), (write(caught(E)), nl)), write(after), nl.
