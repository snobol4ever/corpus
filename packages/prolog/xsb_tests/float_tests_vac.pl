:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
%---------------------------------------------------------------
% General test for floating point number manipulation.
%---------------------------------------------------------------

vac(Y/M, _, _) :-
	Y =:= 94, M > 9, !.
vac(Y/M, S, Incr) :-
	write(Y/M:S),nl,
	S2 is S + Incr,
	M1 is M + 1,
	(   M1 > 12
	->  M2 = 1, Y2 is Y + 1
	;   M2 = M1, Y2 = Y
	),
	vac(Y2/M2, S2, Incr).

test :- Incr is 20.0 / 12 * 8, vac(93/06, 0.0, Incr), fail.


% DRIVER (appended by the vendoring, CEO-700): XSB float_tests/test.sh runs gentest.sh vac "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
