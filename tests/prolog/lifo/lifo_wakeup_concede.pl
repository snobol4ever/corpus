t(X) :- freeze(X, (member(Y, [a, b]), write(w(Y)), nl)), X = 1, write(after), nl, fail.
t(_) :- write(second), nl.
u(X) :- freeze(X, member(X, [2, 3])), X = 2, write(u_bound), nl, fail.
u(_) :- write(u_second), nl.
main :- t(_), u(_), write(done), nl.
:- initialization(main).
