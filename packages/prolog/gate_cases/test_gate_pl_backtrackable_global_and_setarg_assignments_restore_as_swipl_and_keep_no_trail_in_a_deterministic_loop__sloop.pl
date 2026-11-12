t(0) :- !.
t(N) :- T = f(a, b, c), setarg(2, T, x), setarg(1, T, N), N1 is N - 1, t(N1).
:- t(2000000), writeln(done).
