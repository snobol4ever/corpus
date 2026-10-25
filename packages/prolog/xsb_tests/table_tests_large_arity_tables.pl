:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
:- import numbervars/1 from num_vars.

:- table subg_term/1.
subg_term(_X).

% panics w. PDL list at 50000.
:- table ans_term/1.
ans_term(X):- functor(X,f,5000),numbervars(X).

:- table ans_term_v/1.
ans_term_v(X):- functor(X,f,50000).

test:- test_tab_subg_term,fail.
test:- test_tab_ans_term,fail.
test:- test_tab_ans_term,fail.
test.

test_tab_subg_term:- functor(T,f,5000),numbervars(T),subg_term(T),fail.
test_tab_subg_term:- get_residual(subg_term(X),_),functor(X,F,A),writeln(test_subg_term(F/A)).

test_tab_ans_term:- ans_term(_T),write(tabling_done),fail.
test_tab_ans_term:- get_residual(ans_term(X),_),functor(X,F,A),writeln(test_ans_term(F/A)).

test_tab_ans_term_v:- ans_term_v(_T),fail.
test_tab_ans_term_v:- get_residual(ans_term_v(X),_),functor(X,F,A),writeln(test_ans_term(F/A)).


% DRIVER (appended by the vendoring, CEO-700): XSB table_tests/test.sh runs gentest.sh large_arity_tables "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
