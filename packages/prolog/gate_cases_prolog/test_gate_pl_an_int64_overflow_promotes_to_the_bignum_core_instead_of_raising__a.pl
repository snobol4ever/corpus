:- initialization(main).
main :- X = -9223372036854775808,
    A is abs(X), write(a(A)), nl,
    B is -(X), write(b(B)), nl,
    C is X * -1, write(c(C)), nl,
    D is X // -1, write(d(D)), nl,
    E is 0 - X, write(e(E)), nl,
    halt.
