%--------------------------------------------------------- 1 rung58_findall_disj
:- initialization(main).
main :-
    findall(X, (X=1;X=2;X=3), La), write(La), nl,
    ( findall(Y, (Y=4;Y=5), Lb) -> write(Lb) ; write(none) ), nl,
    ( bagof(Z, (Z=6;Z=7;Z=8), Lc) -> write(Lc) ; write(none) ), nl,
    ( setof(W, (W=3;W=1;W=2;W=1), Ld) -> write(Ld) ; write(none) ), nl.
