:- initialization(main).
main :- catch(($goal), error(E, _), (write(caught(E)), nl)), write(alive), nl, halt.
