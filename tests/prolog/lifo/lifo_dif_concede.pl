p(X, Y) :- dif(X, Y), member(X, [a, b]), member(Y, [a, b]), write(X-Y), nl, fail.
p(_, _) :- write(p_second), nl.
main :- p(_, _), write(done), nl.
:- initialization(main).
