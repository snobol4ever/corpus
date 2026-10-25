:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
:- table a/2, b/2, c/2.

tw :- tw1; tw2; tw3; true.

tw1 :- a(1,Y),write(a(Y)),nl,fail.

tw2 :- b(1,Y),write(b(Y)),nl,fail.

tw3 :- c(1,Y),write(c(Y)),nl,fail.

a(X,Y) :- p(X,Y).
a(X,Y) :- a(X,Z),a(Z,Y).

c(X,Y) :- p(X,Y).
c(X,Y) :- c(X,Z),p(Z,Y).

b(X,Y) :- p(X,Y).
b(X,Y) :- b(X,Z),p(Z,Y).

p(1,2).
p(1,7).
p(7,8).
p(8,7).
p(8,9).
p(8,10).
p(2,3).
p(3,4).
p(4,5).
p(4,1).
p(5,1).
p(1,1).

% DRIVER (appended by the vendoring, CEO-700): XSB basic_tests/test.sh runs gentest.sh thstr13 "tw."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((tw))).
