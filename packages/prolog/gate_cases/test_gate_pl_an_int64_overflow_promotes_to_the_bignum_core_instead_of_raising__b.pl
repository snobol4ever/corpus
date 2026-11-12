:- initialization(main).
main :-
    A is 9223372036854775807 + 1, write(a(A)), nl,
    B is 9223372036854775807 * 9223372036854775807, write(b(B)), nl,
    C is -9223372036854775807 - 10, write(c(C)), nl,
    D is 4611686018427387904 * 4, write(d(D)), nl,
    halt.
