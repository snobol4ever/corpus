:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
:- import close_open_tables/1 from machine.

?- set_prolog_flag(max_table_answer_size,25).
?- set_prolog_flag(max_table_subgoal_size,25).
?- set_prolog_flag(max_table_subgoal_size_action,error).

:- table p/1.
p(X):- X = f(X).

:- table r/1.
r(X):- make_term(100,X).

make_term(0,0):-!.
make_term(N,f(X)):-
	N1 is N - 1,
	make_term(N1,X).

test:- set_prolog_flag(unify_with_occurs_check,off),fail.
test:- catch(r(_X),error(_Type,context(_Msg,_)),writeln(caught_r)),fail.
test:- catch(p(_X),error(_Type,context(_Msg,_)),writeln(caught_p)),fail.
test:- X = f(X),catch(s(X),error(_Type,context(_Msg,_)),writeln(caught_s_1)),fail.
test:- make_term(100,X),catch(s(X),error(_Type,context(_Msg,_)),writeln(caught_s_2)),fail.
test:- close_open_tables(non_memory_error),fail.
test:- abolish_all_tables,fail.
test:- test_uwoc, fail.
test.

test_uwoc:- set_prolog_flag(unify_with_occurs_check,on),fail.
test_uwoc:- catch(r(_X),error(_Type,context(_Msg,_)),writeln(uwoc_caught_r)),fail.
test_uwoc:- catch(p(_X),error(_Type,context(_Msg,_)),writeln(uwoc_caught_p)),fail.
test_uwoc:- X = f(X),catch(s(X),error(_Type,context(_Msg,_)),writeln(uwoc_caught_s_1)),fail.
test_uwoc:- make_term(100,X),catch(s(X),error(_Type,context(_Msg,_)),writeln(uwoc_caught_s_2)),fail.

:- table s/1.
s(_).

% DRIVER (appended by the vendoring, CEO-700): XSB table_tests/test.sh runs gentest.sh test_cyclic_tabling "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
