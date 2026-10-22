:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
%------------------------------------------------------------------------
% Program that I thought it gave wrong results.
%
% Model T = {}, F = {p,q,r,s}.
%------------------------------------------------------------------------

:- table p/0, q/0, r/0, s/0.

p :- tnot(q), r.
p :- q.

s :- tnot(r), q.

q :- tnot(s), p.

r :- fail.

%------------------------------------------------------------------------

test :- s, fail.
test :- ( p ->	( tnot(p) -> writeln('p is undefined')
		; writeln('p is true') )
	; writeln('p is false (OK)') ),
        ( q ->  ( tnot(q) -> writeln('q is undefined')
		; writeln('q is true') )
	; writeln('q is false (OK)') ),
	( r ->  ( tnot(r) -> writeln('t is undefined')
		; writeln('r is true') )
	; writeln('r is false (OK)') ),
	( s ->  ( tnot(s) -> writeln('s is undefined')
		; writeln('s is true') )
	; writeln('s is false (OK)') ).

% DRIVER (appended by the vendoring, CEO-700): XSB delay_tests/test.sh runs gentest.sh fr26 "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
