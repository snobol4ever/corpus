:- initialization(main).
main :-
    A is (1 << 100) >> 100, ( A == 1 -> write(a(round_trips)) ; write(a(A)) ), nl,
    B is (123456789012345678901234567890 << 37) >> 37,
    ( B == 123456789012345678901234567890 -> write(b(round_trips)) ; write(b(B)) ), nl,
    C is (1 << 100), D is C >> 99, write(c(D)), nl,
    E is 0 << 1000, write(e(E)), nl,
    halt.
