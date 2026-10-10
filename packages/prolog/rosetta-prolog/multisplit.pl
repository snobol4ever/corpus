multisplit(_LSep, '') -->
	{!},
	[].

multisplit(LSep, T) -->
	{next_sep(LSep, T, [], Token, Sep, T1)},
	(   {Token \= '' },[Token], {!}; []),
	(   {Sep \= '' },[Sep], {!}; []),
	multisplit(LSep, T1).

next_sep([], T, Lst, Token, Sep, T1) :-
	% if we can't find any separator, the game is over
	(   Lst = [] ->
	Token = T, Sep = '', T1 = '';

	% we sort the list to get nearest longest separator
	predsort(my_sort, Lst, [(_,_, Sep)|_]),
	atomic_list_concat([Token|_], Sep, T),
	atom_concat(Token, Sep, Tmp),
	atom_concat(Tmp, T1, T)).

next_sep([HSep|TSep], T, Lst, Token, Sep, T1) :-
	sub_atom(T, Before, Len, _, HSep),
	next_sep(TSep, T, [(Before, Len,HSep) | Lst], Token, Sep, T1).

next_sep([_HSep|TSep], T, Lst, Token, Sep, T1) :-
	next_sep(TSep, T, Lst, Token, Sep, T1).


my_sort(<, (N1, _, _), (N2, _, _)) :-
	N1 < N2.

my_sort(>, (N1, _, _), (N2, _, _)) :-
	N1 > N2.

my_sort(>, (N, N1, _), (N, N2, _)) :-
	N1 < N2.

my_sort(<, (N, N1, _), (N, N2, _)) :-
	N1 > N2.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines the multisplit//2 DCG and never calls it; the driver splits the task's a!===b=!=c on the separators ==, != and = and prints the tokens and separators.
:- initialization((phrase(multisplit(['==', '!=', '='], 'a!===b=!=c'), L), format("~w~n", [L]))).
