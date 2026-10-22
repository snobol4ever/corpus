:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
%------------------------------------------------------------------------
% Program that causes a seg fault (while performing simplification).
%
% Both types of negative simplification are possible.
% Model T = {q}, F = {p,r}, U = {}.
%------------------------------------------------------------------------

:- auto_table.

p :- tnot(q), p.

q :- tnot(p), q.
q :- tnot(r).

r :- tnot(q), p.

%------------------------------------------------------------------------

test :- r, fail.
test :- ( p ->	( tnot(p) -> writeln('p is undefined')
		; writeln('p is true') )
	; writeln('p is false (OK)') ),
        ( q ->  ( tnot(q) -> writeln('q is undefined')
		; writeln('q is true (OK)') )
	; writeln('q is false') ),
        ( r ->  ( tnot(r) -> writeln('r is undefined')
		; writeln('r is true') )
	; writeln('r is false (OK)') ).

% DRIVER (appended by the vendoring, CEO-700): XSB delay_tests/test.sh runs gentest.sh seg2 "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
