:- initialization(main).
main :-
    put_char(h), put_char(i), nl,
    tab(3), write(x), nl,
    tab(2+1), write(y), nl,
    catch(put_char(ab), error(type_error(character,_),_), (write(caught), nl)).
