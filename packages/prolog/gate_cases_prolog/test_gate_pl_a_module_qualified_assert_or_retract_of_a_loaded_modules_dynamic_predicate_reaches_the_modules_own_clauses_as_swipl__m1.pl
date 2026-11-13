:- module('ia.pl', [tirage/1, cnt/1, hasr/1]).
:- dynamic guess/2.
:- dynamic rr/1.
tirage(L) :- ( bagof([P, R], guess(P, R), L) -> true ; L = none ).
cnt(N) :- findall(x, guess(_, _), L), length(L, N).
hasr(X) :- ( rr(X) -> true ; fail ).
