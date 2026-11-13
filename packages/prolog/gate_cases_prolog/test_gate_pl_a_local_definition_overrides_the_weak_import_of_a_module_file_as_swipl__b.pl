:- use_module(u).
main :- findall(X, bar(X), L), write(imp(L)), nl, findall(Y, helper(Y), M), write(helper(M)), nl.
:- initialization(main).
