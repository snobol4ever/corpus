t7 :- a(x), b(y).
a(_). b(_).
main :- clause(user:t7, B), writeq(B), nl.
:- initialization(main).
