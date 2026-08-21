:- initialization(main).
t(1).
t(2).
t(3).
g :- t(X), !, X > 2.
main :- ( g -> write(yes) ; write(no) ), nl.
