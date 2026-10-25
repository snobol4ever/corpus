:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
:- import numbervars/1 from num_vars.

/**/

test:- set_prolog_flag(unify_with_occurs_check,off),fail.
test:- X = f(X),output(X),fail.
test:- X = f(_Y),output(X),fail.
test:- X = [X,a],output(X),fail.
test:- X = [_Y,a],output(X),fail.
test:- X = [a,X],output(X),fail.
test:- X = f(X),ground_or_cyclic(X),writeln('ground or cyclic works'),fail.
test:- X = [a,_Y],output(X),fail.
test:- X = g(f(1,[X,a])),output(X),fail.
test:- X = g(f(1,[_Y,a])),output(X),fail.
test:- X = g(f(X)),output(X),fail.

test:- test_uwoc.
test.

test_uwoc:- set_prolog_flag(unify_with_occurs_check,on),fail.
test_uwoc:- X = f(X),output(uwoc(X)),fail.
test_uwoc:- X = f(_Y),output(uwoc(X)),fail.
test_uwoc:- X = [X,a],output(uwoc(X)),fail.
test_uwoc:- X = [_Y,a],output(uwoc(X)),fail.
test_uwoc:- X = [a,X],output(uwoc(X)),fail.
test_uwoc:- X = f(X),ground_or_cyclic(X),writeln('ground or cyclic works'),fail.
test_uwoc:- X = [a,_Y],output(uwoc(X)),fail.
test_uwoc:- X = g(f(1,[X,a])),output(uwoc(X)),fail.
test_uwoc:- X = g(f(1,[_Y,a])),output(uwoc(X)),fail.
test_uwoc:- X = g(f(X)),output(uwoc(X)),fail.

output(X):- is_cyclic(X) -> writeln(cyclic(X)) ; numbervars(X),writeln(acyclic(X)).

% DRIVER (appended by the vendoring, CEO-700): XSB prolog_tests/test.sh runs gentest.sh test_cycle "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
