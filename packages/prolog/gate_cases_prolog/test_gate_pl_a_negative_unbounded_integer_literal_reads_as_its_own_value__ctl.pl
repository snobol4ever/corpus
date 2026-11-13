:- initialization(main).
main :-
    F = 123456789012345678901234567890, write(f(F)), nl,
    G is -(123456789012345678901234567890), write(g(G)), nl,
    H = -42, write(h(H)), nl,
    I = -9223372036854775807, write(i(I)), nl,
    J is 2 + 3, write(j(J)), nl,
    halt.
