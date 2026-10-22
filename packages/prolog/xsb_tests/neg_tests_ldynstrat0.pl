:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
test :- a, fail.
test :- b, fail.
test :-
	( a -> writeln('a is true') ; writeln('a is false') ),
	( b -> writeln('b is true') ; writeln('b is false') ).

%--------------------------------------------------------------

:- table a/0, b/0.

a :- tnot(b).
a.

b :- tnot(a).


% DRIVER (appended by the vendoring, CEO-700): XSB neg_tests/test.sh runs gentest.sh ldynstrat0 "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
