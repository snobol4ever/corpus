:- use_module(u).
:- multifile bar/1.
bar(1).
main :- findall(X, bar(X), L), write(mf(L)), nl.
:- initialization(main).
