:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
:- table p/0, q/0, p/1, q/1.

test :-
	( p -> writeln('p is true') ; writeln('p is false') ),
	( p(0) -> writeln('p(0) is true') ; writeln('p(0) is false') ),
	( p(1) -> writeln('p(1) is true') ; writeln('p(1) is false') ).

p :- tnot(q).
q.

p(X) :- tnot(q(X)).
q(1).

% DRIVER (appended by the vendoring, CEO-700): XSB neg_tests/test.sh runs gentest.sh neg1 "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
