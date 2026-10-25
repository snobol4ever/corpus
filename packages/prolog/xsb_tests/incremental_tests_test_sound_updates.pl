:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does

/* This is a rewrite of a test constructed for eager incremental
tabling, so its name is perhaps misleading. It now tests incr_invalid_subgoals/1.  */

:- dynamic p/1 as incremental.
:- dynamic q/1 as incremental.

%:- import incr_invalid_subgoals/1, incr_assert/1 from increval.
:- import incr_assert/1 from increval.
:- import numbervars/1 from num_vars.

incr_invalid_subgoals(List):-
    findall(Term,subgoal_property(Term,[incremental,invalid]),List1),
    sort(List1,List).

test:- test_1,fail.
test:- abolish_all_tables,fail.
test:- incr_invalid_subgoals(Y),numbervars(Y),writeln(test_abol_affected(Y)),fail.
test:- test_2,fail.
test.

test_1:- t_inc_5(_X),fail.
test_1:- %t_inc_5(_X),
         incr_assert(p(a)),incr_invalid_subgoals(Y),
	 numbervars(test_1_affected(Y)),writeln(test_1_affected(Y)),!.

test_2:- t_inc_6(_X),	 fail.
test_2:- %t_inc_4(_X),
         incr_assert(q(b)),incr_invalid_subgoals(Y),
	 numbervars(test_2_affected(Y)),writeln(test_2_affected(Y)),!.

:- table t_inc_1/1,t_inc_2/1,t_inc_3/1,t_inc_4/1,t_inc_5/1 as incremental.
t_inc_1(X):- p(X).
t_inc_2(X):- q(X). 
t_inc_3(X):- t_inc_1(X). 
t_inc_4(X):- t_inc_3(X). 
t_inc_5(X):- t_inc_4(X),t_inc_2(X).
t_inc_6(X):- t_inc_4(X),t_inc_2(_Y).

p(1). p(2).
q(1). q(2). q(3).

inc_7(X):- t_inc_1(X),t_inc_1(X).


% DRIVER (appended by the vendoring, CEO-700): XSB incremental_tests/test.sh runs gentest.sh test_sound_updates "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
