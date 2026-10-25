:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
:- import put_attr/1 from machine.
:- import incr_assert/1 from increval.
:- import numbervars/1 from num_vars.
:- import xsb_error_get_message/2,xsb_error_get_tag/2,xsb_error_get_goal/2,xsb_error_get_goalatom/2 from error_handler.

test:- catch(t1(_X),E,(xsb_error_get_message(E,M),writeln(message(M)))),fail.
test:- catch(t1(_X),E,(xsb_error_get_tag(E,M),writeln(tag(M)))),fail.
test:- catch(t1(_X),E,(xsb_error_get_goal(E,M),numbervars(M),writeln(goal(M)))),fail.
test:- catch(t1(_X),E,(xsb_error_get_goalatom(E,M),writeln(goalatom(M)))),fail.
test.


:- table t1/1 as subsumptive,incremental.
t1(X):- d(X),Y is X + 1,incr_assert(d(Y)).

:- dynamic d/1 as incremental.
d(1).


:- table p/1 as subsumptive.
p(_X).

test_1:- put_attr(X, ti, v(1)),p(X).



% DRIVER (appended by the vendoring, CEO-700): XSB incremental_tests/stest.sh runs gentest.sh s_test_table_errors "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
