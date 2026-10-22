:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
%------------------------------------------------------------------------
% Program that causes a seg fault.
%
% No simplification is possible (Model T = {r}, F = {p,q}, U = {}).
%------------------------------------------------------------------------

:- auto_table.

p :- tnot(q),tnot(r),p.

q :- tnot(q),tnot(r),p.

r :- tnot(p),tnot(q),r.
r :- tnot(q). 

%------------------------------------------------------------------------

test :- q, fail.
test :- ( p ->	( tnot(p) -> writeln('p is undefined')
		; writeln('p is true') )
	; writeln('p is false (OK)') ),
        ( q ->  ( tnot(q) -> writeln('q is undefined')
		; writeln('q is true') )
	; writeln('q is false (OK)') ),
        ( r ->  ( tnot(r) -> writeln('r is undefined')
		; writeln('r is true (OK)') )
	; writeln('r is false') ).

% DRIVER (appended by the vendoring, CEO-700): XSB delay_tests/test.sh runs gentest.sh seg3 "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
