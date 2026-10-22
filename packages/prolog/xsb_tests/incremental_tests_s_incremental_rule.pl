:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does

:- import incr_assert/1,incr_retract/1 from increval.

test:- test_seq.

test_seq:- t(X),write(incr(first_t(X))),writeln('.'),fail.
test_seq:- incr_assert((p(X):- f(1,X))),fail.
test_seq:- t(X),write(incr(second_t(X))),writeln('.'),fail.
test_seq:- incr_retract((p(X):- f(1,X))),fail.
test_seq:- t(X),write(incr(third_t(X))),writeln('.'),fail.
test_seq.

:- dynamic p/1 as incremental.
p(1).

:- table t/1 as subsumptive, incremental.
t(X):- p(X).

f(1,2).
f(1,3).
f(1,4).
f(2,5).
f(2,6).

% DRIVER (appended by the vendoring, CEO-700): XSB incremental_tests/stest.sh runs gentest.sh s_incremental_rule "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
