test :- a, fail.
test :-
	( a -> writeln('a is true') ; writeln('a is false') ),
	( b -> writeln('b is true') ; writeln('b is false') ),
	( c -> writeln('c is true') ; writeln('c is false') ),
	( d -> writeln('d is true') ; writeln('d is false') ).

%--------------------------------------------------------------

:- table a/0, b/0, c/0, d/0.

a :- b, tnot(c).

b :- d.
b.

c :- tnot(d).

d :- b, fail.


% DRIVER (appended by the vendoring, CEO-700): XSB neg_tests/test.sh runs gentest.sh lmod2 "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
