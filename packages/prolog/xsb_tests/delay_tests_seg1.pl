:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
%------------------------------------------------------------------------
% Program that causes a seg fault.
%
% No simplification is possible (Model T = {q}, F = {p}, U = {}).
%------------------------------------------------------------------------

:- auto_table.

p :- tnot(q), p.

q :- tnot(p), q.
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

% DRIVER (appended by the vendoring, CEO-700): XSB delay_tests/test.sh runs gentest.sh seg1 "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
