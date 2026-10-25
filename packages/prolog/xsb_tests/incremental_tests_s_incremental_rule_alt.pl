:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does

:- import incr_assert/1,incr_retract/1 from increval.

test :- test_seq.

test_seq:- t(X),write(incr(first_t(X))),writeln('.'),fail.
test_seq:- incr_assert((p(X):- f(1,X))),fail.
test_seq:- t(X),write(incr(second_t(X))),writeln('.'),fail.
test_seq:- incr_retract((p(X):- f(1,X))),fail.
test_seq:- t(X),write(incr(third_t(X))),writeln('.'),fail.
test_seq:- incr_retract(p(1)),fail.
test_seq:- t(X),write(incr(fourth_t(X))),writeln('.'),fail.
test_seq:- incr_assert((p(X):- f(1,X))),fail.
test_seq:- t(X),write(incr(fifth_t(X))),writeln('.'),fail.
test_seq.

:- dynamic p/1 as incremental.

:- table t/1 as subsumptive, incremental.
t(X):- p(X).

f(1,2).
f(1,3).
f(1,4).
f(2,5).
f(2,6).

% DRIVER (appended by the vendoring, CEO-700): XSB incremental_tests/stest.sh runs gentest.sh s_incremental_rule_alt "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
