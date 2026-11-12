:- module(u, [bar/1, helper/1]).
bar(2).
bar(3).
helper(X) :- bar(X).
