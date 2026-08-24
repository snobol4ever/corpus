num(3).
num(1).
num(2).
num(3).
main :-
    setof(X, num(X), L),
    write(L), nl.
