%-------------------------------------------------------------- 1 rung44_setof_empty_fail
num(1).
num(2).
main :-
    ( setof(X, fail, L) -> write(L) ; write(no_setof) ), nl,
    ( bagof(X, (num(X), X > 5), B) -> write(B) ; write(no_bagof) ), nl,
    findall(Y, fail, F),
    write(F), nl,
    keysort([b-2, a-1, b-1, a-9], K),
    write(K), nl.
