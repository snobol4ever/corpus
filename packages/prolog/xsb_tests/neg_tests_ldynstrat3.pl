:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
:- import get_returns_for_call/2 from tables.

test :- a, fail.
test :-
	( a -> writeln('a is true') ; writeln('a is false') ),
	( c -> writeln('c is true') ; writeln('c is false') ),
	( d -> writeln('d is true') ; writeln('d is false') ),
	( ob -> writeln('ob is true') ; writeln('ob is false') ), fail.
test :- get_returns_for_call(b(_), Return),
	write(Return), writeln(' is true'), fail.
test.

%--------------------------------------------------------------

:- table a/0, ob/0, b/1, c/0, d/0, e/1.

a :- ob, d.

ob :- b(_).

b(X) :- c, e(X), X =:= 1.
b(1).

c :- tnot(a).

d :- fail.

e(2).

% DRIVER (appended by the vendoring, CEO-700): XSB neg_tests/test.sh runs gentest.sh ldynstrat3 "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
