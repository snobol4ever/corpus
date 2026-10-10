% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): written for double_quotes=codes (DEC-10 Prolog, ISO, SWI before 7); the program sets the flag, as
% GOAL-PROLOG-100's superset ruling has a program set a dialect flag (it is SCRIP's default; swipl 7 reads "..." as a string).
:- set_prolog_flag(double_quotes, codes).
pangram(L) :-
	numlist(0'a, 0'z, Alphabet),
	forall(member(C, Alphabet), member(C, L)).

pangram_example :-
	L1 = "the quick brown fox jumps over the lazy dog",
	(   pangram(L1) -> R1= ok; R1 = ko),
	format('~s --> ~w ~n', [L1,R1]),

	L2 = "the quick brown fox jumped over the lazy dog",
	(   pangram(L2) -> R2 = ok; R2 = ko),
	format('~s --> ~w ~n', [L2, R2]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines pangram_example/0 and never calls it; written for code lists (member/2 over "..."), so the flag is set at its head and the driver calls it once at load.
:- initialization(pangram_example).
