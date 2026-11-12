:- module(mcm, []).
t7 :- a(x), b(y).
a(_). b(_).
main :- clause(t7, B1), writeq(B1), nl,
        clause(mcm:t7, B2), writeq(B2), nl,
        clause(t7, B3, R), writeq(B3), nl,
        clause(H4, B4, R), writeq(H4-B4), nl,
        ( clause(mcm:H5, B5, R) -> writeq(H5-B5) ; writeq(fail) ), nl.
:- initialization(main).
