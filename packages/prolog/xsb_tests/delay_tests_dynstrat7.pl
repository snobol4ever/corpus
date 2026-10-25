:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
%------------------------------------------------------------------------
% Program that is dynamically stratified but not dynamically stratified
% from left-to-right.  It causes a seg fault.
%
% Both negative and positive simplification is needed (Model = {~p,q}).
%------------------------------------------------------------------------

:- auto_table.

p :- tnot(q), p.

q :- tnot(q), p.
q :- tnot(p).

%------------------------------------------------------------------------

test :- p, fail.
test :- ( p ->	( tnot(p) -> writeln('p. p is undefined')
		; writeln('p. p is true') )
	; writeln('p. p is false (OK)') ),
        ( q ->  ( tnot(q) -> writeln('p. q is undefined')
		; writeln('p. q is true (OK)') )
	; writeln('p. q is false') ),
	abolish_all_tables, fail.
test :- q, fail.
test :- ( p ->	( tnot(p) -> writeln('q. p is undefined')
		; writeln('q. p is true') )
	; writeln('q. p is false (OK)') ),
        ( q ->  ( tnot(q) -> writeln('q. q is undefined')
		; writeln('q. q is true (OK)') )
	; writeln('q. q is false') ).


% DRIVER (appended by the vendoring, CEO-700): XSB delay_tests/test.sh runs gentest.sh dynstrat7 "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
