solution(Ylist) :-
 sol(Ylist,[1,2,3,4,5,6,7,8],
    [1,2,3,4,5,6,7,8],
    [-7,-6,-5,-4,-3,-2,-1,0,1,2,3,4,5,6,7],
    [2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]).

sol([],[],[],Du,Dv).

sol([Y|Ylist],[X|Dx1],Dy,Du,Dv) :-
 del(Y,Dy,Dy1),
 U is X-Y,
 del(U,Du,Du1),
 V is X+Y,
 del(V,Dv,Dv1),
 sol(Ylist,Dx1, Dy1,Du1,Dv1).

del(Item,[Item|List],List).

del(Item,[First|List],[First|List1]) :-
 del(Item,List,List1).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines solution/1 and never calls it; the driver prints every 8-queens solution and their count.
:- initialization((findall(Q, solution(Q), Qs), forall(member(Q, Qs), format("~w~n", [Q])), length(Qs, N), format("~w solutions~n", [N]))).
