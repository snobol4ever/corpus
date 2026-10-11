%------------------------------------------------------------------------
% Program for which ANSWER COMPLETION is needed (according to Weidong).
%------------------------------------------------------------------------

:- table p/0, s/0, r/0.

p :- p.
p :- tnot(s).

s :- tnot(r).

r :- tnot(s), r.

%------------------------------------------------------------------------

test :- p, fail.
test :-
	( p ->
	    ( tnot(p) -> writeln('p is undefined') ; writeln('p is true') )
	; writeln('p is false (OK)') ),
	( s ->
	    ( tnot(s) -> writeln('s is undefined') ; writeln('s is true (OK)') )
	; writeln('s is false') ),
	( r ->
	    ( tnot(r) -> writeln('r is undefined') ; writeln('r is true') )
	; writeln('r is false (OK)') ).

% DRIVER (appended by the vendoring, CEO-700): XSB delay_tests/test.sh runs gentest.sh weidong2 "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
