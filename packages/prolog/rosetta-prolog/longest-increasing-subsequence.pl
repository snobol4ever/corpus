lis(In, Out) :-
	% we ask Prolog to find the longest sequence
	aggregate(max(N,Is), (one_is(In, [], Is), length(Is, N)), max(_, Res)),
	reverse(Res, Out).


% we describe the way to find increasing subsequence
one_is([], Current, Current).


one_is([H | T], Current, Final) :-
	(   Current = [], one_is(T, [H], Final));
	(   Current = [H1 | _], H1 < H,   one_is(T, [H | Current], Final));
	one_is(T, Current, Final).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines lis/2 and never calls it; the driver prints a longest increasing subsequence of each of the task's two lists.
:- initialization(forall(member(L, [[3,2,6,4,5,1], [0,8,4,12,2,10,6,14,1,9,5,13,3,11,7,15]]), (lis(L, S), format("~w: ~w~n", [L, S])))).
