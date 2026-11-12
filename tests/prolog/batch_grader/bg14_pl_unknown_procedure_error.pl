:- initialization(main).
main :- catch(foo(1), error(E, _), (write(E), nl)), write(after), nl.
