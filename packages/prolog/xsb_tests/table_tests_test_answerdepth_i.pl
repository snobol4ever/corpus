:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does

:- import close_open_tables/1 from machine.
:- import xsb_error_get_tag/2 from error_handler.

%test:- test_failure,fail.
%test:-  p(7,Y),writeln(on_failure(p(7,Y))),fail.
test:- catch(test_error,E,(xsb_error_get_tag(E,X),writeln(error_caught(X)))),fail.
test:- close_open_tables(non_memory_error), fail.
test.

test_failure:- 
	abolish_all_tables,
	set_prolog_flag(max_table_answer_size_action,failure),
	p(7,_Y).

test_error:- 
	abolish_all_tables,
	set_prolog_flag(max_table_answer_size_action,error),
	p([4,3],_Y).

:- table p/2 as answer_abstract(4).
p(Y,f(X)):- p(Y,X).
p(_,a).

% not testing because warnings can't be compared as they use variable addresses.

test_warn:- 
	abolish_all_tables,
	set_prolog_flag(max_table_answer_size_action,warning),
	p_w([1,a],_X).

:- table p_w/2 as answer_abstract(4).
p_w(_Y,f(f(f(f(f(_X)))))).
p_w(_,a).

% DRIVER (appended by the vendoring, CEO-700): XSB table_tests/test.sh runs gentest.sh test_answerdepth_i "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0.
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), forall(member(X, L), (write(X), nl)).
:- initialization(xsb_sorted_output((test))).
