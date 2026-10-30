:- initialization(main).
:- dynamic a/1.
main :-
    catch(( assert(a(3), Ref), undo(erase(Ref)), throw(x) ), x, true),
    ( a(3) -> write(still_there) ; write(erased) ), nl,
    catch(( undo(throw(y)), fail ; write(not_here), nl ), B, (write(caught(B)), nl)),
    write(done), nl,
    halt.
