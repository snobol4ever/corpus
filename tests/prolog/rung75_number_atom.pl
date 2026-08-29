%---------------------------------------------------------- 1 rung75_number_atom
:- initialization(main).
main :-
    number_atom(123, A1), writeq(A1), nl,
    number_atom(-42, A2), writeq(A2), nl,
    number_atom(0, A3), writeq(A3), nl,
    number_atom(N1, '456'), ( integer(N1) -> writeq(N1-int) ; writeq(N1-other) ), nl,
    number_atom(N2, '-7'), writeq(N2), nl,
    number_atom(N3, '2.5'), ( float(N3) -> writeq(N3-flt) ; writeq(N3-other) ), nl,
    number_atom(2.5, A4), writeq(A4), nl,
    ( number_atom(789, '789') -> writeq(roundtrip_ok) ; writeq(roundtrip_fail) ), nl,
    write(done), nl,
    halt.
