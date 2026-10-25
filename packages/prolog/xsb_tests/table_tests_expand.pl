:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
:- [exec].
:- [kalah_ox].
%:- import start_forest_view/1 from tables.
%?- start_forest_view(userout).

% Don't abstract -- no finite model.
?- set_prolog_flag(max_table_subgoal_size,200000).
?- set_prolog_flag(max_table_subgoal_size_action,error).
test :- exec,fail.

% DRIVER (appended by the vendoring, CEO-700): XSB table_tests/test.sh runs gentest.sh expand "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
