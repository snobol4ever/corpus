% fetch all the subsequences
ncsubs(L, LNCSL) :-
	setof(NCSL, one_ncsubs(L, NCSL), LNCSL).

% how to build one subsequence
one_ncsubs(L, NCSL) :-
	extract_elem(L, NCSL);
	(   sublist(L, L1),
	    one_ncsubs(L1, NCSL)).

% extract one element of the list
% this element is neither the first nor the last.
extract_elem(L, NCSL) :-
	length(L, Len),
	Len1 is Len - 2,
	between(1, Len1, I),
	nth0(I, L, Elem),
	select(Elem, L, NCS1),
	(   NCSL = NCS1; extract_elem(NCS1, NCSL)).

% extract the first or the last element of the list
sublist(L, SL) :-
	(L = [_|SL];
	reverse(L, [_|SL1]),
	reverse(SL1, SL)).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines ncsubs/2 and never calls it; the driver prints the non-continuous subsequences of the task's 1..4 and of the sibling's example [a,e,i,o,u].
:- initialization(forall(member(L, [[1,2,3,4], [a,e,i,o,u]]), (ncsubs(L, S), format("~w: ~w~n", [L, S])))).
