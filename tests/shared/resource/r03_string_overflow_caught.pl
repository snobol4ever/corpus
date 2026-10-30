:- initialization(main).
:- catch(set_prolog_flag(stack_limit, 1000000), _, true).
string_overflow(L) :- string_overflow2(L), is_list(L).
string_overflow2([H|T]) :- format(string(H), '~txx~1000000|', []), string_overflow2(T).
main :-
    catch(string_overflow(_), error(resource_error(R), _), (write(caught(R)), nl)),
    write(after), nl,
    halt.
