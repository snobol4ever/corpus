:- initialization(main).
main :- catch((length(L, 5000000), (true ; true), maplist(=(x), L), write(bound)), error(resource_error(_), _), write(caught)), nl, halt.
