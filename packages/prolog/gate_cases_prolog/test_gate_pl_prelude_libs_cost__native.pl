:- initialization(main).
main :- aggregate_all(count, member(_, [a, b]), C), aggregate_all(sum(X), member(X, [1, 2]), S), write(C-S), nl.
