r(A, B, C, D, E) :- format("r5: ~q | ~q | ~q | ~q | ~q~n", [A, B, C, D, E]).
r(A, B, C, D) :- format("r4: ~q | ~q | ~q | ~q~n", [A, B, C, D]).
a1(G, X, Y, D, H, K) :- call(G, p(X, Y), D, H, K).
a2(G, X, D, H, K) :- call(G, p(X), D, H, K).
a3(G, X, Y, D, H) :- call(G, p(X, Y), D, H).
a4(G, X, Y, D, H, K) :- call(G, [X, Y], D, H, K).
a5(G, X, Y, D, H, K) :- call(G, f(X, Y, X), D, H, K).
a6(G, X, D, H, K) :- call(G, X, D, H, K).
b1(X, Y, D, H, K) :- call(r(g), p(X, Y), D, H, K).
t :- a1(r(g), 1, 2, dd, hh, kk), a2(r(g), 1, dd, hh, kk), a3(r(g), 1, 2, dd, hh), a4(r(g), 1, 2, dd, hh, kk), a5(r(g), 1, 2, dd, hh, kk),
     a6(r(g), 1, dd, hh, kk), b1(1, 2, dd, hh, kk).
:- initialization(t).
