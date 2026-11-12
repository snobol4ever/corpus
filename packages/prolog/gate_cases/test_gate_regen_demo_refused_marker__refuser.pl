:- initialization(main).
main :- findall(X, member(X,[1,2]), L), write(L), nl.
