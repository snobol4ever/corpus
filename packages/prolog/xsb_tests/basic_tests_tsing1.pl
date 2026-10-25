:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
:- table a/2.

tw :- a(X,Y),write(X),write(' '),write(Y),write('   '),fail.
tw.	

a(X,Y) :- p(X,Y) ; a(X,Z),p(Z,Y).

p(1,2).
p(2,3).
p(3,4).
p(4,5).
p(5,1).

% DRIVER (appended by the vendoring, CEO-700): XSB basic_tests/test.sh runs gentest.sh tsing1 "a(X,Y),write(X),write(' '),write(Y),nl,fail."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((a(X,Y),write(X),write(' '),write(Y),nl,fail))).
