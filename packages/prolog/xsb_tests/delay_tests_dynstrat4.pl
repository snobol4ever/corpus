:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
%--------------------------------------------------------------
% Program that requires a fair amount of simplification (only
% negative though).  Its well-founded model is two valued:
%	T = {b(1), c, e(2)}
%	F = {a, b(2), d}
%--------------------------------------------------------------

:- table a/0, b/1, c/0, d/0, e/1.

a :- b(_), d.

b(X) :- tnot(c), e(X).
b(1).

c :- tnot(a).

d :- fail.

e(2).

%--------------------------------------------------------------

:- import get_residual/2 from tables.

test :- a, fail.
test :-
	( a -> writeln('a is true') ; writeln('a is false (OK)') ),
	( c ->
	    ( tnot(c) -> writeln('c is undefined') ; writeln('c is true (OK)') )
	; writeln('c is false')
	),
	( d -> writeln('d is true') ; writeln('d is false (OK)') ), fail.
test :- C = b(_), get_residual(C, L), write(C),
	( L == [] -> writeln(' is true (OK)') ; writeln(' is undefined') ),
	fail.
test.

%--------------------------------------------------------------


% DRIVER (appended by the vendoring, CEO-700): XSB delay_tests/test.sh runs gentest.sh dynstrat4 "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
