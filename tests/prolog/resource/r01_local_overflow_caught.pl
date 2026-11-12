:- initialization(main).
:- catch(set_prolog_flag(stack_limit, 1000000), _, true).
choice.
choice.
local_overflow :- choice, local_overflow.
main :-
    catch(local_overflow, error(resource_error(R), _), (write(caught(R)), nl)),
    write(after), nl,
    halt.
