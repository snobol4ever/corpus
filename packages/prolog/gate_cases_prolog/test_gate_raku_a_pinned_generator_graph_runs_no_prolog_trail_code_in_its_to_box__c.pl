:- initialization(main).
p(X, Y) :- between(1, 4, X), Y = f(X), X >= 3.
q(L) :- findall(X-Y, p(X, Y), L).
main :- q(L), write(L), nl, ( p(A, B), A > 3 -> write(A-B) ; write(none) ), nl, halt.
