% abs/1, sign/1, max/2, min/2
main :-
    A is abs(-7),      write(A), nl,
    B is abs(7),       write(B), nl,
    C is sign(-5),     write(C), nl,
    D is sign(0),      write(D), nl,
    E is sign(3),      write(E), nl,
    F is max(3, 7),    write(F), nl,
    G is min(3, 7),    write(G), nl.
