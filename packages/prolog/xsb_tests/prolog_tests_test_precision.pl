:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does

/* test of precision in the compiler.
   dont know how it will work on 64-bits. */

test:- p(X),q_yes(X),writeln(precision_ok),fail.
test:- p(X),q_no(X),writeln(precision_not_ok),fail.
test.

p(X):- X = 3.98909808080908709870987.

q_yes(X):- X = 3.98909808080908709.
q_no(X):-  X = 3.9890980808090870.

%q(X):- X = 3.9890980808090870987098.

% DRIVER (appended by the vendoring, CEO-700): XSB prolog_tests/test.sh runs gentest.sh test_precision "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
