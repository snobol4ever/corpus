:- module(m, []).
:- initialization(main).
user:day_of_the_year(_, user_fact).
:- autoload(library(date), [day_of_the_year/2]).
direct(D) :- G = day_of_the_year(date(1952, 3, 11), D), call(G).
closure(D) :- maplist(day_of_the_year, [date(1952, 3, 11)], [D]).
gathered(L) :- findall(D, day_of_the_year(date(1952, 3, 11), D), L).
main :- direct(A), writeq(A), nl, closure(B), writeq(B), nl, gathered(C), writeq(C), nl, user:day_of_the_year(x, U), writeq(U), nl, halt.
