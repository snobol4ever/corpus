largest_int_v2(In, Out) :-
	maplist(name, In, LC),
	predsort(my_sort,LC, LCS),
	append(LCS, LC1),
	name(Out, LC1).


my_sort(R, L1, L2) :-
	append(L1, L2, V1), name(I1, V1),
	append(L2, L1, V2), name(I2, V2),
	(   I1 < I2, R = >; I1 = I2, R = '='; R = <).



% particular case  95 958
my_sort(>, [H1], [H1,  H2 | _]) :-
	H1 > H2.

my_sort(<, [H1], [H1, H2 | _]) :-
	H1 < H2.

my_sort(R, [H1], [H1, H1 | T]) :-
	my_sort(R, [H1], [H1 | T]).



% particular case  958 95
my_sort(>, [H1,  H2 | _], [H1]) :-
	H1 > H2.

my_sort(<, [H1,  H2 | _], [H1]) :-
	H1 < H2.

my_sort(R, [H1,  H1 | T], [H1]) :-
	my_sort(R, [H1 | T], [H1]) .

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines largest_int_v2/2 and never calls it; the driver runs the task's two lists.
:- initialization(forall(member(L, [[1, 34, 3, 98, 9, 76, 45, 4], [54, 546, 548, 60]]), (largest_int_v2(L, N), format("~w~n", [N])))).
