:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does

/* Test to make sure we can find prolog_commons */

:- use_module(c_aggregate,[aggregate/3]).


p(1).
p(2).
p(3).
p(4).
p(5).

test:- aggregate(sum(X),p(X),Sum),writeln(sum(Sum)).

% DRIVER (appended by the vendoring, CEO-700): XSB prolog_tests/test.sh runs gentest.sh test_aggregates "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
