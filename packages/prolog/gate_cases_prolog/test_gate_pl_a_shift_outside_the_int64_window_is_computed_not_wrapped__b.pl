:- initialization(main).
main :-
    A is 1 << 64, write(a(A)), nl,
    B is 1 << 63, write(b(B)), nl,
    C is 3 << 62, write(c(C)), nl,
    D is -1 << 70, write(d(D)), nl,
    halt.
