:- initialization(main).
main :-
    A = -9223372036854775808, write(a(A)), nl,
    B = -123456789012345678901234567890, write(b(B)), nl,
    C is -123456789012345678901234567890 * 2, write(c(C)), nl,
    ( integer(-9223372036854775808) -> write(d(yes)) ; write(d(no)) ), nl,
    E is -9223372036854775808, write(e(E)), nl,
    halt.
