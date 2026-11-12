:- initialization(main).
t(A) :- ( catch(atom_number(A, N), _, fail) -> writeq(N) ; writeq(no) ), nl.
main :- forall(member(A, ['٠١٢٣٤٥٦٧٨٩', '١2', '1٢', '١٢.٣٤', '-١٢', '+١٢', '١٢e٣', '١٢.٥e-٣', '١r٣', '۱۲', '١۲', '१२', '٠x١', ' ١٢', '١_٢', '１２',
                          '1_2', '1_000_000', '-1_0', '1_2.5', '12_', '_12']), t(A)),
        number_codes(C, `٠١٢٣٤٥٦٧٨٩`), writeq(C), nl,
        number_string(S1, "-١٢.٣٤٥٦٧e٨٩"), writeq(S1), nl,
        number_string(S2, "-١٢.٣٤٥٦٧e-٨٩"), writeq(S2), nl,
        halt.
