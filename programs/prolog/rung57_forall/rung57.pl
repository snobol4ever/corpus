:- initialization(main).
main :-
    ( forall(member(X,[2,4,6]), X mod 2 =:= 0) -> write(all_even) ; write(not_all) ), nl,
    ( forall(member(Y,[2,3,4]), Y mod 2 =:= 0) -> write(all_even2) ; write(not_all2) ), nl,
    ( forall(member(_,[]), fail) -> write(vacuous_true) ; write(vacuous_false) ), nl.
