:- initialization(main).
main :-
    succ(123456789012345678901234567890, A), write(a(A)), nl,
    succ(B, 123456789012345678901234567891), write(b(B)), nl,
    plus(123456789012345678901234567890, 1, C), write(c(C)), nl,
    plus(123456789012345678901234567890, D, 987654321098765432109876543210), write(d(D)), nl,
    plus(E, 1, 123456789012345678901234567890), write(e(E)), nl,
    ( succ(X, 0) -> write(f(X)) ; write(f(fail)) ), nl,
    halt.
