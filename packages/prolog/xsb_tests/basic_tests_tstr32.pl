:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
:- import numbervars/3 from num_vars.

:- table(a/2).

/* ?- a(Q,W), a(W,W), a(f(F),f(F)) , a([F],[F]) */

testcombo:- 
	(tw(_Q,_W),fail ; tw(A,A),fail ; tw(f(F),f(F)),fail ; tw([F],[F]),fail).

tw(Q,W) :- a(Q,W),T = a(Q,W),numbervars(T,0,_T1),writeq(T),nl.

a(X,Y) :- p(Z,Y),a(X,Z).
a(X,Y) :- p(X,Y).

p(f(1),f(2)).
p(f(2),f(3)).
p(f(3),f(1)).

p([1],[2]).
p([2],[3]).
p([3],[1]).

p(f([1]),f([2])).
p(f([2]),f([3])).
p(f([3]),f([1])).

p([f(1)],[f(2)]).
p([f(2)],[f(3)]).
p([f(3)],[f(1)]).


% DRIVER (appended by the vendoring, CEO-700): XSB basic_tests/test.sh runs gentest.sh tstr32 "testcombo."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, '\n', '', L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((testcombo))).
