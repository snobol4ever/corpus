% ISO §8.7 — truncate/round/ceiling/floor
main :-
    A is truncate(3.7),  write(A), nl,
    B is truncate(-3.7), write(B), nl,
    C is round(3.5),     write(C), nl,
    D is round(4.5),     write(D), nl,
    E is ceiling(3.2),   write(E), nl,
    F is floor(3.7),     write(F), nl,
    G is floor(-3.2),    write(G), nl.
