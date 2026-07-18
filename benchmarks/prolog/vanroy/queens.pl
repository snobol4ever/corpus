% queens — place 16 non-attacking queens, first solution (GNU examples).
% Bottleneck: nondeterministic search with deep backtracking; exercises a
% recursive list generator (range/3 with a clause cut), selection (sel/3), and
% arithmetic disequality guards (=\=). Source: gprolog examples/ExamplesPl.
% Prints the first solution as the deterministic result signature.
:- initialization(main).
bench__main :- queens(16, R), write(R), nl.
queens(N, Qs) :- range(1, N, Ns), queens(Ns, [], Qs).
queens([], Qs, Qs).
queens(UnplacedQs, SafeQs, Qs) :-
        sel(UnplacedQs, UnplacedQs1, Q),
        not_attack(SafeQs, Q),
        queens(UnplacedQs1, [Q|SafeQs], Qs).
not_attack(Xs, X) :- not_attack(Xs, X, 1).
not_attack([], _, _).
not_attack([Y|Ys], X, N) :-
        X =\= Y + N, X =\= Y - N,
        N1 is N + 1,
        not_attack(Ys, X, N1).
sel([X|Xs], Xs, X).
sel([Y|Ys], [Y|Zs], X) :- sel(Ys, Zs, X).
range(N, N, [N]) :- !.
range(M, N, [M|Ns]) :- M < N, M1 is M + 1, range(M1, N, Ns).
main :- l__(1).
l__(N__) :- between(1, N__, _), bench__main, fail.
l__(_).
