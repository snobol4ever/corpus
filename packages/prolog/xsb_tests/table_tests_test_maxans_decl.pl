:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
:- import between/3 from basics.
:- import numbervars/1 from num_vars.

:- table p/2 as max_answers(5).
p(X,X):- between(1,10,X).

test:- p(_X,_Y),fail.
test:- get_residual(p(X,Y),Z),numbervars([X,Y,Z]),writeln(get_residual(p(X,Y),Z)),fail.

% DRIVER (appended by the vendoring, CEO-700): XSB table_tests/test.sh runs gentest.sh test_maxans_decl "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
