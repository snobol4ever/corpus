:- initialization(main).
last([_|_], mine).
main :- last([1,2,3], L), write(L), nl.
