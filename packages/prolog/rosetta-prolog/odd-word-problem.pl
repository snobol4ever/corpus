% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): written for double_quotes=codes (DEC-10 Prolog, ISO, SWI before 7); the program sets the flag, as
% GOAL-PROLOG-100's superset ruling has a program set a dialect flag (it is SCRIP's default; swipl 7 reads "..." as a string).
:- set_prolog_flag(double_quotes, codes).
odd_word_problem :-
	read_line_to_codes(user_input, L),
	even_word(L, Out, []),
	string_to_list(Str, Out),
	writeln(Str).

even_word(".") --> ".".

even_word([H | T]) -->
	{char_type(H,alnum)},
	[H],
	even_word(T).

even_word([H | T]) -->
	[H],
	odd_word(T, []).

odd_word(".", R) --> R, ".".

odd_word([H|T], R) -->
	{char_type(H,alnum)},
	odd_word(T, [H | R]).

odd_word([H|T], R) -->
	R,
	[H],
	even_word(T).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines odd_word_problem/0 and never calls it; written for code lists (even_word//1 matches "." against read codes), so the flag is set at its head; odd-word-problem.in holds the task's two sentences, one a line, and the driver runs it once per line.
:- initialization(forall(between(1, 2, _), odd_word_problem)).
