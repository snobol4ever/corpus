% queens_8 — place 8 non-attacking queens (van Roy suite).
% Bottleneck: nondeterministic search, backtracking, list permutation.
% Source: SWI-Prolog/bench. Prints the first solution.
:- initialization(main).
main :- queens([1,2,3,4,5,6,7,8], Qs), write(Qs), nl.
queens(Data, Out) :- queens_2(Data, [], Out).
queens_2([], Acc, Acc).
queens_2([H|T], History, Out) :-
        sel(Q, [H|T], Rest),
        not_attack(History, Q),
        queens_2(Rest, [Q|History], Out).
not_attack(Xs, X) :- not_attack(Xs, X, 1).
not_attack([], _, _) :- !.
not_attack([Y|Ys], X, N) :-
        X =\= Y + N, X =\= Y - N,
        N1 is N + 1,
        not_attack(Ys, X, N1).
sel(X, [X|T], T).
sel(X, [H|T], [H|Rest]) :- sel(X, T, Rest).
