:- initialization(main).
:- set_prolog_flag(stack_limit, 4194304).
mk(0, L, L) :- !.
mk(N, A, L) :- N1 is N - 1, mk(N1, [N|A], L).
main :- catch(mk(5000000, [], _), error(E, _), (write(caught(E)), nl)), findall(X, between(1, 3, X), L), write(L), nl, write(after), nl, halt.
