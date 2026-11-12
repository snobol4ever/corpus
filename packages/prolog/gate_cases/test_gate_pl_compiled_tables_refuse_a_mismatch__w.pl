p(X) :- X = f(a, g(b, [1, 2]), 'Quoted', h(c)).
main :- p(X), writeq(X), nl, X =.. [N | Args], writeq(N), nl, length(Args, K), write(K), nl, functor(X, _, A), write(A), nl.
:- initialization(main).
