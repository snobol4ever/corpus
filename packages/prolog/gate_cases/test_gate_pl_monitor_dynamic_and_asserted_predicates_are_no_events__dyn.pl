:- dynamic(counter/1).
counter(0).
st(X) :- X = 1.
main :- counter(C), write(C), nl, assertz(made(7)), made(M), write(M), nl, st(S), write(S), nl,
        G = (1 == 1), call(G), write(G), nl.
:- initialization(main).
