% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): written for double_quotes=codes (DEC-10 Prolog, ISO, SWI before 7); the program sets the flag, as
% GOAL-PROLOG-100's superset ruling has a program set a dialect flag (it is SCRIP's default; swipl 7 reads "..." as a string).
:- set_prolog_flag(double_quotes, codes).
rot13(Str, SR) :-
	maplist(rot, Str, Str1),
	string_to_list(SR, Str1).

rot(C, C1) :-
	(   member(C, "abcdefghijklmABCDEFGHIJKLM") -> C1 is C+13;
	    (	member(C, "nopqrstuvwxyzNOPQRSTUVWXYZ") -> C1 is C-13; C1 = C)).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines rot13/2 and never calls it; written for code lists (member/2 over "..."), so the flag is set at its head and the driver prints rot13 of a sample line.
:- initialization((rot13("Hello, World!", R), writeln(R))).
