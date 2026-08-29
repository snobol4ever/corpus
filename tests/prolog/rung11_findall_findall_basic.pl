%------------------------------------------------ 1 rung11_findall_findall_basic
:- initialization(main).
color(red). color(green). color(blue).
main :-
    findall(X, color(X), Xs),
    write(Xs), nl.
