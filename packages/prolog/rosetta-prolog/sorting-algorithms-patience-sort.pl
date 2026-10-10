patience_sort(UnSorted,Sorted) :-
	make_piles(UnSorted,[],Piled),
	merge_piles(Piled,[],Sorted).

make_piles([],P,P).
make_piles([N|T],[],R) :-
	make_piles(T,[[N]],R).
make_piles([N|T],[[P|Pnt]|Tp],R) :-
	N =< P,
	make_piles(T,[[N,P|Pnt]|Tp],R).
make_piles([N|T],[[P|Pnt]|Tp],R) :-
	N > P,
	make_piles(T,[[N],[P|Pnt]|Tp], R).
	
merge_piles([],M,M).
merge_piles([P|T],L,R) :-
	merge_pile(P,L,Pl),
	merge_piles(T,Pl,R).
	
merge_pile([],M,M).
merge_pile(M,[],M).
merge_pile([N|T1],[N|T2],[N,N|R]) :-
	merge_pile(T1,T2,R).
merge_pile([N|T1],[P|T2],[P|R]) :-
	N > P,
	merge_pile([N|T1],T2,R).
merge_pile([N|T1],[P|T2],[N|R]) :-
	N < P,
	merge_pile(T1,[P|T2],R).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines patience_sort/2 and never calls it; the driver sorts one ten-element sample list (the task gives no data) and prints it.
:- initialization((patience_sort([4, 65, 2, -31, 0, 99, 2, 83, 782, 1], S), format("~w~n", [S]))).
