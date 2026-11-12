:- initialization(main).
p(N, R) :- ( N > 0 -> L1 = [a, b, c, N] ; L1 = [] ), ( atom(L1) -> L2 = L1 ; L2 = f(L1, L1) ), mk(50, _), N < 0, R = L2.
p(N, R) :- ( N > 1 -> M = g(N, [x, y]) ; M = h ), ( M = g(_, _) -> R = ok(M) ; R = no ), mk(100, _).
p(_, last).
mk(0, []) :- !.
mk(K, [K-x|T]) :- K1 is K - 1, mk(K1, T).
main :- forall(between(1, 200, I), ( p(I, R), ( I =:= 200 -> write(R), nl ; true ) )), halt.
