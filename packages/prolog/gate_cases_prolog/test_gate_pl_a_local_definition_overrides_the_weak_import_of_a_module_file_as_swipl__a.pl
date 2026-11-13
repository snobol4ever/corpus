:- use_module(u).
bar(1).
main :- findall(X, bar(X), L), write(local(L)), nl, findall(Y, helper(Y), M), write(helper(M)), nl.
:- initialization(main).
