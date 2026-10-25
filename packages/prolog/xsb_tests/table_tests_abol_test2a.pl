:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does

arc(1,2).
arc(2,3).
arc(2,4).
arc(4,1).

:- table upath/2.

upath(X,Y) :- arc(X,Y).
upath(X,Y) :- upath(X,Z), arc(Z,Y).

:- import mpath/2 from abol_test2_module.
:- import abolish_module_tables/1 from tables.

test:- upath(1,_),fail.
test:- mpath(1,_),fail.
test:- mpath(1,_X),abolish_module_tables(abol_test2_module),fail.
test:- abolish_module_tables(abol_test2_module),fail.
test:- upath(1,_),abolish_module_tables(usermod),fail.
test:- get_residual(upath(1,Y),_),writeln(answer(u(a,Y))),fail.
test:- get_residual(mpath(1,Y),_),writeln(answer(m(a,Y))),fail.
test:- gc_tables(N),write(remaining(N)),fail.
test.

% DRIVER (appended by the vendoring, CEO-700): XSB table_tests/test.sh runs gentest.sh abol_test2a "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
