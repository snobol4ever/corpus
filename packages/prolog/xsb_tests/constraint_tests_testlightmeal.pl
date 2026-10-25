:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
:- import {}/1 from clpr.

test:- 
       lightMeal(H, M, D),
       writeln(choices(H,M,D)),
       fail.
test.

lightMeal(H, M, D) :-
   {I >= 0,J >= 0,K >= 0},
   {I + J + K =< 10},
   horsDoeuvre(H, I),
   mainCourse(M, J),
   dessert(D, K).

horsDoeuvre(radishes, 1).	horsDoeuvre(pate, 6).

mainCourse(M, I) :- meat(M, I).
mainCourse(M, I) :- fish(M, I).

meat(beef, 5).	 meat(pork, 7).
fish(sole, 2).	 fish(tuna, 4).

dessert(fruit, 2). dessert(iceCream, 6).

% DRIVER (appended by the vendoring, CEO-700): XSB constraint_tests/test.sh runs gentest.sh testlightmeal "test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((test))).
