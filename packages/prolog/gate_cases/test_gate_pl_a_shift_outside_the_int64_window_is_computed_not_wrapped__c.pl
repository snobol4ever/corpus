:- initialization(main).
main :-
    A is 1 << (-2), write(a(A)), nl,
    B is 16 >> (-2), write(b(B)), nl,
    C is 123456789012345678901234567890 << (-4), write(c(C)), nl,
    D is 5 >> 200, write(d(D)), nl,
    E is -5 >> 200, write(e(E)), nl,
    halt.
