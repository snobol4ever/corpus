:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
:- import start_forest_view/1 from tables.
:- import numbervars/1 from num_vars.

%?- start_forest_view(userout).
%:- set_prolog_flag(alt_semantics,weak_cs).
:- set_prolog_flag(unknown,undefined).

test:- test1,fail.
test:- abolish_table_pred(t1/1),fail.
test:- test1_1,fail.
test:- test2,fail.
test:- test3,fail.
test:- test3_1,fail.
test:- test4,fail.
test:- abolish_table_pred(t4/1),fail.
test:- test4_1,fail.
test:- test5,fail.
test:- test6,fail.
test:- test7,fail.
test.

test1:- test(t1(a)).
test1_1:- test(t1(_X)).
test2:- test(t2(_X)).
test3:- test(t3(a)).
test3_1:- test(t3(_X)).
test4:- test(t4(_X)).
test4_1:- test(t4(a)).
test5:- test(t5(a)).
test6:- test(t6(_X)).
test7:- test(t7(_X)).

:- table t1/1 as compl_semantics.
t1(X):- t1(X).
:- table t2/1 as compl_semantics.
t2(X):- t2(X),p(X).
:- table t3/1 as compl_semantics.
t3(X):- t3(X),t3(X).

:- table t4/1 as compl_semantics.
t4(X):- t4(X),tnot(t4(X)).
:- table t5/1 as compl_semantics.
t5(X):- t5(X),tnot(t5(X)),t5(X).

:- table t6/1 as compl_semantics.
t6(X):- p(X).
t6(X):- t6(X).

p(a).

:- table n1/1 as compl_semantics.
n1(X):- tnot(n1(X)).

:- table t7/1 as compl_semantics.
t7(X):- t7(X),t7(X),t7(X).

test(Goal):- functor(Goal,F,A),abolish_table_pred(F/A),Goal,fail.
test(Goal):- copy_term(Goal,G),write_residuals(G,Goal).

write_residuals(G,Goal):- get_residual(Goal,Res),numbervars(answer(G,Goal,Res)),writeln(answer(G,Goal,Res)),fail.
write_residuals(_,_):- writeln('-----------------------').





% DRIVER (appended by the vendoring, CEO-700): XSB table_tests/test.sh runs gentest.sh test_wcs_1 "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
