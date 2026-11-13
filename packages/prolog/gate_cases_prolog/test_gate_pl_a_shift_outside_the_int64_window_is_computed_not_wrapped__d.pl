:- initialization(main).
main :-
    A is 12345 >> 3, write(a(A)), nl,
    B is -12345 >> 3, write(b(B)), nl,
    C is 1 << 62, write(c(C)), nl,
    D is 1024 >> 10, write(d(D)), nl,
    E is 1 << 10, ( E == 1024 -> write(e(narrow)) ; write(e(wide)) ), nl,
    halt.
