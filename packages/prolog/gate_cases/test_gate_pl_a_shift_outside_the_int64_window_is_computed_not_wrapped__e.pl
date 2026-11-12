:- initialization(main).
main :-
    A is 123456789012345678901234567890 /\ 24, write(a(A)), nl,
    B is 123456789012345678901234567890 \/ 1, write(b(B)), nl,
    C is 123456789012345678901234567890 xor 1, write(c(C)), nl,
    D is gcd(123456789012345678901234567890, 24), write(d(D)), nl,
    E is 123456789012345678901234567890 // 10, write(e(E)), nl,
    halt.
