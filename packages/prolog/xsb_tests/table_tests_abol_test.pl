:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
%-------------------------------------------------------------------------
% Created by Kostis Sagonas to test the basic functionality of tabling
% built-in predicates abolish_table_pred/1.
%-------------------------------------------------------------------------

:- import numbervars/1 from num_vars.
:- import get_calls/3, abolish_table_pred/1, abolish_table_call/1 from tables.

arc(1,2).
arc(2,3).
arc(2,4).
arc(4,1).

:- table path/2.

path(X,Y) :- arc(X,Y).
path(X,Y) :- path(X,Z), arc(Z,Y).

% test case with no calls first
test :- abolish_table_pred(path(_,_)), fail.
% create completed tables
test :- path(_X,_Y), fail.
test :- path(1,_), fail.
test :- path(1,4), fail.
test :- path(_X,4), fail.
% inspect these tables while selecively deleting some of them
test :- print(1,0), fail.
% STUFF FOR abolish_table_call/1 to be added here
% test :- print(1,1), fail.
test :- abolish_table_pred(path/2), fail.
test :- print(1,2), fail.
% create some more and test the other mode of calling
test :- path(1,_), fail.
test :- path(1,4), fail.
test :- print(2,0), fail.
% STUFF FOR abolish_table_call/1 to be added here
% test :- print(2,1), fail.
test :- abolish_table_pred(path(_,_)), fail.
test :- print(2,2), fail.
test.

print(N,M) :-
	get_calls(path(X,Y),_C,_R),
	write(N), write('.'), write(M), write(' '),
	numbervars(path(X,Y)), writeln(path(X,Y)),
	fail.
print(_,_).

% DRIVER (appended by the vendoring, CEO-700): XSB table_tests/test.sh runs gentest.sh abol_test "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
