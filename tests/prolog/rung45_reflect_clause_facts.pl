:- initialization(main).
main :- assertz(color(red)), assertz(color(green)), assertz(color(blue)),
        ( clause(color(X), B), write(X), write(' '), write(B), nl, fail ; true ).
