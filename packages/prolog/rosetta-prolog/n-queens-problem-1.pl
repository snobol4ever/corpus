solution([]).

solution([X/Y|Others]) :-
 solution(Others),
 member(Y, [1,2,3,4,5,6,7,8]),
 noattack(X/Y, Others).

noattack(_,[]).

noattack(X/Y,[X1/Y1|Others]) :-
 Y =\= Y1,
 Y1 - Y =\= X1 - X,
 Y1 - Y =\= X - X1,
 noattack(X/Y,Others).

member(Item,[Item|Rest]).

member(Item,[First|Rest]) :-
 member(Item,Rest).

template([1/Y1,2/Y2,3/Y3,4/Y4,5/Y5,6/Y6,7/Y7,8/Y8]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines solution/1 and template/1 and never calls them; the driver prints every 8-queens solution and their count.
:- initialization((findall(S, (template(S), solution(S)), Ss), forall(member(S, Ss), format("~w~n", [S])), length(Ss, N), format("~w solutions~n", [N]))).
