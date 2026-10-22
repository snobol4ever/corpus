:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
%------------------------------------------------------------------------
% Program that is dynamically stratified but not dynamically stratified
% from left-to-right.  It shows that delay is necessary for the correct
% evaluation of dynamically stratified programs (the negation suspension
% transformation is not enough).
%
% Model = {s, ~p, ~q, ~r}
%------------------------------------------------------------------------

:- table s/0, p/0, q/0, r/0.

s :- tnot(p), tnot(q), tnot(r).
p :- tnot(q), r.
q :- tnot(r), p.
r :- tnot(p), q.

%------------------------------------------------------------------------

test :- p, fail.
test :-
	( p -> writeln('p. p is true') ; writeln('p. p is false (OK)') ),
	( q -> writeln('p. q is true') ; writeln('p. q is false (OK)') ),
	( r -> writeln('p. r is true') ; writeln('p. r is false (OK)') ),
	( s ->
	    ( tnot(s) -> writeln('p. s is undefined')
	    ; writeln('p. s is true (OK)') )
	; writeln('p. s is false') ),
	abolish_all_tables, fail.
test :- s, fail.
test :-
	( p -> writeln('s. p is true') ; writeln('s. p is false (OK)') ),
	( q -> writeln('s. q is true') ; writeln('s. q is false (OK)') ),
	( r -> writeln('s. r is true') ; writeln('s. r is false (OK)') ),
	( s ->
	    ( tnot(s) -> writeln('s. s is undefined')
	    ; writeln('s. s is true (OK)') )
	; writeln('s. s is false') ),
	abolish_all_tables, fail.

% DRIVER (appended by the vendoring, CEO-700): XSB delay_tests/test.sh runs gentest.sh dynstrat2 "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
