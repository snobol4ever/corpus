%-------------------------------------------------------------- 1 rung13_assertz_assertz_atom
:- assertz(color(red)).
:- assertz(color(green)).
:- assertz(color(blue)).

main :-
    color(X),
    write(X), nl,
    fail.
main.
