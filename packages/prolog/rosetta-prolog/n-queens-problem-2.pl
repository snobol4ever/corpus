solution(Queens) :-
 permutation([1,2,3,4,5,6,7,8], Queens),
 safe(Queens).

permutation([],[]).

permutation([Head|Tail],PermList) :-
 permutation(Tail,PermTail),
 del(Head,PermList,PermTail).

del(Item,[Item|List],List).

del(Item,[First|List],[First|List1]) :-
 del(Item,List,List1).

safe([]).

safe([Queen|Others]) :-
 safe(Others),
 noattack(Queen,Others,1).

noattack(_,[],_).

noattack(Y,[Y1|Ylist],Xdist) :-
 Y1-Y=\=Xdist,
 Y-Y1=\=Xdist,
 Dist1 is Xdist + 1,
 noattack(Y,Ylist,Dist1).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines solution/1 and never calls it; the driver prints every 8-queens solution and their count.
:- initialization((findall(Q, solution(Q), Qs), forall(member(Q, Qs), format("~w~n", [Q])), length(Qs, N), format("~w solutions~n", [N]))).
