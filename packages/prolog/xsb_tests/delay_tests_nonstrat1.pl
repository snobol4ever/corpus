test :- a, fail.
test :- b, fail.
test :- c, fail.
test :-
	( a ->
	    ( tnot(a) -> writeln('a is undefined (OK)') ; writeln('a is true') )
	; writeln('a is false') ),
	( b ->
	    ( tnot(b) -> writeln('b is undefined (OK)') ; writeln('b is true') )
	; writeln('b is false') ),
	( c ->
	    ( tnot(c) -> writeln('c is undefined (OK)') ; writeln('c is true') )
	; writeln('c is false') ).

%--------------------------------------------------------------
% Example of a program that is non-stratified.
% Its well-founded model makes everything undefined.
% It has two stable models {a,b} and {c}
%--------------------------------------------------------------

:- table a/0, b/0, c/0. %%, d/0.

a :- tnot(c).

b :- a.

c :- tnot(b).


% DRIVER (appended by the vendoring, CEO-700): XSB delay_tests/test.sh runs gentest.sh nonstrat1 "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
