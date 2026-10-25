:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does

:- import set_arg/3 from machine.
:- import numbervars/1 from num_vars.

test:- test1, test2.

test1:-
	X = p(f(1),g(2),r([a])),
	(  set_arg(X,2,g([b])),
	   writeln(X),
	   fail
         ; writeln(X)).

test2:-
	X = p(f(Y),g(Y),r([a])),
	(  set_arg(X,2,g([b])),
	   numbervars(X),writeln(X),
	   fail
         ; numbervars(X),writeln(X)).
	   

% DRIVER (appended by the vendoring, CEO-700): XSB constraint_tests/test.sh runs gentest.sh testsetarg "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
