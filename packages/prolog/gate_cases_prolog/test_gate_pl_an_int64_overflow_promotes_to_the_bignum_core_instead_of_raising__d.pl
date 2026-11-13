:- initialization(main).
main :- X = -9223372036854775808,
    A is sign(X), write(a(A)), nl,
    B is X + 1, write(b(B)), nl,
    ( X < 0 -> write(c(yes)) ; write(c(no)) ), nl,
    halt.
