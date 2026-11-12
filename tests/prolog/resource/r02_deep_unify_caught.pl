:- initialization(main).
:- catch(set_prolog_flag(stack_limit, 1000000), _, true).
deep(0, a) :- !.
deep(N, f(T, N)) :- N1 is N - 1, deep(N1, T).
main :-
    catch(( deep(200000, T1), deep(200000, T2), T1 = T2, write(unified) ), error(resource_error(R), _), write(caught(R))),
    nl,
    write(after), nl,
    halt.
