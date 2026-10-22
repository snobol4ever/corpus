:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does

:- import subgoal_property/2 from curr_sym.
:- table t_1a/1, t_1b/1, t_2a/1, t_2b/1, t_2c/1, t_3/1 as incremental.
:- dynamic d_1/1 as incremental.

t_1a(X):- t_2a(X).
t_1a(X):- t_2b(X).
t_1a(X):- t_2c(X).

t_1b(X):- t_2a(X).
t_1b(X):- t_2b(X).
t_1b(X):- t_2c(X).

t_2a(X):- t_3(X).
t_2b(X):- t_3(X).
t_2c(X):- t_3(X).

t_3(X):- d_1(X).

d_1(1).

test:- t_1a(_),fail.
test:- t_1b(_),fail.
test:- subgoal_property(t_2a(_),Prop),writeln(Prop),fail.
test.

% DRIVER (appended by the vendoring, CEO-700): XSB table_tests/test.sh runs gentest.sh test_subgoal_property "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
