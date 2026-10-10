% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): written for double_quotes=codes (DEC-10 Prolog, ISO, SWI before 7); the program sets the flag, as
% GOAL-PROLOG-100's superset ruling has a program set a dialect flag (it is SCRIP's default; swipl 7 reads "..." as a string).
:- set_prolog_flag(double_quotes, codes).
search_a_list(N1, N2) :-
	L = ["Zig", "Zag", "Wally", "Ronald", "Bush", "Krusty", "Charlie", "Bush", "Boz", "Zag"],

	write('List is :'), maplist(my_write, L), nl, nl,

	(   nth1(Ind1, L, N1) ->
	    format('~s is in position ~w~n', [N1, Ind1])
	;   format('~s is not present~n', [N1])),
	(   nth1(Ind2, L, N2) ->
	    format('~s is in position ~w~n', [N2, Ind2])
	;   format('~s is not present~n', [N2])),
	(   reverse_nth1(Ind3, L, N1) ->
	    format('~s last position is ~w~n', [N1, Ind3])
	;   format('~s is not present~n', [N1])).

reverse_nth1(Ind, L, N) :-
	reverse(L, RL),
	length(L, Len),
	nth1(Ind1, RL, N),
	Ind is Len - Ind1 + 1.

my_write(Name) :-
	writef(' %s', [Name]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines search_a_list/2 over the task's haystack and never calls it; written for code lists (writef %s and format ~s over "..."), so the flag is set at its head and the driver searches the task's needles Bush and Washington.
:- initialization(search_a_list("Bush", "Washington")).
