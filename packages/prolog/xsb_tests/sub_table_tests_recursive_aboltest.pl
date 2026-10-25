:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does

% stress tests correct gc of layered abolishes of the same predicate

test:- test_pred_abolish(10),
	test_subgoal_abolish(10).

test_pred_abolish(0):-!,
	abolish_table_pred(tc_lr_p/2).
test_pred_abolish(N):- 
	writeln(got_through_pred(N)),
	abolish_table_pred(tc_lr_p/2),
	(tc_lr_p(1,_),fail ; true),
	N1 is N - 1,
	test_pred_abolish(N1).

test_subgoal_abolish(0):-!,
	abolish_table_call(tc_lr_p(1,_)).
test_subgoal_abolish(N):- 
	writeln(got_through_subgoal(N)),
	abolish_table_call(tc_lr_p(1,_)),
	(tc_lr_p(1,_),fail ; true),
	N1 is N - 1,
	test_subgoal_abolish(N1).

:- table tc_lr_p/2.
tc_lr_p(X,Y):- edge(X,Y).
tc_lr_p(X,Y):- tc_lr_p(X,Z),edge(Z,Y).

edge(X,Y):- X < 100,Y is X + 1.


% DRIVER (appended by the vendoring, CEO-700): XSB sub_table_tests/stest.sh (commented out there) runs sgentest.sh recursive_aboltest "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
