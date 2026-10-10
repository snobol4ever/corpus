% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): written for double_quotes=codes (DEC-10 Prolog, ISO, SWI before 7); the program sets the flag, as
% GOAL-PROLOG-100's superset ruling has a program set a dialect flag (it is SCRIP's default; swipl 7 reads "..." as a string).
:- set_prolog_flag(double_quotes, codes).
strip :-
	In = "    There are unwanted blanks here!    ",
	strip_left(In, OutLeft),
	format('In          : ~s__~n', [In]),
	format('Strip left  : ~s__~n', [OutLeft]),
	strip_right(In, OutRight),
	format('Strip right : ~s__~n', [OutRight]),
	strip(In, Out),
	format('Strip       : ~s__~n', [Out]).


strip_left(In, Out) :-
	strip_action(In, Out, []).

strip_right(In, Out) :-
	reverse(In, RIn),
	strip_left(RIn, ROut),
	reverse(ROut, Out).

strip(In, Out) :-
	strip_left(In, Tmp),
	strip_right(Tmp, Out).

strip_action([X|T]) -->
	{\+code_type(X, graph), !},
	strip_action(T).


strip_action(X) --> X.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines strip/0 and never calls it; written for code lists (strip_action//1 over "..."), so the flag is set at its head and the driver calls strip/0 once at load.
:- initialization(strip).
