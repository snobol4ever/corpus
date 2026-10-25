:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
test :- a, fail.
test :-
	( a -> writeln('a is true') ; writeln('a is false') ),
	( b -> writeln('b is true') ; writeln('b is false') ),
	( c -> writeln('c is true') ; writeln('c is false') ),
	( d -> writeln('d is true') ; writeln('d is false') ),
	( e -> writeln('e is true') ; writeln('e is false') ).

%--------------------------------------------------------------

:- table a/0, b/0, c/0, d/0, e/0.

a :- b, c, tnot(d).

b :- e.
b.

c :- d.
c.

d :- tnot(e).

e :- b, fail.


% DRIVER (appended by the vendoring, CEO-700): XSB neg_tests/test.sh runs gentest.sh lmod4 "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
