n(L) :- \+ ( member(X, L), X > 2 ), write(none_over_2), nl.
n(_) :- write(some_over_2), nl.
main :- n([1, 2]), n([1, 3]), write(done), nl.
:- initialization(main).
