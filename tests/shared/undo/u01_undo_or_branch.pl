:- initialization(main).
:- dynamic a/1.
main :-
    (   assert(a(1), Ref), undo(erase(Ref)), fail
    ;   ( a(1) -> write(still_there) ; write(erased) ), nl
    ),
    (   X = 1, undo(write(kept(X))), fail
    ;   write(after), nl
    ),
    halt.
