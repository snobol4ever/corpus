:- initialization(main).
mk(N, T) :- length(L, N), fill(L, N), T = t(L, N).
fill([], _).
fill([H|T], N) :- number_codes(N, Cs), atom_codes(H, [0'k|Cs]), N1 is N + 1, fill(T, N1).
q(X, T) :- mk(5, T0), member(X, [1,2,3,4,5,6]), T = T0.
churn(0) :- !.
churn(N) :- mk(8, _), N1 is N - 1, churn(N1).
r(S) :- q(X, T), churn(6), X >= 5, T = t(L, _), length(L, Len), S is X * 100 + Len.
loop(0, A, A) :- !.
loop(N, A0, A) :- r(S), A1 is A0 + S, N1 is N - 1, loop(N1, A1, A).
main :- loop(4, 0, A), write(A), nl, q(_, t(L, _)), write(L), nl, halt.
