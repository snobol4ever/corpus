s(X, R) :- ( member(X, [1, 2, 3]) *-> R = yes(X) ; R = no ).
main :- findall(R, s(_, R), L), write(L), nl, s(9, R2), write(R2), nl.
:- initialization(main).
