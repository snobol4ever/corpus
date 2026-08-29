%------------------------------------------------------------ 1 catch_atom_match
:- initialization(main).
main :-
    catch(throw(myerr), myerr, write(matched)), nl.
%-------------------------------------------------------------------- 2 no_throw
:- initialization(main).
main :-
    catch(safe(3), _, write(bad)),
    write(ok), nl.
safe(X) :- X > 0, write(X), nl.
%--------------------------------------------------------------------- 3 rethrow
:- initialization(main).
main :-
    catch(inner, E, (write(outer), write(' '), write(E), nl)).
inner :-
    catch(throw(mine), other, write(wrong)).
%------------------------------------------------------------ 4 throw_catch_atom
:- initialization(main).
main :-
    catch(throw(hello), E, (write(caught), write(' '), write(E), nl)).
%-------------------------------------------------------- 5 throw_catch_compound
:- initialization(main).
main :-
    catch(foo, E, (write(caught), write(' '), write(E), nl)).
foo :- throw(error(type_error(integer, foo), context)).
