'$s'(1). '$s'(2). '$s'(3).
p(X) :- clause('$s'(X), true).
:- initialization(main).
main :- G = p(_), clause(G, B), write(B), nl, findall(X, p(X), L), write(L), nl.
