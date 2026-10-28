% DESIGN-PLAN planner-finish witness: a call with a bound local, an unbound local, a structure, a string and a float; an argument bound by the callee
:- initialization(main).
main :- X = 5, f(X, Y, g(1,2), "str", 3.5), write(Y), nl, h(A, B), write(A-B), nl, k(X, Z), write(Z), nl.
f(X, Y, g(P, Q), S, F) :- Y is X + P + Q, string_length(S, L), F > 3, L > 2.
h(a, b).
k(N, [N, M]) :- M is N * 2.
