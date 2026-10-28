t(1) :- write(one), nl.
t(2) :- throw(two).
t(3) :- write(three), nl.
main :- catch(( t(X), X > 1, write(x(X)), nl, fail ; true ), E, (write(caught(E)), nl)), write(done), nl.
:- initialization(main).
