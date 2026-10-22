:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
%------------------------------------------------------------------------
% Program for which ANSWER COMPLETION is needed.  I am not sure about
% the answers (probably everything is undefined).
%------------------------------------------------------------------------

:- table p/0, s/0, r/0.

p :- p.
p :- tnot(s).

s :- tnot(r).

r :- tnot(s), r.
r :- p.

%------------------------------------------------------------------------

test :- p, fail.
test :-
	( p ->
	    ( tnot(p) -> writeln('p is undefined (OK)') ; writeln('p is true') )
	; writeln('p is false') ),
	( s ->
	    ( tnot(s) -> writeln('s is undefined (OK)') ; writeln('s is true') )
	; writeln('s is false') ),
	( r ->
	    ( tnot(r) -> writeln('r is undefined (OK)') ; writeln('r is true') )
	; writeln('r is false') ).

% DRIVER (appended by the vendoring, CEO-700): XSB delay_tests/test.sh runs gentest.sh weidong5 "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
