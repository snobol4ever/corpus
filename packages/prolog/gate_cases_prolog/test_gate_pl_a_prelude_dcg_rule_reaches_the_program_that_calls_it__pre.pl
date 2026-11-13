:- initialization(main).
main :- ( catch(phrase(utf8_codes(L), [104,195,169]), E, (writeq(E), nl, fail)) -> writeq(L) ; writeq(no) ), nl,
        ( catch(phrase(sequence(digit, Ds), [49,50]), E2, (writeq(E2), nl, fail)) -> writeq(Ds) ; writeq(no) ), nl, halt.
digit(D) --> [D].
