:- module(m, []).
:- initialization(main).
user:day_of_the_year(_, user_fact).
user:last(_, user_fact).
:- autoload(library(date), [day_of_the_year/2]).
:- use_module(library(lists), [last/2]).
plain(D) :- day_of_the_year(date(1952, 3, 11), D).
imported(L) :- last([1, 2, 3], L).
qualified(L) :- lists:last([4, 5], L).
main :- plain(A), writeq(A), nl, imported(C), writeq(C), nl, qualified(E), writeq(E), nl, user:last([1], U), writeq(U), nl, halt.
