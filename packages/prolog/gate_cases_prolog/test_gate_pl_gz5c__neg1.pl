:- initialization(main).
f(a).
f(b).
main :- f(Q), !, write(Q), nl.
