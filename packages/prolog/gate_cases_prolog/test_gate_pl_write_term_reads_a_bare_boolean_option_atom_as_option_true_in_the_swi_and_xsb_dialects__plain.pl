:- initialization(main).
main :-
    catch(( write_term('a b', [quoted]), write(wrote) ), error(E, _), write(raised(E))), nl,
    write_term('a b', [quoted(true)]), nl,
    halt.
