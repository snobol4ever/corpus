:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does

:- import xsb_error_get_tag/2 from error_handler.

%test:-
%	test_fail,write('fail succeeded!').
test:- 
     catch(test_error,E,(xsb_error_get_tag(E,T),writeln(error(T)))).

%test_fail:- 
%	abolish_all_tables,
%	set_prolog_flag(max_table_subgoal_size,4),
%	set_prolog_flag(max_table_subgoal_size_action,failure),
%	p(_X).

test_error:- 
	abolish_all_tables,
	set_prolog_flag(max_table_subgoal_size,4),
	set_prolog_flag(max_table_subgoal_size_action,error),
	p(_X).

:- table p/1.
p(X):- p(f(X)).





% DRIVER (appended by the vendoring, CEO-700): XSB table_tests/test.sh runs gentest.sh test_calldepth "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
