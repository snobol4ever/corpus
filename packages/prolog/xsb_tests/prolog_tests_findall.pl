:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
% This tests findall/3 and heap expansion: should
% better be run with default global/local stack size.

:- import length/2, select/3 from basics.

perms([], []).
perms(S, [X|Temp]) :- select(X, S, T), perms(T, Temp).

test :- findall(Elem,perms([1,2,3,4,5,6,7,8],Elem),L), length(L,N), writeln(N).


% DRIVER (appended by the vendoring, CEO-700): XSB prolog_tests/test.sh runs gentest.sh findall "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
